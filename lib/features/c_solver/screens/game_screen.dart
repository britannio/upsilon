import 'package:flutter/material.dart' hide Card;
import 'package:provider/provider.dart';
import 'package:upsilon/core/components/rounded_bottom_corners_border.dart';
import 'package:upsilon/features/c_solver/models/card.dart';
import 'package:upsilon/features/c_solver/notifiers/game_notifier.dart';

class GameAdaptor extends StatelessWidget {
  const GameAdaptor({Key? key, required this.myCards}) : super(key: key);
  final Set<Card> myCards;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GameNotifier>(
      create: (BuildContext context) => GameNotifier(myCards),
      child: GameScreen(),
    );
  }
}

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Game'),
          centerTitle: true,
          shape: RoundedBottomCornersBorder(16),
        ),
      ),
    );
  }
}
