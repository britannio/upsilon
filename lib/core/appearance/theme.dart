import 'package:flutter/material.dart';

const purple = Color(0xFF8000FF);

ThemeData themeData(BuildContext context) {
  return ThemeData(
    brightness: Brightness.dark,
    accentColor: purple,
    primaryColor: purple,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
  );
}
