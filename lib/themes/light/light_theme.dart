import 'package:flutter/material.dart';
import 'package:todo_app/themes/color_extension.dart';
import 'package:todo_app/themes/light/light_colors.dart';

class LightTheme {
  static final theme = ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.black87,
        fontSize: 20,
      ),
    ),
    dividerColor: LightColors.gray,
    textTheme: const TextTheme(
      titleSmall: TextStyle(color: LightColors.gray),
      bodyMedium: TextStyle(color: LightColors.gray),
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
    extensions: [
      ColorExtension(
        doneBorderColor: LightColors.lightGray,
        doneBackgroundColor: LightColors.darkBlue,
        focusedBadgeColor: LightColors.darkBlue,
        unfocusedBadgeColor: LightColors.lightGray,
      ),
    ],
  );
}
