import 'package:hand_cricket/domain/resource/model/player_model.dart';

class GameStateModel {
  final Player player;
  final Player bot;
  int ballsRemaining;
  bool isPlayerBatting;

  GameStateModel({
    required this.player,
    required this.bot,
    this.ballsRemaining = 6,
    this.isPlayerBatting = true,
  });

  GameStateModel copyWith({
    Player? player,
    Player? bot,
    int? ballsRemaining,
    bool? isPlayerBatting,
  }) {
    return GameStateModel(
      player: player ?? this.player,
      bot: bot ?? this.bot,
      ballsRemaining: ballsRemaining ?? this.ballsRemaining,
      isPlayerBatting: isPlayerBatting ?? this.isPlayerBatting,
    );
  }
}
