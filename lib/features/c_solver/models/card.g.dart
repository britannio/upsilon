// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$_$_CharacterFromJson(Map<String, dynamic> json) {
  return _$_Character(
    _$enumDecode(_$CharacterEnumMap, json['character']),
  );
}

Map<String, dynamic> _$_$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'character': _$CharacterEnumMap[instance.character],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$CharacterEnumMap = {
  Character.red: 'red',
  Character.green: 'green',
  Character.yellow: 'yellow',
  Character.purple: 'purple',
  Character.blue: 'blue',
  Character.white: 'white',
};

_$_Room _$_$_RoomFromJson(Map<String, dynamic> json) {
  return _$_Room(
    _$enumDecode(_$RoomEnumMap, json['room']),
  );
}

Map<String, dynamic> _$_$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'room': _$RoomEnumMap[instance.room],
    };

const _$RoomEnumMap = {
  Room.kitchen: 'kitchen',
  Room.ballroom: 'ballroom',
  Room.conservatory: 'conservatory',
  Room.diningRoom: 'diningRoom',
  Room.lounge: 'lounge',
  Room.hall: 'hall',
  Room.study: 'study',
  Room.library: 'library',
  Room.billiard: 'billiard',
};

_$_Weapon _$_$_WeaponFromJson(Map<String, dynamic> json) {
  return _$_Weapon(
    _$enumDecode(_$WeaponEnumMap, json['weapon']),
  );
}

Map<String, dynamic> _$_$_WeaponToJson(_$_Weapon instance) => <String, dynamic>{
      'weapon': _$WeaponEnumMap[instance.weapon],
    };

const _$WeaponEnumMap = {
  Weapon.candlestick: 'candlestick',
  Weapon.knife: 'knife',
  Weapon.leadPipe: 'leadPipe',
  Weapon.revolver: 'revolver',
  Weapon.rope: 'rope',
  Weapon.wrench: 'wrench',
};
