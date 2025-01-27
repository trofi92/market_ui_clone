import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
  return TextTheme(
    headlineLarge: GoogleFonts.openSans(
      fontSize: 18,
      color: Colors.black,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: GoogleFonts.openSans(
      fontSize: 16,
      color: Colors.black,
    ),
    bodyMedium: GoogleFonts.openSans(
      fontSize: 14,
      color: Colors.grey,
    ),
    titleMedium: GoogleFonts.openSans(
      fontSize: 15,
      color: Colors.black,
    ),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    titleTextStyle: GoogleFonts.nanumGothic(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    primaryColor: Colors.orange,
  );
}
