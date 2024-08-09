import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppThemes {
  static final lightMode = ThemeData(
    useMaterial3: true,
    canvasColor: Colors.white,
    brightness: Brightness.light,
    primaryColor: Colors.blueAccent,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
  );

  static final darkMode = ThemeData(
    useMaterial3: true,
    canvasColor: Colors.black,
    primaryColorDark: Colors.blueGrey,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
  );
}
