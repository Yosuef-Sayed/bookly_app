import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';

abstract class AppThemes {
  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: kPrimaryColor,
    textTheme: TextTheme(
      titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    ),
  );
}
