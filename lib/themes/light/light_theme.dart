import 'package:flutter/material.dart';
import 'package:todo_app/themes/light/light_colors.dart';

class LightTheme {
  static final theme = ThemeData(
    textTheme: const TextTheme(
      titleSmall: TextStyle(color: LightColors.gray),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: LightColors.lightBlue,
        foregroundColor: LightColors.primaryBlue,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    ),
  );
}
