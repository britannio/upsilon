import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upsilon/features/c_solver/models/player.dart';
import 'package:upsilon/features/c_solver/models/validator.dart';
import 'package:upsilon/features/c_solver/unions/card.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  @Implements(Validator)
  const factory Game({
    required Player player0,
    required Player player1,
    required Player player2,
    required Player player3,
    required Player player4,
    required Player player5,
    required Set<Card> remainingCards,
  }) = _Game;

  factory Game.initial(Set<Card> player0Cards) => Game(
        player0: Player.initial.copyWith(cards: player0Cards),
        player1: Player.initial,
        player2: Player.initial,
        player3: Player.initial,
        player4: Player.initial,
        player5: Player.initial,
        remainingCards: Card.all.difference(player0Cards),
      );

  const Game._();

  List<Player> get players =>
      [player0, player1, player2, player3, player4, player5];

  bool isValid() {
    final players = this.players;

    final cards = Set<Card>();
    for (final player in players) {
      final playerCards = player.cards;
      // The player must be valid
      if (!player.isValid()) return false;
      // No two players can have the same card
      if (playerCards.intersection(cards).isNotEmpty) return false;
      // Remaining cards should not be possessed by any player
      if (playerCards.intersection(remainingCards).isNotEmpty) return false;
      cards.addAll(playerCards);
    }
    return true;
  }
}

enum Character { red, green, yellow, purple, blue, white }

enum Room {
  kitchen,
  ballroom,
  conservatory,
  diningRoom,
  lounge,
  hall,
  study,
  library,
  billiard,
}

enum Weapon { candlestick, knife, leadPipe, revolver, rope, wrench }
