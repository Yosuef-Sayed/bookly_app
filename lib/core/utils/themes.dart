import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppThemes {
  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: kPrimaryColor,
    textTheme: GoogleFonts.montserratTextTheme(
      ThemeData.dark().textTheme.copyWith(
        titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
    ),
  );
}
