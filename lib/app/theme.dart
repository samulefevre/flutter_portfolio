import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
    textTheme: GoogleFonts.openSansTextTheme(),
    primaryColorDark: const Color(0xFF0097A7),
    primaryColorLight: const Color(0xFFB2EBF2),
    primaryColor: const Color(0xfff5f6fa),
    accentColor: const Color(0xff0097e6),
    scaffoldBackgroundColor:
        const Color(0xFF192a56), // const Color(0xFF273c75),
    // backgroundColor: Colors.red,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(
        const Color(0xfff5f6fa),
      ),
    )));
