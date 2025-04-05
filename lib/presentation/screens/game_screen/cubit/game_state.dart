part of 'game_cubit.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial({
    @Default(true) bool showYouArePlaying,
    @Default(false) bool showDefendScore,
    @Default(false) bool showSixer,
    @Default(false) bool showOut,
    @Default(10) int timerSeconds,
    @Default(null) GestureModel? botCurrentHandGesture,
    @Default(null) GestureModel? playerCurrentHandGesture,

    //players
    @Default(null) Player? player1,
    @Default(null) Player? bot,
    @Default(true) bool isPLayerBatting,
    @Default(6) int ballsRemaining,

    @Default([]) List<int> playerScores,
    @Default([]) List<int> botScores,
    @Default(0) int highestScore,
    @Default(false) bool playerLost,

    @Default(false) bool bothPlayersPlayed,
  }) = _Initial;
}
