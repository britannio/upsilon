import 'package:flutter/material.dart' show Color, Colors;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upsilon/features/c_solver/models/card.dart';
import 'package:upsilon/features/c_solver/models/game_event.dart';
import 'package:upsilon/features/c_solver/models/player.dart';
import 'package:upsilon/features/c_solver/models/validator.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  @Implements(Validator)
  const factory Game({
    required Map<PlayerId, Player> playerMap,
    required Set<Card> remainingCards,
    required List<GameEvent> events,
  }) = _Game;

  factory Game.initial(Set<Card> player0Cards) => Game(
        playerMap: {
          for (final id in PlayerId.values)
            id: Player.initial.copyWith(
              cards: id == PlayerId.zero ? player0Cards : const {},
            ),
        },
        remainingCards: Card.all.difference(player0Cards),
        events: const [],
      );

  const Game._();

  Iterable<Player> get players => playerMap.values;

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

  Game withEvent(GameEvent event) {
    final newGame = event.when(
      plausibleCards: (PlayerId playerId, Set<Card> cards) {
        final cardsWithoutRemaining = cards.difference(remainingCards);
        final player =
            playerMap[playerId]!.withPlausibleCards(cardsWithoutRemaining);
        final newPlayerMap = {...playerMap, playerId: player};

        final newGame = copyWith(
          playerMap: newPlayerMap,
          events: [...events, event],
        );

        return cardsWithoutRemaining.length == 1
            ? _withoutRemainingCard(newGame, cardsWithoutRemaining.single)
            : newGame;
      },
      playerHasCard: (PlayerId playerId, Card card) {
        final newPlayerMap = {
          for (final id in [...PlayerId.values]..remove(playerId))
            id: playerMap[id]!.withoutPlausibleCard(card),
          playerId: playerMap[playerId]!.withPlausibleCards({card})
        };

        var newRemainingCards = {...remainingCards}..remove(card);
        while (true) {
          bool remainingCardsUpdated = false;
          for (final id in PlayerId.values) {
            final player = newPlayerMap[id]!;
            final remainingCardsLength = newRemainingCards.length;
            newRemainingCards = newRemainingCards.difference(player.cards);

            remainingCardsUpdated = remainingCardsUpdated ||
                newRemainingCards.length < remainingCardsLength;
          }
          if (!remainingCardsUpdated) break;

          for (final id in PlayerId.values) {
            final player =
                newPlayerMap[id]!.wherePlausibleCardsIsIn(newRemainingCards);
            newPlayerMap[id] = player;
          }
        }

        return copyWith(
          playerMap: newPlayerMap,
          remainingCards: newRemainingCards,
          events: [...events, event],
        );
      },
    );

    assert(newGame.isValid(), 'invalid game state after $event');
    if (!newGame.isValid()) print('invalid game state after $event');

    return newGame;
  }

  static Game _withoutRemainingCard(Game game, Card card) {
    final newPlayerMap = {...game.playerMap};

    var newRemainingCards = {...game.remainingCards}..remove(card);
    while (true) {
      bool remainingCardsUpdated = false;
      for (final id in PlayerId.values) {
        final player = newPlayerMap[id]!;
        final remainingCardsLength = newRemainingCards.length;
        newRemainingCards = newRemainingCards.difference(player.cards);

        remainingCardsUpdated = remainingCardsUpdated ||
            newRemainingCards.length < remainingCardsLength;
      }
      if (!remainingCardsUpdated) break;

      for (final id in PlayerId.values) {
        final player =
            newPlayerMap[id]!.wherePlausibleCardsIsIn(newRemainingCards);
        newPlayerMap[id] = player;
      }
    }

    return game.copyWith(
      playerMap: newPlayerMap,
      remainingCards: newRemainingCards,
    );
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

enum PlayerId { zero, one, two, three, four, five }

extension CharacterX on Character {
  Color get color {
    switch (this) {
      case Character.red:
        return Colors.red;
      case Character.green:
        return Colors.green;
      case Character.yellow:
        return Colors.yellow;
      case Character.purple:
        return Colors.purple;
      case Character.blue:
        return Colors.blue;
      case Character.white:
        return Colors.white;
    }
  }
}
