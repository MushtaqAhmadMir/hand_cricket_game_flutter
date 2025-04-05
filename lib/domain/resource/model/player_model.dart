class Player {
  final String name;
  int score;
  bool isOut;

  Player({required this.name, this.score = 0, this.isOut = false});

  Player copyWith({String? name, int? score, bool? isOut}) {
    return Player(
      name: name ?? this.name,
      score: score ?? this.score,
      isOut: isOut ?? this.isOut,
    );
  }
}
