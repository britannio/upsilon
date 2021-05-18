import 'package:flutter/material.dart' hide Card;
import 'package:provider/provider.dart';
import 'package:upsilon/core/components/rounded_bottom_corners_border.dart';
import 'package:upsilon/core/navigation/navigation.dart';
import 'package:upsilon/features/c_solver/models/card.dart';
import 'package:upsilon/features/home/notifiers/home_notifier.dart';

class HomeAdaptor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeNotifier>(
      create: (BuildContext context) => HomeNotifier(),
      child: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<HomeNotifier>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Upsilon - Cluedo Solver'),
        centerTitle: true,
        shape: RoundedBottomCornersBorder(16),
      ),
      backgroundColor: Color(0xFF212121),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: CardList(
                title: 'Characters',
                cards: Card.characters.toList(),
                isSelected: notifier.isCardSelected,
              ),
            ),
            Expanded(
              child: CardList(
                title: 'Rooms',
                cards: Card.rooms.toList(),
                isSelected: notifier.isCardSelected,
              ),
            ),
            Expanded(
              child: CardList(
                title: 'Weapons',
                cards: Card.weapons.toList(),
                isSelected: notifier.isCardSelected,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          onPressed: notifier.canStart
              ? () => context.router.push(GameRoute(myCards: notifier.cards))
              : null,
          child: Icon(Icons.play_arrow),
        );
      }),
    );
  }
}

class CardList extends StatelessWidget {
  final String title;
  final List<Card> cards;
  final bool Function(Card) isSelected;

  const CardList({
    Key? key,
    required this.title,
    required this.cards,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        const SizedBox(height: 4),
        Expanded(
          child: FractionallySizedBox(
            widthFactor: 0.9,
            child: ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) {
                final card = cards[index];
                final selected = isSelected(card);
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: ElevatedButton(
                    onPressed: () =>
                        context.read<HomeNotifier>().toggleCardSelected(card),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        StadiumBorder(
                          side: selected
                              ? BorderSide(color: Colors.black, width: 4)
                              : BorderSide.none,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        card.color ?? Theme.of(context).colorScheme.secondary,
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        card.color != null
                            ? card.color!.computeLuminance() > 0.5
                                ? Colors.black
                                : Colors.white
                            : null,
                      ),
                    ),
                    child: Text(card.name),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
