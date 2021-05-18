// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Player _$_$_PlayerFromJson(Map<String, dynamic> json) {
  return _$_Player(
    cards: (json['cards'] as List<dynamic>)
        .map((e) => Card.fromJson(e as Map<String, dynamic>))
        .toSet(),
    plausibleCardsGroup: (json['plausibleCardsGroup'] as List<dynamic>)
        .map((e) => (e as List<dynamic>)
            .map((e) => Card.fromJson(e as Map<String, dynamic>))
            .toSet())
        .toSet(),
  );
}

Map<String, dynamic> _$_$_PlayerToJson(_$_Player instance) => <String, dynamic>{
      'cards': instance.cards.map((e) => e.toJson()).toList(),
      'plausibleCardsGroup': instance.plausibleCardsGroup
          .map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
    };
