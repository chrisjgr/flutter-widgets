import 'package:flutter/material.dart';

class AppTheme {
  static final Color? primary = Colors.indigo[600];

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: primary,

      // AppBar Theme
      appBarTheme: AppBarTheme(color: primary, elevation: 0),

      // TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      // FLoating Actions Buttons
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 10),

      // Elevated Buttons

      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              shape: const StadiumBorder(),
              elevation: 0)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // Color primario
      primaryColor: primary,

      // AppBar Theme
      appBarTheme: AppBarTheme(color: primary, elevation: 0),

      // Scaffold
      scaffoldBackgroundColor: Colors.black,

      // TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      // FLoating Actions Buttons
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 10),

      // Elevated Buttons

      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              shape: const StadiumBorder(),
              elevation: 0)));
}
