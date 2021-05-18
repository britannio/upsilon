import 'package:auto_route/auto_route.dart';
import 'package:upsilon/features/c_solver/screens/game_screen.dart';
import 'package:upsilon/features/home/screens/home_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Adaptor,Route',
  preferRelativeImports: false,
  routes: [
    AutoRoute(path: '/', page: HomeAdaptor),
    AutoRoute(
      path: 'game',
      page: GameAdaptor,
      fullscreenDialog: true,
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
