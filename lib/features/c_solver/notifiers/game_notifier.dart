import 'package:flutter/foundation.dart';
import 'package:upsilon/features/c_solver/models/card.dart';

class GameNotifier extends ChangeNotifier {
  GameNotifier(this.myCards);
  final Set<Card> myCards;
}
