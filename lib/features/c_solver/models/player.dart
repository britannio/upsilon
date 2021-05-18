import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upsilon/features/c_solver/models/card.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    /// Cards the player certainly has.
    required Set<Card> cards,

    /// Cards the player could possibly have.
    required Set<Set<Card>> plausibleCardsGroup,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  const Player._();

  static const maxCards = 3;

  static const Player initial = Player(cards: {}, plausibleCardsGroup: {});

  bool get isFull => cards.length == maxCards;

  bool isValid() =>
      plausibleCardsGroup.every(
        (group) =>
            // If a set in `plausibleCards` has one card then that card should
            // be in `cards`
            group.length != 1 && //
            group.intersection(cards).isEmpty,
      ) &&
      cards.length + plausibleCardsGroup.length <= maxCards;

  /// Returns a [Player] without [card] in [plausibleCardsGroup] as [card] is owned by
  /// another player. If this converts a set in [plausibleCardsGroup] to a
  /// singleton set then that card will be moved to [cards] and the set will be
  /// removed.
  Player withoutPlausibleCard(Card card) {
    final newGroup = {
      ...plausibleCardsGroup.map((g) => {...g}..remove(card))
    };

    return _promotePlausibleSingletons(copyWith(plausibleCardsGroup: newGroup));
  }

  /// Returns a [Player] without cards in [plausibleCardsGroup] that aren't
  /// present in [remainingCards] as those cards are owned by another player If
  /// this converts a set in [plausibleCardsGroup] to a singleton set then that
  /// card will be moved to [cards] and the set will be removed.
  Player wherePlausibleCardsIsIn(Set<Card> remainingCards) {
    final newGroup = {
      ...plausibleCardsGroup.map((g) => g.difference(remainingCards))
    };

    return _promotePlausibleSingletons(copyWith(plausibleCardsGroup: newGroup));
  }

  static Player _promotePlausibleSingletons(Player player) {
    final newGroup = {...player.plausibleCardsGroup};
    final evictedCards = <Card>{};

    for (final group in {...newGroup.where((g) => g.length == 1)}) {
      evictedCards.add(group.single);
      newGroup.remove(group);
    }

    final newCards = {...player.cards, ...evictedCards};

    for (final card in evictedCards) {
      newGroup.removeWhere((g) => g.contains(card));
    }

    return player.copyWith(cards: newCards, plausibleCardsGroup: newGroup);
  }

  /// A player with [plausibleCards] added to [plausibleCardsGroup]. If
  /// [plausibleCards] is a singleton set then the player must have the card so
  /// it's placed into [cards] and every set in plausibleCardsGroup containing
  /// the card is removed.
  ///
  /// [plausibleCards] can be empty.
  Player withPlausibleCards(Set<Card> plausibleCards) {
    final isSingleton = plausibleCards.length == 1;
    if (isSingleton && cards.contains(plausibleCards.single)) return this;

    final newCards = {...cards, if (isSingleton) plausibleCards.single};

    final newGroup = {
      // TODO I'm unsure if I should always remove sets containing the card
      ...plausibleCardsGroup
          .where((s) => !isSingleton || !s.contains(plausibleCards.single)),
      if (plausibleCards.length > 1) plausibleCards,
      // TODO is it legal for plausibleCards to be a subset of a set in plausibleCardsGroup?
    };

    return copyWith(cards: newCards, plausibleCardsGroup: newGroup);
  }
}
