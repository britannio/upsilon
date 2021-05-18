import 'package:flutter/material.dart';
import 'package:upsilon/core/appearance/theme.dart';

import 'core/navigation/navigation.dart';

class UpsilonApp extends StatelessWidget {
  static final navigatorKey = router.navigatorKey;
  static final router = AppRouter();

  Widget _builder(BuildContext context, Widget? child) {
    // child = MultiProvider(providers: providers, child: child);
    return child!;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Upsilon',
      color: purple,
      theme: themeData(context),
      builder: _builder,
      restorationScopeId: 'root',
      shortcuts: <LogicalKeySet, Intent>{...WidgetsApp.defaultShortcuts},
      // Debug/Performance flags
      showPerformanceOverlay: false,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: true,
      debugShowMaterialGrid: false,
      // Navigation
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(),
    );
  }
}
