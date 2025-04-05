// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GameState {
  bool get showYouArePlaying => throw _privateConstructorUsedError;
  bool get showDefendScore => throw _privateConstructorUsedError;
  bool get showSixer => throw _privateConstructorUsedError;
  bool get showOut => throw _privateConstructorUsedError;
  int get timerSeconds => throw _privateConstructorUsedError;
  GestureModel? get botCurrentHandGesture => throw _privateConstructorUsedError;
  GestureModel? get playerCurrentHandGesture =>
      throw _privateConstructorUsedError; //players
  Player? get player1 => throw _privateConstructorUsedError;
  Player? get bot => throw _privateConstructorUsedError;
  bool get isPLayerBatting => throw _privateConstructorUsedError;
  int get ballsRemaining => throw _privateConstructorUsedError;
  List<int> get playerScores => throw _privateConstructorUsedError;
  List<int> get botScores => throw _privateConstructorUsedError;
  int get highestScore => throw _privateConstructorUsedError;
  bool get playerLost => throw _privateConstructorUsedError;
  bool get bothPlayersPlayed => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      bool showYouArePlaying,
      bool showDefendScore,
      bool showSixer,
      bool showOut,
      int timerSeconds,
      GestureModel? botCurrentHandGesture,
      GestureModel? playerCurrentHandGesture,
      Player? player1,
      Player? bot,
      bool isPLayerBatting,
      int ballsRemaining,
      List<int> playerScores,
      List<int> botScores,
      int highestScore,
      bool playerLost,
      bool bothPlayersPlayed,
    )
    initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      bool showYouArePlaying,
      bool showDefendScore,
      bool showSixer,
      bool showOut,
      int timerSeconds,
      GestureModel? botCurrentHandGesture,
      GestureModel? playerCurrentHandGesture,
      Player? player1,
      Player? bot,
      bool isPLayerBatting,
      int ballsRemaining,
      List<int> playerScores,
      List<int> botScores,
      int highestScore,
      bool playerLost,
      bool bothPlayersPlayed,
    )?
    initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      bool showYouArePlaying,
      bool showDefendScore,
      bool showSixer,
      bool showOut,
      int timerSeconds,
      GestureModel? botCurrentHandGesture,
      GestureModel? playerCurrentHandGesture,
      Player? player1,
      Player? bot,
      bool isPLayerBatting,
      int ballsRemaining,
      List<int> playerScores,
      List<int> botScores,
      int highestScore,
      bool playerLost,
      bool bothPlayersPlayed,
    )?
    initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call({
    bool showYouArePlaying,
    bool showDefendScore,
    bool showSixer,
    bool showOut,
    int timerSeconds,
    GestureModel? botCurrentHandGesture,
    GestureModel? playerCurrentHandGesture,
    Player? player1,
    Player? bot,
    bool isPLayerBatting,
    int ballsRemaining,
    List<int> playerScores,
    List<int> botScores,
    int highestScore,
    bool playerLost,
    bool bothPlayersPlayed,
  });
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showYouArePlaying = null,
    Object? showDefendScore = null,
    Object? showSixer = null,
    Object? showOut = null,
    Object? timerSeconds = null,
    Object? botCurrentHandGesture = freezed,
    Object? playerCurrentHandGesture = freezed,
    Object? player1 = freezed,
    Object? bot = freezed,
    Object? isPLayerBatting = null,
    Object? ballsRemaining = null,
    Object? playerScores = null,
    Object? botScores = null,
    Object? highestScore = null,
    Object? playerLost = null,
    Object? bothPlayersPlayed = null,
  }) {
    return _then(
      _value.copyWith(
            showYouArePlaying:
                null == showYouArePlaying
                    ? _value.showYouArePlaying
                    : showYouArePlaying // ignore: cast_nullable_to_non_nullable
                        as bool,
            showDefendScore:
                null == showDefendScore
                    ? _value.showDefendScore
                    : showDefendScore // ignore: cast_nullable_to_non_nullable
                        as bool,
            showSixer:
                null == showSixer
                    ? _value.showSixer
                    : showSixer // ignore: cast_nullable_to_non_nullable
                        as bool,
            showOut:
                null == showOut
                    ? _value.showOut
                    : showOut // ignore: cast_nullable_to_non_nullable
                        as bool,
            timerSeconds:
                null == timerSeconds
                    ? _value.timerSeconds
                    : timerSeconds // ignore: cast_nullable_to_non_nullable
                        as int,
            botCurrentHandGesture:
                freezed == botCurrentHandGesture
                    ? _value.botCurrentHandGesture
                    : botCurrentHandGesture // ignore: cast_nullable_to_non_nullable
                        as GestureModel?,
            playerCurrentHandGesture:
                freezed == playerCurrentHandGesture
                    ? _value.playerCurrentHandGesture
                    : playerCurrentHandGesture // ignore: cast_nullable_to_non_nullable
                        as GestureModel?,
            player1:
                freezed == player1
                    ? _value.player1
                    : player1 // ignore: cast_nullable_to_non_nullable
                        as Player?,
            bot:
                freezed == bot
                    ? _value.bot
                    : bot // ignore: cast_nullable_to_non_nullable
                        as Player?,
            isPLayerBatting:
                null == isPLayerBatting
                    ? _value.isPLayerBatting
                    : isPLayerBatting // ignore: cast_nullable_to_non_nullable
                        as bool,
            ballsRemaining:
                null == ballsRemaining
                    ? _value.ballsRemaining
                    : ballsRemaining // ignore: cast_nullable_to_non_nullable
                        as int,
            playerScores:
                null == playerScores
                    ? _value.playerScores
                    : playerScores // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            botScores:
                null == botScores
                    ? _value.botScores
                    : botScores // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            highestScore:
                null == highestScore
                    ? _value.highestScore
                    : highestScore // ignore: cast_nullable_to_non_nullable
                        as int,
            playerLost:
                null == playerLost
                    ? _value.playerLost
                    : playerLost // ignore: cast_nullable_to_non_nullable
                        as bool,
            bothPlayersPlayed:
                null == bothPlayersPlayed
                    ? _value.bothPlayersPlayed
                    : bothPlayersPlayed // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool showYouArePlaying,
    bool showDefendScore,
    bool showSixer,
    bool showOut,
    int timerSeconds,
    GestureModel? botCurrentHandGesture,
    GestureModel? playerCurrentHandGesture,
    Player? player1,
    Player? bot,
    bool isPLayerBatting,
    int ballsRemaining,
    List<int> playerScores,
    List<int> botScores,
    int highestScore,
    bool playerLost,
    bool bothPlayersPlayed,
  });
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showYouArePlaying = null,
    Object? showDefendScore = null,
    Object? showSixer = null,
    Object? showOut = null,
    Object? timerSeconds = null,
    Object? botCurrentHandGesture = freezed,
    Object? playerCurrentHandGesture = freezed,
    Object? player1 = freezed,
    Object? bot = freezed,
    Object? isPLayerBatting = null,
    Object? ballsRemaining = null,
    Object? playerScores = null,
    Object? botScores = null,
    Object? highestScore = null,
    Object? playerLost = null,
    Object? bothPlayersPlayed = null,
  }) {
    return _then(
      _$InitialImpl(
        showYouArePlaying:
            null == showYouArePlaying
                ? _value.showYouArePlaying
                : showYouArePlaying // ignore: cast_nullable_to_non_nullable
                    as bool,
        showDefendScore:
            null == showDefendScore
                ? _value.showDefendScore
                : showDefendScore // ignore: cast_nullable_to_non_nullable
                    as bool,
        showSixer:
            null == showSixer
                ? _value.showSixer
                : showSixer // ignore: cast_nullable_to_non_nullable
                    as bool,
        showOut:
            null == showOut
                ? _value.showOut
                : showOut // ignore: cast_nullable_to_non_nullable
                    as bool,
        timerSeconds:
            null == timerSeconds
                ? _value.timerSeconds
                : timerSeconds // ignore: cast_nullable_to_non_nullable
                    as int,
        botCurrentHandGesture:
            freezed == botCurrentHandGesture
                ? _value.botCurrentHandGesture
                : botCurrentHandGesture // ignore: cast_nullable_to_non_nullable
                    as GestureModel?,
        playerCurrentHandGesture:
            freezed == playerCurrentHandGesture
                ? _value.playerCurrentHandGesture
                : playerCurrentHandGesture // ignore: cast_nullable_to_non_nullable
                    as GestureModel?,
        player1:
            freezed == player1
                ? _value.player1
                : player1 // ignore: cast_nullable_to_non_nullable
                    as Player?,
        bot:
            freezed == bot
                ? _value.bot
                : bot // ignore: cast_nullable_to_non_nullable
                    as Player?,
        isPLayerBatting:
            null == isPLayerBatting
                ? _value.isPLayerBatting
                : isPLayerBatting // ignore: cast_nullable_to_non_nullable
                    as bool,
        ballsRemaining:
            null == ballsRemaining
                ? _value.ballsRemaining
                : ballsRemaining // ignore: cast_nullable_to_non_nullable
                    as int,
        playerScores:
            null == playerScores
                ? _value._playerScores
                : playerScores // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        botScores:
            null == botScores
                ? _value._botScores
                : botScores // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        highestScore:
            null == highestScore
                ? _value.highestScore
                : highestScore // ignore: cast_nullable_to_non_nullable
                    as int,
        playerLost:
            null == playerLost
                ? _value.playerLost
                : playerLost // ignore: cast_nullable_to_non_nullable
                    as bool,
        bothPlayersPlayed:
            null == bothPlayersPlayed
                ? _value.bothPlayersPlayed
                : bothPlayersPlayed // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({
    this.showYouArePlaying = true,
    this.showDefendScore = false,
    this.showSixer = false,
    this.showOut = false,
    this.timerSeconds = 10,
    this.botCurrentHandGesture = null,
    this.playerCurrentHandGesture = null,
    this.player1 = null,
    this.bot = null,
    this.isPLayerBatting = true,
    this.ballsRemaining = 6,
    final List<int> playerScores = const [],
    final List<int> botScores = const [],
    this.highestScore = 0,
    this.playerLost = false,
    this.bothPlayersPlayed = false,
  }) : _playerScores = playerScores,
       _botScores = botScores;

  @override
  @JsonKey()
  final bool showYouArePlaying;
  @override
  @JsonKey()
  final bool showDefendScore;
  @override
  @JsonKey()
  final bool showSixer;
  @override
  @JsonKey()
  final bool showOut;
  @override
  @JsonKey()
  final int timerSeconds;
  @override
  @JsonKey()
  final GestureModel? botCurrentHandGesture;
  @override
  @JsonKey()
  final GestureModel? playerCurrentHandGesture;
  //players
  @override
  @JsonKey()
  final Player? player1;
  @override
  @JsonKey()
  final Player? bot;
  @override
  @JsonKey()
  final bool isPLayerBatting;
  @override
  @JsonKey()
  final int ballsRemaining;
  final List<int> _playerScores;
  @override
  @JsonKey()
  List<int> get playerScores {
    if (_playerScores is EqualUnmodifiableListView) return _playerScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playerScores);
  }

  final List<int> _botScores;
  @override
  @JsonKey()
  List<int> get botScores {
    if (_botScores is EqualUnmodifiableListView) return _botScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_botScores);
  }

  @override
  @JsonKey()
  final int highestScore;
  @override
  @JsonKey()
  final bool playerLost;
  @override
  @JsonKey()
  final bool bothPlayersPlayed;

  @override
  String toString() {
    return 'GameState.initial(showYouArePlaying: $showYouArePlaying, showDefendScore: $showDefendScore, showSixer: $showSixer, showOut: $showOut, timerSeconds: $timerSeconds, botCurrentHandGesture: $botCurrentHandGesture, playerCurrentHandGesture: $playerCurrentHandGesture, player1: $player1, bot: $bot, isPLayerBatting: $isPLayerBatting, ballsRemaining: $ballsRemaining, playerScores: $playerScores, botScores: $botScores, highestScore: $highestScore, playerLost: $playerLost, bothPlayersPlayed: $bothPlayersPlayed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.showYouArePlaying, showYouArePlaying) ||
                other.showYouArePlaying == showYouArePlaying) &&
            (identical(other.showDefendScore, showDefendScore) ||
                other.showDefendScore == showDefendScore) &&
            (identical(other.showSixer, showSixer) ||
                other.showSixer == showSixer) &&
            (identical(other.showOut, showOut) || other.showOut == showOut) &&
            (identical(other.timerSeconds, timerSeconds) ||
                other.timerSeconds == timerSeconds) &&
            (identical(other.botCurrentHandGesture, botCurrentHandGesture) ||
                other.botCurrentHandGesture == botCurrentHandGesture) &&
            (identical(
                  other.playerCurrentHandGesture,
                  playerCurrentHandGesture,
                ) ||
                other.playerCurrentHandGesture == playerCurrentHandGesture) &&
            (identical(other.player1, player1) || other.player1 == player1) &&
            (identical(other.bot, bot) || other.bot == bot) &&
            (identical(other.isPLayerBatting, isPLayerBatting) ||
                other.isPLayerBatting == isPLayerBatting) &&
            (identical(other.ballsRemaining, ballsRemaining) ||
                other.ballsRemaining == ballsRemaining) &&
            const DeepCollectionEquality().equals(
              other._playerScores,
              _playerScores,
            ) &&
            const DeepCollectionEquality().equals(
              other._botScores,
              _botScores,
            ) &&
            (identical(other.highestScore, highestScore) ||
                other.highestScore == highestScore) &&
            (identical(other.playerLost, playerLost) ||
                other.playerLost == playerLost) &&
            (identical(other.bothPlayersPlayed, bothPlayersPlayed) ||
                other.bothPlayersPlayed == bothPlayersPlayed));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    showYouArePlaying,
    showDefendScore,
    showSixer,
    showOut,
    timerSeconds,
    botCurrentHandGesture,
    playerCurrentHandGesture,
    player1,
    bot,
    isPLayerBatting,
    ballsRemaining,
    const DeepCollectionEquality().hash(_playerScores),
    const DeepCollectionEquality().hash(_botScores),
    highestScore,
    playerLost,
    bothPlayersPlayed,
  );

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      bool showYouArePlaying,
      bool showDefendScore,
      bool showSixer,
      bool showOut,
      int timerSeconds,
      GestureModel? botCurrentHandGesture,
      GestureModel? playerCurrentHandGesture,
      Player? player1,
      Player? bot,
      bool isPLayerBatting,
      int ballsRemaining,
      List<int> playerScores,
      List<int> botScores,
      int highestScore,
      bool playerLost,
      bool bothPlayersPlayed,
    )
    initial,
  }) {
    return initial(
      showYouArePlaying,
      showDefendScore,
      showSixer,
      showOut,
      timerSeconds,
      botCurrentHandGesture,
      playerCurrentHandGesture,
      player1,
      bot,
      isPLayerBatting,
      ballsRemaining,
      playerScores,
      botScores,
      highestScore,
      playerLost,
      bothPlayersPlayed,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      bool showYouArePlaying,
      bool showDefendScore,
      bool showSixer,
      bool showOut,
      int timerSeconds,
      GestureModel? botCurrentHandGesture,
      GestureModel? playerCurrentHandGesture,
      Player? player1,
      Player? bot,
      bool isPLayerBatting,
      int ballsRemaining,
      List<int> playerScores,
      List<int> botScores,
      int highestScore,
      bool playerLost,
      bool bothPlayersPlayed,
    )?
    initial,
  }) {
    return initial?.call(
      showYouArePlaying,
      showDefendScore,
      showSixer,
      showOut,
      timerSeconds,
      botCurrentHandGesture,
      playerCurrentHandGesture,
      player1,
      bot,
      isPLayerBatting,
      ballsRemaining,
      playerScores,
      botScores,
      highestScore,
      playerLost,
      bothPlayersPlayed,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      bool showYouArePlaying,
      bool showDefendScore,
      bool showSixer,
      bool showOut,
      int timerSeconds,
      GestureModel? botCurrentHandGesture,
      GestureModel? playerCurrentHandGesture,
      Player? player1,
      Player? bot,
      bool isPLayerBatting,
      int ballsRemaining,
      List<int> playerScores,
      List<int> botScores,
      int highestScore,
      bool playerLost,
      bool bothPlayersPlayed,
    )?
    initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
        showYouArePlaying,
        showDefendScore,
        showSixer,
        showOut,
        timerSeconds,
        botCurrentHandGesture,
        playerCurrentHandGesture,
        player1,
        bot,
        isPLayerBatting,
        ballsRemaining,
        playerScores,
        botScores,
        highestScore,
        playerLost,
        bothPlayersPlayed,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameState {
  const factory _Initial({
    final bool showYouArePlaying,
    final bool showDefendScore,
    final bool showSixer,
    final bool showOut,
    final int timerSeconds,
    final GestureModel? botCurrentHandGesture,
    final GestureModel? playerCurrentHandGesture,
    final Player? player1,
    final Player? bot,
    final bool isPLayerBatting,
    final int ballsRemaining,
    final List<int> playerScores,
    final List<int> botScores,
    final int highestScore,
    final bool playerLost,
    final bool bothPlayersPlayed,
  }) = _$InitialImpl;

  @override
  bool get showYouArePlaying;
  @override
  bool get showDefendScore;
  @override
  bool get showSixer;
  @override
  bool get showOut;
  @override
  int get timerSeconds;
  @override
  GestureModel? get botCurrentHandGesture;
  @override
  GestureModel? get playerCurrentHandGesture; //players
  @override
  Player? get player1;
  @override
  Player? get bot;
  @override
  bool get isPLayerBatting;
  @override
  int get ballsRemaining;
  @override
  List<int> get playerScores;
  @override
  List<int> get botScores;
  @override
  int get highestScore;
  @override
  bool get playerLost;
  @override
  bool get bothPlayersPlayed;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
