import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upsilon/features/c_solver/models/validator.dart';
import 'package:upsilon/features/c_solver/unions/card.dart';

part 'player.freezed.dart';

@freezed
class Player with _$Player {
  @Implements(Validator)
  const factory Player({
    /// Cards the player certainly has.
    required Set<Card> cards,

    /// Cards the player could possibly have.
    required Set<Card> plausibleCards,
  }) = _Player;

  const Player._();

  static const Player initial = Player(cards: {}, plausibleCards: {});

  bool isValid() => cards.intersection(plausibleCards).isEmpty;
}
