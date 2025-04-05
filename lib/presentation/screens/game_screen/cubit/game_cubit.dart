import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hand_cricket/domain/resource/model/gesture_model.dart';
import 'package:hand_cricket/domain/resource/model/player_model.dart';
import 'package:hand_cricket/presentation/manager/icon_manager.dart';
import 'package:injectable/injectable.dart';

part 'game_state.dart';
part 'game_cubit.freezed.dart';

/// [GameCubit] is responsible for managing the state and business logic
/// of a hand cricket game between a player and a bot. It handles the game flow,
/// score updates, hand gesture selections, game over scenarios, and UI triggers.
@injectable
class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameState.initial()) {
    _initializeGame();
  }

  final _random = Random();
  Timer? _timer;

  /// Initializes the game with default players and schedules a delayed start.
  void _initializeGame() {
    emit(
      state.copyWith(
        player1: Player(name: "Mushtaq"),
        bot: Player(name: "Farhan"),
      ),
    );

    Future.delayed(const Duration(milliseconds: 2000), () {
      updateYouAreBatting(false);
      _resetAndStartTimer();
    });
  }

  /// Resets the timer and restarts it with default countdown.
  void _resetAndStartTimer() {
    _timer?.cancel();
    emit(state.copyWith(timerSeconds: 10));
    _startTimer();

    resetHandGesture();
  }

  //reset hand gesture
  resetHandGesture() {
    Future.delayed(Duration(seconds: 1), () {
      emit(
        state.copyWith(
          botCurrentHandGesture: null,
          playerCurrentHandGesture: null,
        ),
      );
    });
  }

  /// Starts a countdown timer and ends the game if the player times out.
  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.timerSeconds == 0) {
        _timer?.cancel();
        emit(
          state.copyWith(
            bothPlayersPlayed: true,
            playerLost: true,
            player1: Player(name: "", score: 0),
          ),
        );
      } else {
        emit(state.copyWith(timerSeconds: state.timerSeconds - 1));
      }
    });
  }

  /// Toggles the indicator for whether the player is currently batting.
  void updateYouAreBatting(bool value) =>
      emit(state.copyWith(showYouArePlaying: value));

  /// Toggles the flag to mark both players have completed their turns.
  void bothPlayersCompleted(bool value) =>
      emit(state.copyWith(bothPlayersPlayed: value));

  /// Returns list of bot hand gesture options.
  List<GestureModel> getBotHandGestures() => List.generate(
    6,
    (i) => GestureModel(handGesture: IconManager.right(i + 1), value: i + 1),
  );

  /// Returns list of player hand gesture options.
  List<GestureModel> getPlayerHandGestures() => List.generate(
    6,
    (i) => GestureModel(handGesture: IconManager.left(i + 1), value: i + 1),
  );

  /// Returns a list of hand gesture icons.
  List<String> get listOfButtons => [
    IconManager.one,
    IconManager.two,
    IconManager.three,
    IconManager.four,
    IconManager.five,
    IconManager.six,
  ];

  /// Handles the logic when a number is pressed by the player.
  void onPressNumber(int number) {
    final botGesture = getBotHandGestures()[_random.nextInt(6)];
    final playerGesture = getPlayerHandGestures()[number - 1];

    emit(
      state.copyWith(
        botCurrentHandGesture: botGesture,
        playerCurrentHandGesture: playerGesture,
      ),
    );

    _resetAndStartTimer();

    state.isPLayerBatting
        ? _handleScoreForPlayer(number)
        : _handleScoreForBot(botGesture.value, number);
  }

  /// Updates player score or ends player innings based on input.
  void _handleScoreForPlayer(int number) {
    final botValue = state.botCurrentHandGesture?.value;

    if (number == botValue) {
      _showPlayerOut();
      return;
    }

    final updatedScore = (state.player1?.score ?? 0) + number;
    final updatedPlayer = state.player1?.copyWith(score: updatedScore);
    final updatedScores = List<int>.from(state.playerScores)..add(number);

    if (number == 6) _showSixUI();

    emit(
      state.copyWith(
        player1: updatedPlayer,
        ballsRemaining: state.ballsRemaining - 1,
        playerScores: updatedScores,
        highestScore: max(updatedScore, state.highestScore),
      ),
    );

    if (state.ballsRemaining == 0) {
      _timer?.cancel();
      emit(state.copyWith(isPLayerBatting: false, showDefendScore: true));
      _startBotPlaying();
    }
  }

  /// Updates bot score or ends bot innings if player guesses correctly.
  void _handleScoreForBot(int? botValue, int number) {
    if (number == botValue) {
      final updatedBot = state.bot?.copyWith(isOut: true);
      Future.delayed(const Duration(milliseconds: 600), () {
        emit(
          state.copyWith(
            bot: updatedBot,
            ballsRemaining: 0,
            bothPlayersPlayed: true,
            isPLayerBatting: false,
          ),
        );
        bothPlayersCompleted(true);
      });
      _timer?.cancel();
      return;
    }

    final updatedScore = (state.bot?.score ?? 0) + (botValue ?? 0);
    final updatedBot = state.bot?.copyWith(score: updatedScore);
    final updatedScores = List<int>.from(state.botScores)..add(botValue ?? 0);

    if (botValue == 6) _showSixUI();

    emit(
      state.copyWith(
        bot: updatedBot,
        ballsRemaining: state.ballsRemaining - 1,
        botScores: updatedScores,
        highestScore: max(updatedScore, state.highestScore),
      ),
    );

    if (state.ballsRemaining == 0) {
      _timer?.cancel();
      emit(state.copyWith(bothPlayersPlayed: true));
    }
  }

  /// Starts the bot's turn to bat.
  void _startBotPlaying() {
    emit(
      state.copyWith(
        botCurrentHandGesture: null,
        playerCurrentHandGesture: null,
        ballsRemaining: 6,
      ),
    );

    Future.delayed(const Duration(seconds: 1), () {
      emit(
        state.copyWith(
          showDefendScore: false,
          showOut: false,
          timerSeconds: 10,
        ),
      );
      _startTimer();
    });
  }

  /// Resets the game to initial state.
  void resetGame() {
    emit(
      state.copyWith(
        bot: Player(name: "Mushtaq", score: 0),
        player1: Player(name: "Mushtaq", score: 0),
        isPLayerBatting: true,
        bothPlayersPlayed: false,
        showDefendScore: false,
        showOut: false,
        showSixer: false,
        showYouArePlaying: true,
        ballsRemaining: 6,
        botScores: [],
        playerScores: [],
        playerLost: false,
      ),
    );
    _initializeGame();
  }

  /// Triggers a short sixer animation.
  void _showSixUI() {
    emit(state.copyWith(showSixer: true));
    Future.delayed(const Duration(milliseconds: 400), () {
      emit(state.copyWith(showSixer: false));
    });
  }

  /// Triggers the out animation and starts bot turn.
  void _showPlayerOut() {
    Future.delayed(const Duration(milliseconds: 600), () {
      final updatedPlayer = state.player1?.copyWith(isOut: true);
      emit(
        state.copyWith(
          player1: updatedPlayer,
          ballsRemaining: 0,
          showOut: true,
          isPLayerBatting: false,
        ),
      );
      _timer?.cancel();
      _startBotPlaying();
    });
  }
}
