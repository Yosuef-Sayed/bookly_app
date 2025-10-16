import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppThemes {
  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: kPrimaryColor,
    textTheme: ThemeData.dark().textTheme.copyWith(
      titleMedium: GoogleFonts.montserrat(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        fontFamily: kGTSectraFine,
      ),
      bodyMedium: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: const Color.fromARGB(160, 255, 255, 255),
      ),
      labelLarge: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      labelSmall: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: const Color.fromARGB(100, 255, 255, 255),
      ),
      titleLarge: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        fontFamily: kGTSectraFine,
      ),
      titleSmall: GoogleFonts.montserrat(
        fontSize: 18,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w500,
        color: const Color.fromARGB(160, 255, 255, 255),
      ),
      bodySmall: GoogleFonts.montserrat(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
