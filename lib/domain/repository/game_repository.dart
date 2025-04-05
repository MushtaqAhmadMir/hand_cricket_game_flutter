import 'dart:math';
import 'package:hand_cricket/domain/resource/model/game_state_model.dart';

class GameRepository {
  final Random _random = Random();

  GameStateModel updateGame(GameStateModel state, int playerChoice) {
    int botChoice = _random.nextInt(6) + 1;

    if (playerChoice == botChoice) {
      return state.copyWith(
        player:
            state.isPlayerBatting
                ? state.player.copyWith(isOut: true)
                : state.bot.copyWith(isOut: true),
        ballsRemaining: 0,
      );
    } else {
      return state.copyWith(
        player:
            state.isPlayerBatting
                ? state.player.copyWith(
                  score: state.player.score + playerChoice,
                )
                : state.player,
        bot:
            !state.isPlayerBatting
                ? state.bot.copyWith(score: state.bot.score + botChoice)
                : state.bot,
        ballsRemaining: state.ballsRemaining - 1,
      );
    }
  }
}
