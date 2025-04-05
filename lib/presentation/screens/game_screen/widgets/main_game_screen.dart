import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_cricket/common/utils/screen_utils.dart';
import 'package:hand_cricket/presentation/manager/icon_manager.dart';
import 'package:hand_cricket/presentation/manager/style_manager.dart';
import 'package:hand_cricket/presentation/screens/game_screen/cubit/game_cubit.dart';
import 'package:hand_cricket/presentation/screens/how_to_play/how_to_play_screen.dart';
import 'package:hand_cricket/presentation/widgets/animated_hand.dart';

class MainGameScreen extends StatelessWidget {
  const MainGameScreen({super.key, required this.cubit});
  final GameCubit cubit;

  @override
  Widget build(BuildContext context) {
    return mainScreen(context);
  }

  Widget mainScreen(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, state) {
        return Stack(
          children: [
            // Background Image
            Image.asset(
              IconManager.background,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),

            // Overlay content
            Positioned.fill(
              child: SafeArea(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(width: 20),
                          const Text(
                            "Scapia Cricket 🏏",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute<void>(
                                  builder:
                                      (BuildContext context) =>
                                          const HowToPlayScreen(),
                                ),
                              );
                            },
                            child: const Icon(Icons.close, color: Colors.white),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // Highest Score Box
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white.withOpacity(0.2),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          "Current Highest Score: ${state.highestScore}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Player Name Boxes
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Mushtaq",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Farhan (Bot)",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      // Run/Ball Box (example: Mushtaq playing)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: state.isPLayerBatting,
                            replacement: ballsRecordBox(state),
                            child: scoreCardBox(state),
                          ),
                          const SizedBox(width: 40),
                          Visibility(
                            visible: !state.isPLayerBatting,
                            replacement: ballsRecordBox(state),
                            child: scoreCardBox(state),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // Player Images Box
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 30,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            handCloseImage(
                              false,
                              state.playerCurrentHandGesture?.handGesture,
                              state.playerCurrentHandGesture?.value,
                            ),
                            handCloseImage(
                              true,
                              state.botCurrentHandGesture?.handGesture,
                              state.botCurrentHandGesture?.value,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Timer Circle
                      Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: CircularProgressIndicator(
                                color: Colors.red,
                                value: 1.0,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.white,
                                ),
                                backgroundColor: Colors.white.withOpacity(0.2),
                                strokeWidth: 6,
                              ),
                            ),
                            Text(
                              '${state.timerSeconds}s',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // "Pick a number" and buttons
                      Text(
                        'Pick a number from 1 to 6',
                        style: StyleManager.bodySemibold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 20,
                        runSpacing: 20,
                        children: List.generate(cubit.listOfButtons.length, (
                          index,
                        ) {
                          final number = index + 1;
                          return GestureDetector(
                            onTap: () {
                              cubit.onPressNumber(number);
                            },
                            child: Container(
                              width: ScreenUtils.screenWidth(context) / 4,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.asset(
                                height: 70,
                                width: 70,
                                cubit.listOfButtons[index],
                              ),
                            ),
                          );
                        }),
                      ),

                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static Widget ballsRecordBox(GameState state) {
    return Expanded(
      child: Wrap(
        alignment:
            state.isPLayerBatting ? WrapAlignment.end : WrapAlignment.start,
        spacing: 8,
        runSpacing: 8,
        children: List.generate(6, (index) {
          String? icon;
          if (state.isPLayerBatting && index < state.playerScores.length) {
            icon = IconManager.ball;
          } else if (!state.isPLayerBatting && index < state.botScores.length) {
            icon = IconManager.ball;
          }

          return Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              icon ?? IconManager.ball,
              fit: BoxFit.contain,
              width: 30,
              colorBlendMode: BlendMode.difference,
              color: icon == null ? Colors.grey.withOpacity(0.8) : null,
            ),
          );
        }),
      ),
    );
  }

  static Widget scoreCardBox(GameState state) {
    return Expanded(
      child: Wrap(
        alignment:
            state.isPLayerBatting ? WrapAlignment.start : WrapAlignment.end,
        spacing: 8,
        runSpacing: 8,
        children: List.generate(6, (index) {
          String? number;
          if (state.isPLayerBatting && index < state.playerScores.length) {
            number = state.playerScores[index].toString();
          } else if (!state.isPLayerBatting && index < state.botScores.length) {
            number = state.botScores[index].toString();
          }

          return Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(number ?? '', style: StyleManager.bodyRegular),
          );
        }),
      ),
    );
  }

  static Widget handCloseImage(bool isBot, String? icon, int? value) {
    if (isBot) {
      if (icon != null && icon.isNotEmpty) {
        return Transform.rotate(
          angle: value == 6 ? 0 : -45,
          child: Image.asset(height: 80, width: 80, icon),
        );
      } else {
        return const AnimatedHand(flipX: false, baseAngle: -45);
      }
    } else {
      if (icon != null && icon.isNotEmpty) {
        return Transform.rotate(
          angle: value == 6 ? 0 : 45,
          child: Image.asset(height: 80, width: 80, icon),
        );
      } else {
        return const AnimatedHand(baseAngle: 45);
      }
    }
  }
}
