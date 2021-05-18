// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameTearOff {
  const _$GameTearOff();

  _Game call(
      {required Map<PlayerId, Player> playerMap,
      required Set<Card> remainingCards,
      required List<GameEvent> events}) {
    return _Game(
      playerMap: playerMap,
      remainingCards: remainingCards,
      events: events,
    );
  }
}

/// @nodoc
const $Game = _$GameTearOff();

/// @nodoc
mixin _$Game {
  Map<PlayerId, Player> get playerMap => throw _privateConstructorUsedError;
  Set<Card> get remainingCards => throw _privateConstructorUsedError;
  List<GameEvent> get events => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res>;
  $Res call(
      {Map<PlayerId, Player> playerMap,
      Set<Card> remainingCards,
      List<GameEvent> events});
}

/// @nodoc
class _$GameCopyWithImpl<$Res> implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  final Game _value;
  // ignore: unused_field
  final $Res Function(Game) _then;

  @override
  $Res call({
    Object? playerMap = freezed,
    Object? remainingCards = freezed,
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      playerMap: playerMap == freezed
          ? _value.playerMap
          : playerMap // ignore: cast_nullable_to_non_nullable
              as Map<PlayerId, Player>,
      remainingCards: remainingCards == freezed
          ? _value.remainingCards
          : remainingCards // ignore: cast_nullable_to_non_nullable
              as Set<Card>,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<GameEvent>,
    ));
  }
}

/// @nodoc
abstract class _$GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) then) =
      __$GameCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<PlayerId, Player> playerMap,
      Set<Card> remainingCards,
      List<GameEvent> events});
}

/// @nodoc
class __$GameCopyWithImpl<$Res> extends _$GameCopyWithImpl<$Res>
    implements _$GameCopyWith<$Res> {
  __$GameCopyWithImpl(_Game _value, $Res Function(_Game) _then)
      : super(_value, (v) => _then(v as _Game));

  @override
  _Game get _value => super._value as _Game;

  @override
  $Res call({
    Object? playerMap = freezed,
    Object? remainingCards = freezed,
    Object? events = freezed,
  }) {
    return _then(_Game(
      playerMap: playerMap == freezed
          ? _value.playerMap
          : playerMap // ignore: cast_nullable_to_non_nullable
              as Map<PlayerId, Player>,
      remainingCards: remainingCards == freezed
          ? _value.remainingCards
          : remainingCards // ignore: cast_nullable_to_non_nullable
              as Set<Card>,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<GameEvent>,
    ));
  }
}

/// @nodoc
class _$_Game extends _Game {
  const _$_Game(
      {required this.playerMap,
      required this.remainingCards,
      required this.events})
      : super._();

  @override
  final Map<PlayerId, Player> playerMap;
  @override
  final Set<Card> remainingCards;
  @override
  final List<GameEvent> events;

  @override
  String toString() {
    return 'Game(playerMap: $playerMap, remainingCards: $remainingCards, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Game &&
            (identical(other.playerMap, playerMap) ||
                const DeepCollectionEquality()
                    .equals(other.playerMap, playerMap)) &&
            (identical(other.remainingCards, remainingCards) ||
                const DeepCollectionEquality()
                    .equals(other.remainingCards, remainingCards)) &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(playerMap) ^
      const DeepCollectionEquality().hash(remainingCards) ^
      const DeepCollectionEquality().hash(events);

  @JsonKey(ignore: true)
  @override
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);
}

abstract class _Game extends Game {
  const factory _Game(
      {required Map<PlayerId, Player> playerMap,
      required Set<Card> remainingCards,
      required List<GameEvent> events}) = _$_Game;
  const _Game._() : super._();

  @override
  Map<PlayerId, Player> get playerMap => throw _privateConstructorUsedError;
  @override
  Set<Card> get remainingCards => throw _privateConstructorUsedError;
  @override
  List<GameEvent> get events => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameCopyWith<_Game> get copyWith => throw _privateConstructorUsedError;
}
