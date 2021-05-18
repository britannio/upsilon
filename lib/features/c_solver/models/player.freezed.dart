// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
class _$PlayerTearOff {
  const _$PlayerTearOff();

  _Player call(
      {required Set<Card> cards, required Set<Set<Card>> plausibleCardsGroup}) {
    return _Player(
      cards: cards,
      plausibleCardsGroup: plausibleCardsGroup,
    );
  }

  Player fromJson(Map<String, Object> json) {
    return Player.fromJson(json);
  }
}

/// @nodoc
const $Player = _$PlayerTearOff();

/// @nodoc
mixin _$Player {
  /// Cards the player certainly has.
  Set<Card> get cards => throw _privateConstructorUsedError;

  /// Cards the player could possibly have.
  Set<Set<Card>> get plausibleCardsGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
  $Res call({Set<Card> cards, Set<Set<Card>> plausibleCardsGroup});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res> implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  final Player _value;
  // ignore: unused_field
  final $Res Function(Player) _then;

  @override
  $Res call({
    Object? cards = freezed,
    Object? plausibleCardsGroup = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Set<Card>,
      plausibleCardsGroup: plausibleCardsGroup == freezed
          ? _value.plausibleCardsGroup
          : plausibleCardsGroup // ignore: cast_nullable_to_non_nullable
              as Set<Set<Card>>,
    ));
  }
}

/// @nodoc
abstract class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) then) =
      __$PlayerCopyWithImpl<$Res>;
  @override
  $Res call({Set<Card> cards, Set<Set<Card>> plausibleCardsGroup});
}

/// @nodoc
class __$PlayerCopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(_Player _value, $Res Function(_Player) _then)
      : super(_value, (v) => _then(v as _Player));

  @override
  _Player get _value => super._value as _Player;

  @override
  $Res call({
    Object? cards = freezed,
    Object? plausibleCardsGroup = freezed,
  }) {
    return _then(_Player(
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Set<Card>,
      plausibleCardsGroup: plausibleCardsGroup == freezed
          ? _value.plausibleCardsGroup
          : plausibleCardsGroup // ignore: cast_nullable_to_non_nullable
              as Set<Set<Card>>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Player extends _Player {
  const _$_Player({required this.cards, required this.plausibleCardsGroup})
      : super._();

  factory _$_Player.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerFromJson(json);

  @override

  /// Cards the player certainly has.
  final Set<Card> cards;
  @override

  /// Cards the player could possibly have.
  final Set<Set<Card>> plausibleCardsGroup;

  @override
  String toString() {
    return 'Player(cards: $cards, plausibleCardsGroup: $plausibleCardsGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Player &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.plausibleCardsGroup, plausibleCardsGroup) ||
                const DeepCollectionEquality()
                    .equals(other.plausibleCardsGroup, plausibleCardsGroup)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(plausibleCardsGroup);

  @JsonKey(ignore: true)
  @override
  _$PlayerCopyWith<_Player> get copyWith =>
      __$PlayerCopyWithImpl<_Player>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerToJson(this);
  }
}

abstract class _Player extends Player {
  const factory _Player(
      {required Set<Card> cards,
      required Set<Set<Card>> plausibleCardsGroup}) = _$_Player;
  const _Player._() : super._();

  factory _Player.fromJson(Map<String, dynamic> json) = _$_Player.fromJson;

  @override

  /// Cards the player certainly has.
  Set<Card> get cards => throw _privateConstructorUsedError;
  @override

  /// Cards the player could possibly have.
  Set<Set<Card>> get plausibleCardsGroup => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerCopyWith<_Player> get copyWith => throw _privateConstructorUsedError;
}
