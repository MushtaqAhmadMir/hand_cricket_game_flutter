import 'package:flutter/material.dart';
import 'package:hand_cricket/presentation/manager/icon_manager.dart';
import 'package:hand_cricket/presentation/manager/style_manager.dart';
import 'package:hand_cricket/presentation/screens/game_screen/game_screen.dart';
import 'package:hand_cricket/presentation/widgets/play_cta.dart';

class HowToPlayScreen extends StatelessWidget {
  const HowToPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0D47A1), Color(0xFF1976D2)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Center(
                            child: Text(
                              'How to play',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: screen.height * 0.03),
                          _tapToScoreSection(),
                          SizedBox(height: screen.height * 0.04),
                          _gameRulesSection(),
                          SizedBox(height: screen.height * 0.04),
                          _rewardSection(),
                          const Spacer(),
                          Center(
                            child: PlayCta(
                              onPress: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder:
                                        (BuildContext context) => GameScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  // 🔢 Numbered circle
  Widget numbering(int number) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      child: Center(
        child: Text(
          number.toString(),
          style: StyleManager.bodySemibold.copyWith(
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // 🧤 Tap to score section
  Widget _tapToScoreSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              numbering(1),
              const SizedBox(width: 8),
              const Text(
                'Tap the buttons to score runs:',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(height: 50, width: 50, IconManager.three),
              Image.asset(height: 50, width: 50, IconManager.two),
              Image.asset(height: 50, width: 50, IconManager.one),
            ],
          ),
        ],
      ),
    );
  }

  // 📜 Game rules section
  Widget _gameRulesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            numbering(2),
            const SizedBox(width: 8),
            const Text(
              'Game Rules:',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: _gameRuleCard(isOut: true)),
            const SizedBox(width: 8),
            Expanded(child: _gameRuleCard(isOut: false)),
          ],
        ),
      ],
    );
  }

  // 📦 Game rule card UI
  Widget _gameRuleCard({required bool isOut}) {
    final leftIcon = IconManager.l_3;
    final rightIcon = isOut ? IconManager.r_3 : IconManager.r_1;
    final resultText = isOut ? 'You are out!' : 'You score runs!';
    final resultColor = isOut ? Colors.red.shade900 : Colors.green.shade900;
    final matchText = isOut ? 'Same number' : 'Different number';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.rotate(
                angle: 45,
                child: Image.asset(height: 60, width: 50, leftIcon),
              ),
              Transform.rotate(
                angle: -45,
                child: Image.asset(height: 60, width: 50, rightIcon),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            matchText,
            textAlign: TextAlign.center,
            style: StyleManager.bodySmallRegular.copyWith(color: Colors.white),
          ),
          Text(
            resultText,
            textAlign: TextAlign.center,
            style: StyleManager.bodySemibold.copyWith(color: resultColor),
          ),
        ],
      ),
    );
  }

  // 🎁 Reward section
  Widget _rewardSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              numbering(3),
              const SizedBox(height: 8),
              const SizedBox(
                width: 130,
                child: Text(
                  'Be the highest scorer to win signed RCB merch!',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFRZMCclFfx12qry58nAeWVD1ZYfcwmUctFA&s",
              height: 90,
              width: 90,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
