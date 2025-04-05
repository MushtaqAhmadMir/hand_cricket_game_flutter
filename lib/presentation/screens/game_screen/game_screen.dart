import 'package:flutter/material.dart';
import 'package:hand_cricket/common/di/injection.dart';
import 'package:hand_cricket/presentation/manager/icon_manager.dart';
import 'package:hand_cricket/presentation/manager/style_manager.dart';
import 'package:hand_cricket/presentation/screens/game_screen/cubit/game_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_cricket/presentation/screens/game_screen/widgets/main_game_screen.dart';
import 'package:hand_cricket/presentation/widgets/play_cta.dart';

class GameScreen extends StatelessWidget {
  GameScreen({super.key});
  final cubit = getIt<GameCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        body: BlocBuilder<GameCubit, GameState>(
          builder: (context, state) {
            return getScreenBasedOnEvent(state);
          },
        ),
      ),
    );
  }

  Widget youAreBattingUI() {
    return Container(
      color: Colors.black,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset(IconManager.batting),
      ),
    );
  }

  Widget defendScroreUI(GameState state) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            IconManager.gameDefend,
            fit: BoxFit.cover,

            width: double.infinity,
          ),
          Text(
            state.player1?.score.toString() ?? "",
            style: StyleManager.headerTwo.copyWith(color: Colors.greenAccent),
          ),
        ],
      ),
    );
  }

  Widget showOutUI() {
    return Container(
      color: Colors.black,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset(IconManager.out),
      ),
    );
  }

  Widget showSixerUI() {
    return Container(
      color: Colors.black,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset(IconManager.sixer),
      ),
    );
  }

  Widget showScoreUI(GameState state) {
    int botScore = state.bot?.score ?? 0;
    int playerScore = state.player1?.score ?? 0;
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          IconManager.background,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),

        Container(
          width: double.infinity,
          color: Colors.black.withValues(alpha: 0.5),
          height: double.infinity,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Visibility(
                visible: (state.player1?.score ?? 0) > (state.bot?.score ?? 0),
                replacement: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Score Card",
                      style: StyleManager.bodySemibold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mushtaq",
                            style: StyleManager.bodySemibold.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Farhan (Bot)",
                            style: StyleManager.bodySemibold.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Runs: ${state.player1?.score}",
                            style: StyleManager.bodySemibold.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Total Runs: ${state.bot?.score}",
                            style: StyleManager.bodySemibold.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Result",
                      style: StyleManager.bodySemibold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      botScore == playerScore && !state.playerLost
                          ? "Match went Draw!"
                          : "You Loose",
                      style: StyleManager.bodySemibold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 40),
                    PlayCta(
                      btnText: "Play Again",
                      onPress: () {
                        cubit.resetGame();
                      },
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Image.asset(IconManager.youWon),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: PlayCta(
                        btnText: "Play Again",
                        onPress: () {
                          cubit.resetGame();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getScreenBasedOnEvent(GameState state) {
    if (state.showYouArePlaying) {
      return youAreBattingUI();
    }
    if (state.showDefendScore) {
      return defendScroreUI(state);
    }
    if (state.showSixer) {
      return showSixerUI();
    }
    if (state.showOut) {
      return showOutUI();
    }
    if (state.bothPlayersPlayed) {
      return showScoreUI(state);
    }
    return MainGameScreen(cubit: cubit);
  }
}
