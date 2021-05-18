// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlausibleCards _$_$_PlausibleCardsFromJson(Map<String, dynamic> json) {
  return _$_PlausibleCards(
    player: _$enumDecode(_$PlayerIdEnumMap, json['player']),
    cards: (json['cards'] as List<dynamic>)
        .map((e) => Card.fromJson(e as Map<String, dynamic>))
        .toSet(),
  );
}

Map<String, dynamic> _$_$_PlausibleCardsToJson(_$_PlausibleCards instance) =>
    <String, dynamic>{
      'player': _$PlayerIdEnumMap[instance.player],
      'cards': instance.cards.map((e) => e.toJson()).toList(),
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

_$_PlayerHasCard _$_$_PlayerHasCardFromJson(Map<String, dynamic> json) {
  return _$_PlayerHasCard(
    player: _$enumDecode(_$PlayerIdEnumMap, json['player']),
    card: Card.fromJson(json['card'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PlayerHasCardToJson(_$_PlayerHasCard instance) =>
    <String, dynamic>{
      'player': _$PlayerIdEnumMap[instance.player],
      'card': instance.card.toJson(),
    };
