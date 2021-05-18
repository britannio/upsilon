import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upsilon/features/c_solver/models/game.dart';

part 'card.freezed.dart';

@freezed
class Card with _$Card {
  const factory Card.character(Character character) = _Character;
  const factory Card.room(Room room) = _Room;
  const factory Card.weapon(Weapon weapon) = _Weapon;

  const Card._();

  static final Set<Card> all = Set.unmodifiable({
    ...Character.values.map($Card.character),
    ...Room.values.map($Card.room),
    ...Weapon.values.map($Card.weapon),
  });
}
