import 'package:flutter/material.dart';

class AzizTheme {
  static const Color primary = Color(0xFFC9863A);
  static const Color primaryDark = Color(0xFF9A6227);
  static const Color accent = Color(0xFFE6B56A);
  static const Color wood = Color(0xFFB57B43);
  static const Color dark = Color(0xFF3A2D24);
  static const Color muted = Color(0xFF8A7867);
  static const Color bg = Color(0xFFFFF8F1);

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
          iconTheme: IconThemeData(color: dark),
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          elevation: 0,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: const Color(0xFFFFF3E4),
          indicatorColor: const Color(0xFFFFE2BE),
          iconTheme: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) return const IconThemeData(color: primaryDark);
            return const IconThemeData(color: dark);
          }),
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) return const TextStyle(color: primaryDark, fontWeight: FontWeight.w800);
            return const TextStyle(color: dark, fontWeight: FontWeight.w600);
          }),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.w800),
          titleMedium: TextStyle(fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(height: 1.4),
        ),
      );
}
