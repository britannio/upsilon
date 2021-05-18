// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameEventTearOff {
  const _$GameEventTearOff();

  _PlausibleCards plausibleCards(
      {required PlayerId player, required Set<Card> cards}) {
    return _PlausibleCards(
      player: player,
      cards: cards,
    );
  }

  _PlayerHasCard playerHasCard({required PlayerId player, required Card card}) {
    return _PlayerHasCard(
      player: player,
      card: card,
    );
  }
}

/// @nodoc
const $GameEvent = _$GameEventTearOff();

/// @nodoc
mixin _$GameEvent {
  PlayerId get player => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlayerId player, Set<Card> cards) plausibleCards,
    required TResult Function(PlayerId player, Card card) playerHasCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlayerId player, Set<Card> cards)? plausibleCards,
    TResult Function(PlayerId player, Card card)? playerHasCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlausibleCards value) plausibleCards,
    required TResult Function(_PlayerHasCard value) playerHasCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlausibleCards value)? plausibleCards,
    TResult Function(_PlayerHasCard value)? playerHasCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameEventCopyWith<GameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res>;
  $Res call({PlayerId player});
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res> implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  final GameEvent _value;
  // ignore: unused_field
  final $Res Function(GameEvent) _then;

  @override
  $Res call({
    Object? player = freezed,
  }) {
    return _then(_value.copyWith(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as PlayerId,
    ));
  }
}

/// @nodoc
abstract class _$PlausibleCardsCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory _$PlausibleCardsCopyWith(
          _PlausibleCards value, $Res Function(_PlausibleCards) then) =
      __$PlausibleCardsCopyWithImpl<$Res>;
  @override
  $Res call({PlayerId player, Set<Card> cards});
}

/// @nodoc
class __$PlausibleCardsCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$PlausibleCardsCopyWith<$Res> {
  __$PlausibleCardsCopyWithImpl(
      _PlausibleCards _value, $Res Function(_PlausibleCards) _then)
      : super(_value, (v) => _then(v as _PlausibleCards));

  @override
  _PlausibleCards get _value => super._value as _PlausibleCards;

  @override
  $Res call({
    Object? player = freezed,
    Object? cards = freezed,
  }) {
    return _then(_PlausibleCards(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as PlayerId,
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Set<Card>,
    ));
  }
}

/// @nodoc
class _$_PlausibleCards implements _PlausibleCards {
  const _$_PlausibleCards({required this.player, required this.cards});

  @override
  final PlayerId player;
  @override
  final Set<Card> cards;

  @override
  String toString() {
    return 'GameEvent.plausibleCards(player: $player, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlausibleCards &&
            (identical(other.player, player) ||
                const DeepCollectionEquality().equals(other.player, player)) &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(player) ^
      const DeepCollectionEquality().hash(cards);

  @JsonKey(ignore: true)
  @override
  _$PlausibleCardsCopyWith<_PlausibleCards> get copyWith =>
      __$PlausibleCardsCopyWithImpl<_PlausibleCards>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlayerId player, Set<Card> cards) plausibleCards,
    required TResult Function(PlayerId player, Card card) playerHasCard,
  }) {
    return plausibleCards(player, cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlayerId player, Set<Card> cards)? plausibleCards,
    TResult Function(PlayerId player, Card card)? playerHasCard,
    required TResult orElse(),
  }) {
    if (plausibleCards != null) {
      return plausibleCards(player, cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlausibleCards value) plausibleCards,
    required TResult Function(_PlayerHasCard value) playerHasCard,
  }) {
    return plausibleCards(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlausibleCards value)? plausibleCards,
    TResult Function(_PlayerHasCard value)? playerHasCard,
    required TResult orElse(),
  }) {
    if (plausibleCards != null) {
      return plausibleCards(this);
    }
    return orElse();
  }
}

abstract class _PlausibleCards implements GameEvent {
  const factory _PlausibleCards(
      {required PlayerId player, required Set<Card> cards}) = _$_PlausibleCards;

  @override
  PlayerId get player => throw _privateConstructorUsedError;
  Set<Card> get cards => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlausibleCardsCopyWith<_PlausibleCards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlayerHasCardCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory _$PlayerHasCardCopyWith(
          _PlayerHasCard value, $Res Function(_PlayerHasCard) then) =
      __$PlayerHasCardCopyWithImpl<$Res>;
  @override
  $Res call({PlayerId player, Card card});

  $CardCopyWith<$Res> get card;
}

/// @nodoc
class __$PlayerHasCardCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$PlayerHasCardCopyWith<$Res> {
  __$PlayerHasCardCopyWithImpl(
      _PlayerHasCard _value, $Res Function(_PlayerHasCard) _then)
      : super(_value, (v) => _then(v as _PlayerHasCard));

  @override
  _PlayerHasCard get _value => super._value as _PlayerHasCard;

  @override
  $Res call({
    Object? player = freezed,
    Object? card = freezed,
  }) {
    return _then(_PlayerHasCard(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as PlayerId,
      card: card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as Card,
    ));
  }

  @override
  $CardCopyWith<$Res> get card {
    return $CardCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value));
    });
  }
}

/// @nodoc
class _$_PlayerHasCard implements _PlayerHasCard {
  const _$_PlayerHasCard({required this.player, required this.card});

  @override
  final PlayerId player;
  @override
  final Card card;

  @override
  String toString() {
    return 'GameEvent.playerHasCard(player: $player, card: $card)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerHasCard &&
            (identical(other.player, player) ||
                const DeepCollectionEquality().equals(other.player, player)) &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(player) ^
      const DeepCollectionEquality().hash(card);

  @JsonKey(ignore: true)
  @override
  _$PlayerHasCardCopyWith<_PlayerHasCard> get copyWith =>
      __$PlayerHasCardCopyWithImpl<_PlayerHasCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlayerId player, Set<Card> cards) plausibleCards,
    required TResult Function(PlayerId player, Card card) playerHasCard,
  }) {
    return playerHasCard(player, card);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlayerId player, Set<Card> cards)? plausibleCards,
    TResult Function(PlayerId player, Card card)? playerHasCard,
    required TResult orElse(),
  }) {
    if (playerHasCard != null) {
      return playerHasCard(player, card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlausibleCards value) plausibleCards,
    required TResult Function(_PlayerHasCard value) playerHasCard,
  }) {
    return playerHasCard(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlausibleCards value)? plausibleCards,
    TResult Function(_PlayerHasCard value)? playerHasCard,
    required TResult orElse(),
  }) {
    if (playerHasCard != null) {
      return playerHasCard(this);
    }
    return orElse();
  }
}

abstract class _PlayerHasCard implements GameEvent {
  const factory _PlayerHasCard({required PlayerId player, required Card card}) =
      _$_PlayerHasCard;

  @override
  PlayerId get player => throw _privateConstructorUsedError;
  Card get card => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerHasCardCopyWith<_PlayerHasCard> get copyWith =>
      throw _privateConstructorUsedError;
}
