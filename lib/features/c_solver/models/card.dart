import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upsilon/features/c_solver/models/game.dart';

part 'card.freezed.dart';

@freezed
class Card with _$Card {
  const factory Card.character(Character character) = _Character;
  const factory Card.room(Room room) = _Room;
  const factory Card.weapon(Weapon weapon) = _Weapon;

  const Card._();

  static final Set<Card> all =
      Set.unmodifiable({...characters, ...rooms, ...weapons});

  static final Set<Card> characters =
      Set.unmodifiable(Character.values.map($Card.character));

  static final Set<Card> rooms = Set.unmodifiable(Room.values.map($Card.room));

  static final Set<Card> weapons =
      Set.unmodifiable(Weapon.values.map($Card.weapon));

  String get name => RegExp(r'\.(\w+)\)').firstMatch(toString())!.group(1)!;

  Color? get color => maybeWhen(
        character: (character) => character.color,
        orElse: () => null,
      );
}
