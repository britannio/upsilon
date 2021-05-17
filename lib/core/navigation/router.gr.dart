// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:upsilon/features/c_solver/screens/game_screen.dart' as _i3;
import 'package:upsilon/features/home/screens/home_screen.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.HomeScreen());
    },
    GameRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.GameScreen());
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

class GameRoute extends _i1.PageRouteInfo {
  const GameRoute() : super(name, path: 'game');

  static const String name = 'GameRoute';
}
