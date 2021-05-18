// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Game _$_$_GameFromJson(Map<String, dynamic> json) {
  return _$_Game(
    playerMap: (json['playerMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$PlayerIdEnumMap, k),
          Player.fromJson(e as Map<String, dynamic>)),
    ),
    remainingCards: (json['remainingCards'] as List<dynamic>)
        .map((e) => Card.fromJson(e as Map<String, dynamic>))
        .toSet(),
    events: (json['events'] as List<dynamic>)
        .map((e) => GameEvent.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_GameToJson(_$_Game instance) => <String, dynamic>{
      'playerMap': instance.playerMap
          .map((k, e) => MapEntry(_$PlayerIdEnumMap[k], e.toJson())),
      'remainingCards': instance.remainingCards.map((e) => e.toJson()).toList(),
      'events': instance.events.map((e) => e.toJson()).toList(),
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

const _$PlayerIdEnumMap = {
  PlayerId.zero: 'zero',
  PlayerId.one: 'one',
  PlayerId.two: 'two',
  PlayerId.three: 'three',
  PlayerId.four: 'four',
  PlayerId.five: 'five',
};
