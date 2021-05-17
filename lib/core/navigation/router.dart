import 'package:auto_route/auto_route.dart';
import 'package:upsilon/features/c_solver/screens/game_screen.dart';
import 'package:upsilon/features/home/screens/home_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  preferRelativeImports: false,
  routes: [
    AutoRoute(path: '/', page: HomeScreen),
    AutoRoute(path: 'game', page: GameScreen),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
