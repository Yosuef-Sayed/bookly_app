import 'package:flutter/material.dart';

class AppColors {
  static const bgPrimaryColors = Color(0xff100B20);
}

class AppThemes {
  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.bgPrimaryColors,
  );
}
