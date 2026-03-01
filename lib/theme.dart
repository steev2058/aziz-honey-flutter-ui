import 'package:flutter/material.dart';

class AzizTheme {
  static const Color primary = Color(0xFFFFA34D); // soft honey orange
  static const Color accent = Color(0xFFFFC76B); // light amber
  static const Color dark = Color(0xFF3A2D24);
  static const Color bg = Color(0xFFFFF8EF);

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: bg,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          primary: primary,
          secondary: accent,
          background: bg,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: dark,
          elevation: 0,
          centerTitle: true,
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          elevation: 0,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.w800),
          titleMedium: TextStyle(fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(height: 1.4),
        ),
      );
}
