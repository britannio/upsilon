import 'package:flutter/material.dart' hide Card;
import 'package:upsilon/features/c_solver/models/card.dart';

class CardButton extends StatelessWidget {
  final Card card;
  final bool selected;
  final VoidCallback? onPressed;

  const CardButton({
    Key? key,
    required this.card,
    this.selected = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
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
    );
  }
}

class SelectableButton extends StatelessWidget {
  final bool selected;
  final VoidCallback? onPressed;
  final String text;

  const SelectableButton({
    Key? key,
    required this.selected,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          StadiumBorder(
            side: selected
                ? BorderSide(color: Colors.black, width: 4)
                : BorderSide.none,
          ),
        ),
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
      ),
      child: Text(text),
    );
  }
}
