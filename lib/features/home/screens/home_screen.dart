import 'package:flutter/material.dart';
import 'package:upsilon/core/navigation/navigation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Upsilon - Cluedo Solver')),
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          onPressed: () => context.router.push(GameRoute()),
          child: Icon(Icons.play_arrow),
        );
      }),
    );
  }
}
