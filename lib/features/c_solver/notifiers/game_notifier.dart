import 'package:flutter/foundation.dart';
import 'package:upsilon/features/c_solver/models/card.dart';
import 'package:upsilon/features/c_solver/models/game.dart';
import 'package:upsilon/features/c_solver/models/game_event.dart';

mixin AlertMixin<T> {
  void onAlert(T message);
}

class GameNotifier extends ChangeNotifier {
  GameNotifier(Set<Card> myCards) : _game = Game.initial(myCards);

  Game _game;
  late AlertMixin<String> _alertMixin;
  final Set<Card> _selectedCards = {};
  PlayerId? _selectedPlayer;

  void connect(AlertMixin<String> alertMixin) => _alertMixin = alertMixin;

  Set<Card> get remainingCards => _game.remainingCards;

  bool get gameSolved => remainingCards.length == 3;

  bool cardIsRemaining(Card card) => remainingCards.contains(card);
  bool cardIsSelected(Card card) => _selectedCards.contains(card);
  bool playerIsSelected(PlayerId id) => id == _selectedPlayer;

  void toggleCardSelected(Card card) {
    if (cardIsSelected(card))
      _selectedCards.remove(card);
    else
      _selectedCards.add(card);
    notifyListeners();
  }

  void selectPlayer(PlayerId id) {
    _selectedPlayer = id;
    notifyListeners();
  }

  void feedCardsToGameState() {
    if (_selectedCards.isEmpty) {
      _alertMixin.onAlert('No cards selected!');
      return;
    } else if (_selectedPlayer == null) {
      _alertMixin.onAlert('No player selected!');
      return;
    }

    if (_selectedCards.length == 1) {
      _game = _game.withEvent(
        GameEvent.playerHasCard(
          player: _selectedPlayer!,
          card: _selectedCards.single,
        ),
      );
    } else {
      _game = _game.withEvent(
        GameEvent.plausibleCards(
          player: _selectedPlayer!,
          cards: _selectedCards,
        ),
      );
    }
    notifyListeners();
  }
}
