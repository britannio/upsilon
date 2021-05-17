// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerTearOff {
  const _$PlayerTearOff();

  _Player call({required Set<Card> cards, required Set<Card> plausibleCards}) {
    return _Player(
      cards: cards,
      plausibleCards: plausibleCards,
    );
  }
}

/// @nodoc
const $Player = _$PlayerTearOff();

/// @nodoc
mixin _$Player {
  /// Cards the player certainly has.
  Set<Card> get cards => throw _privateConstructorUsedError;

  /// Cards the player could possibly have.
  Set<Card> get plausibleCards => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
  $Res call({Set<Card> cards, Set<Card> plausibleCards});
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
    Object? plausibleCards = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Set<Card>,
      plausibleCards: plausibleCards == freezed
          ? _value.plausibleCards
          : plausibleCards // ignore: cast_nullable_to_non_nullable
              as Set<Card>,
    ));
  }
}

/// @nodoc
abstract class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) then) =
      __$PlayerCopyWithImpl<$Res>;
  @override
  $Res call({Set<Card> cards, Set<Card> plausibleCards});
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
    Object? plausibleCards = freezed,
  }) {
    return _then(_Player(
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Set<Card>,
      plausibleCards: plausibleCards == freezed
          ? _value.plausibleCards
          : plausibleCards // ignore: cast_nullable_to_non_nullable
              as Set<Card>,
    ));
  }
}

@Implements(Validator)

/// @nodoc
class _$_Player extends _Player {
  const _$_Player({required this.cards, required this.plausibleCards})
      : super._();

  @override

  /// Cards the player certainly has.
  final Set<Card> cards;
  @override

  /// Cards the player could possibly have.
  final Set<Card> plausibleCards;

  @override
  String toString() {
    return 'Player(cards: $cards, plausibleCards: $plausibleCards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Player &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.plausibleCards, plausibleCards) ||
                const DeepCollectionEquality()
                    .equals(other.plausibleCards, plausibleCards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(plausibleCards);

  @JsonKey(ignore: true)
  @override
  _$PlayerCopyWith<_Player> get copyWith =>
      __$PlayerCopyWithImpl<_Player>(this, _$identity);
}

abstract class _Player extends Player implements Validator {
  const factory _Player(
      {required Set<Card> cards,
      required Set<Card> plausibleCards}) = _$_Player;
  const _Player._() : super._();

  @override

  /// Cards the player certainly has.
  Set<Card> get cards => throw _privateConstructorUsedError;
  @override

  /// Cards the player could possibly have.
  Set<Card> get plausibleCards => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerCopyWith<_Player> get copyWith => throw _privateConstructorUsedError;
}
