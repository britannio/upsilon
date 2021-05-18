import 'package:flutter/material.dart' hide Card;
import 'package:provider/provider.dart';
import 'package:upsilon/core/components/card_button.dart';
import 'package:upsilon/core/components/rounded_bottom_corners_border.dart';
import 'package:upsilon/features/c_solver/models/card.dart';
import 'package:upsilon/features/c_solver/models/game.dart';
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

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> with AlertMixin<String> {
  @override
  void initState() {
    super.initState();
    context.read<GameNotifier>().connect(this);
  }

  @override
  void onAlert(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<GameNotifier>();
    final divider = Divider(
      indent: 8,
      height: 32,
      endIndent: 8,
      thickness: 4,
      color: Theme.of(context).colorScheme.onBackground,
    );
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Game'),
          centerTitle: true,
          shape: RoundedBottomCornersBorder(16),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: notifier.feedCardsToGameState,
          label: Text('SOLVE'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          primary: false,
          children: [
            const SizedBox(height: 16),
            HorizontalCardList(
              title: 'Characters',
              cards: Card.characters
                  .intersection(notifier.remainingCards)
                  .toList(),
              isSelected: notifier.isCardSelected,
            ),
            const SizedBox(height: 8),
            HorizontalCardList(
              title: 'Rooms',
              cards: Card.rooms.intersection(notifier.remainingCards).toList(),
              isSelected: notifier.isCardSelected,
            ),
            const SizedBox(height: 8),
            HorizontalCardList(
              title: 'Weapons',
              cards:
                  Card.weapons.intersection(notifier.remainingCards).toList(),
              isSelected: notifier.isCardSelected,
            ),
            divider,
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              childAspectRatio: 3,
              primary: false,
              children: PlayerId.values.map(
                (id) {
                  return Center(
                    child: SelectableButton(
                      onPressed:
                          id == PlayerId.zero || notifier.isPlayerFull(id)
                              ? null
                              : () => notifier.selectPlayer(id),
                      selected: notifier.isPlayerSelected(id),
                      text: 'Player ${id.index}',
                    ),
                  );
                },
              ).toList(),
            ),
            divider,
          ],
        ),
      ),
    );
  }
}

class HorizontalCardList extends StatelessWidget {
  final String title;
  final List<Card> cards;
  final bool Function(Card) isSelected;

  const HorizontalCardList({
    Key? key,
    required this.title,
    required this.cards,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        IntrinsicHeight(
          child: Wrap(
            children: [
              for (final card in cards)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: CardButton(
                    card: card,
                    selected: isSelected(card),
                    onPressed: () =>
                        context.read<GameNotifier>().toggleCardSelected(card),
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }
}
