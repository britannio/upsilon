import 'package:flutter/material.dart' hide Card;
import 'package:upsilon/features/c_solver/models/card.dart';

class HomeNotifier extends ChangeNotifier {
  final Set<Card> _cards = {};
  Set<Card> get cards => _cards;

  static const minCards = 3;

  bool isCardSelected(Card card) => _cards.contains(card);

  bool get canStart => _cards.length == 3;

  void toggleCardSelected(Card card) {
    if (isCardSelected(card)) {
      _cards.remove(card);
    } else {
      if (cards.length < minCards) _cards.add(card);
    }
    notifyListeners();
  }
}
