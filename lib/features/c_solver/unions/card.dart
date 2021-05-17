import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upsilon/features/c_solver/unions/character.dart';
import 'package:upsilon/features/c_solver/unions/room.dart';
import 'package:upsilon/features/c_solver/unions/weapon.dart';

part 'card.freezed.dart';

@freezed
class Card with _$Card {
  const factory Card.character(Character character) = _Character;
  const factory Card.room(Room room) = _Room;
  const factory Card.weapon(Weapon weapon) = _Weapon;
}
