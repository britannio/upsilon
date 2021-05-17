import 'package:flutter/material.dart';

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
    const purple = Color(0xFF8000FF);
    return MaterialApp.router(
      title: 'Upsilon',
      color: purple,
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: purple,
        primaryColor: purple,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
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
