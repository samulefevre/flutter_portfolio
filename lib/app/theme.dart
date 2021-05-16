import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xfff5f6fa);
const accentColor = Color(0xff0097e6);

final theme = ThemeData(
  textTheme: GoogleFonts.openSansTextTheme().copyWith(
      bodyText2: const TextStyle(color: primaryColor),
      headline4: const TextStyle(color: accentColor)),
  primaryColorDark: const Color(0xFF0097A7),
  primaryColorLight: const Color(0xFFB2EBF2),
  primaryColor: primaryColor,
  accentColor: accentColor,
  scaffoldBackgroundColor: const Color(0xFF192a56), // const Color(0xFF273c75),
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
    ),
  ),
);
