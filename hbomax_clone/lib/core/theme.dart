import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HboTheme {
  static const Color background   = Color(0xFF000000);
  static const Color surface      = Color(0xFF1A1A1A);
  static const Color surfaceLight = Color(0xFF2A2A2A);
  static const Color primary      = Color(0xFFFFFFFF);
  static const Color secondary    = Color(0xFFAAAAAA);
  static const Color tertiary     = Color(0xFF666666);
  static const Color accent       = Color(0xFF6B4FBB);
  static const Color accentBlue   = Color(0xFF4A90D9);
  static const Color divider      = Color(0xFF2A2A2A);

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    colorScheme: const ColorScheme.dark(
      surface:   surface,
      primary:   primary,
      secondary: secondary,
      onSurface: primary,
      onPrimary: background,
    ),
    textTheme: GoogleFonts.interTextTheme(
      const TextTheme(
        displayLarge:  TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: primary),
        displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: primary),
        titleLarge:    TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: primary),
        titleMedium:   TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: primary),
        bodyLarge:     TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: primary),
        bodyMedium:    TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: secondary),
        labelLarge:    TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: primary, letterSpacing: 1.2),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: primary),
    ),
    tabBarTheme: const TabBarThemeData(
      indicatorColor:        primary,
      labelColor:            primary,
      unselectedLabelColor:  secondary,
      indicatorSize:         TabBarIndicatorSize.tab,
    ),
    dividerTheme: const DividerThemeData(
      color: divider,
      thickness: 0.5,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: background,
        textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700, letterSpacing: 1.2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primary,
        side: const BorderSide(color: primary, width: 1.5),
        textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700, letterSpacing: 1.2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      ),
    ),
  );
}
