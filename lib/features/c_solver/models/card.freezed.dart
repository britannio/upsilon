// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Card _$CardFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'character':
      return _Character.fromJson(json);
    case 'room':
      return _Room.fromJson(json);
    case 'weapon':
      return _Weapon.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CardTearOff {
  const _$CardTearOff();

  _Character character(Character character) {
    return _Character(
      character,
    );
  }

  _Room room(Room room) {
    return _Room(
      room,
    );
  }

  _Weapon weapon(Weapon weapon) {
    return _Weapon(
      weapon,
    );
  }

  Card fromJson(Map<String, Object> json) {
    return Card.fromJson(json);
  }
}

/// @nodoc
const $Card = _$CardTearOff();

/// @nodoc
mixin _$Card {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) character,
    required TResult Function(Room room) room,
    required TResult Function(Weapon weapon) weapon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? character,
    TResult Function(Room room)? room,
    TResult Function(Weapon weapon)? weapon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Character value) character,
    required TResult Function(_Room value) room,
    required TResult Function(_Weapon value) weapon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Character value)? character,
    TResult Function(_Room value)? room,
    TResult Function(_Weapon value)? weapon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardCopyWithImpl<$Res> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  final Card _value;
  // ignore: unused_field
  final $Res Function(Card) _then;
}

/// @nodoc
abstract class _$CharacterCopyWith<$Res> {
  factory _$CharacterCopyWith(
          _Character value, $Res Function(_Character) then) =
      __$CharacterCopyWithImpl<$Res>;
  $Res call({Character character});
}

/// @nodoc
class __$CharacterCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements _$CharacterCopyWith<$Res> {
  __$CharacterCopyWithImpl(_Character _value, $Res Function(_Character) _then)
      : super(_value, (v) => _then(v as _Character));

  @override
  _Character get _value => super._value as _Character;

  @override
  $Res call({
    Object? character = freezed,
  }) {
    return _then(_Character(
      character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Character extends _Character {
  const _$_Character(this.character) : super._();

  factory _$_Character.fromJson(Map<String, dynamic> json) =>
      _$_$_CharacterFromJson(json);

  @override
  final Character character;

  @override
  String toString() {
    return 'Card.character(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Character &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(character);

  @JsonKey(ignore: true)
  @override
  _$CharacterCopyWith<_Character> get copyWith =>
      __$CharacterCopyWithImpl<_Character>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) character,
    required TResult Function(Room room) room,
    required TResult Function(Weapon weapon) weapon,
  }) {
    return character(this.character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? character,
    TResult Function(Room room)? room,
    TResult Function(Weapon weapon)? weapon,
    required TResult orElse(),
  }) {
    if (character != null) {
      return character(this.character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Character value) character,
    required TResult Function(_Room value) room,
    required TResult Function(_Weapon value) weapon,
  }) {
    return character(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Character value)? character,
    TResult Function(_Room value)? room,
    TResult Function(_Weapon value)? weapon,
    required TResult orElse(),
  }) {
    if (character != null) {
      return character(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CharacterToJson(this)..['runtimeType'] = 'character';
  }
}

abstract class _Character extends Card {
  const factory _Character(Character character) = _$_Character;
  const _Character._() : super._();

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$_Character.fromJson;

  Character get character => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CharacterCopyWith<_Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) then) =
      __$RoomCopyWithImpl<$Res>;
  $Res call({Room room});
}

/// @nodoc
class __$RoomCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(_Room _value, $Res Function(_Room) _then)
      : super(_value, (v) => _then(v as _Room));

  @override
  _Room get _value => super._value as _Room;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(_Room(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Room extends _Room {
  const _$_Room(this.room) : super._();

  factory _$_Room.fromJson(Map<String, dynamic> json) =>
      _$_$_RoomFromJson(json);

  @override
  final Room room;

  @override
  String toString() {
    return 'Card.room(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Room &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(room);

  @JsonKey(ignore: true)
  @override
  _$RoomCopyWith<_Room> get copyWith =>
      __$RoomCopyWithImpl<_Room>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) character,
    required TResult Function(Room room) room,
    required TResult Function(Weapon weapon) weapon,
  }) {
    return room(this.room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? character,
    TResult Function(Room room)? room,
    TResult Function(Weapon weapon)? weapon,
    required TResult orElse(),
  }) {
    if (room != null) {
      return room(this.room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Character value) character,
    required TResult Function(_Room value) room,
    required TResult Function(_Weapon value) weapon,
  }) {
    return room(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Character value)? character,
    TResult Function(_Room value)? room,
    TResult Function(_Weapon value)? weapon,
    required TResult orElse(),
  }) {
    if (room != null) {
      return room(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoomToJson(this)..['runtimeType'] = 'room';
  }
}

abstract class _Room extends Card {
  const factory _Room(Room room) = _$_Room;
  const _Room._() : super._();

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  Room get room => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RoomCopyWith<_Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeaponCopyWith<$Res> {
  factory _$WeaponCopyWith(_Weapon value, $Res Function(_Weapon) then) =
      __$WeaponCopyWithImpl<$Res>;
  $Res call({Weapon weapon});
}

/// @nodoc
class __$WeaponCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements _$WeaponCopyWith<$Res> {
  __$WeaponCopyWithImpl(_Weapon _value, $Res Function(_Weapon) _then)
      : super(_value, (v) => _then(v as _Weapon));

  @override
  _Weapon get _value => super._value as _Weapon;

  @override
  $Res call({
    Object? weapon = freezed,
  }) {
    return _then(_Weapon(
      weapon == freezed
          ? _value.weapon
          : weapon // ignore: cast_nullable_to_non_nullable
              as Weapon,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Weapon extends _Weapon {
  const _$_Weapon(this.weapon) : super._();

  factory _$_Weapon.fromJson(Map<String, dynamic> json) =>
      _$_$_WeaponFromJson(json);

  @override
  final Weapon weapon;

  @override
  String toString() {
    return 'Card.weapon(weapon: $weapon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Weapon &&
            (identical(other.weapon, weapon) ||
                const DeepCollectionEquality().equals(other.weapon, weapon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(weapon);

  @JsonKey(ignore: true)
  @override
  _$WeaponCopyWith<_Weapon> get copyWith =>
      __$WeaponCopyWithImpl<_Weapon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) character,
    required TResult Function(Room room) room,
    required TResult Function(Weapon weapon) weapon,
  }) {
    return weapon(this.weapon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? character,
    TResult Function(Room room)? room,
    TResult Function(Weapon weapon)? weapon,
    required TResult orElse(),
  }) {
    if (weapon != null) {
      return weapon(this.weapon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Character value) character,
    required TResult Function(_Room value) room,
    required TResult Function(_Weapon value) weapon,
  }) {
    return weapon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Character value)? character,
    TResult Function(_Room value)? room,
    TResult Function(_Weapon value)? weapon,
    required TResult orElse(),
  }) {
    if (weapon != null) {
      return weapon(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeaponToJson(this)..['runtimeType'] = 'weapon';
  }
}

abstract class _Weapon extends Card {
  const factory _Weapon(Weapon weapon) = _$_Weapon;
  const _Weapon._() : super._();

  factory _Weapon.fromJson(Map<String, dynamic> json) = _$_Weapon.fromJson;

  Weapon get weapon => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WeaponCopyWith<_Weapon> get copyWith => throw _privateConstructorUsedError;
}
