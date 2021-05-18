// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i4;
import 'package:upsilon/features/c_solver/models/card.dart' as _i5;
import 'package:upsilon/features/c_solver/screens/game_screen.dart' as _i3;
import 'package:upsilon/features/home/screens/home_screen.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.HomeAdaptor());
    },
    GameRoute.name: (entry) {
      var args = entry.routeData.argsAs<GameRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i3.GameAdaptor(key: args.key, myCards: args.myCards));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(GameRoute.name, path: 'game'),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class GameRoute extends _i1.PageRouteInfo<GameRouteArgs> {
  GameRoute({_i4.Key? key, required Set<_i5.Card> myCards})
      : super(name,
            path: 'game', args: GameRouteArgs(key: key, myCards: myCards));

  static const String name = 'GameRoute';
}

class GameRouteArgs {
  const GameRouteArgs({this.key, required this.myCards});

  final _i4.Key? key;

  final Set<_i5.Card> myCards;
}
