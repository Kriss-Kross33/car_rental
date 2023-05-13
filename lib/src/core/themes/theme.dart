import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  /// The currently set default theme.
  static ThemeData get defaultTheme => lightTheme;

  static const String fontFamily = 'Saira';

  //* Light Theme Colors
  static const Color whitePrimaryColor = Color(0xFFFFFAFA);
  static const Color whitePrimaryVariant = Color(0xFFDDEAF6);
  static const Color whiteOnPrimaryColor = darkPrimaryColor;
  static const Color whiteSecondaryColor = Color(0xFFF96E57);
  static const Color whiteSecondaryVariant = Color(0xFFF73E1B);
  static const Color whiteOnSecondaryColor = Color(0xFFFFFAFA);

  //* Light Theme
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: whitePrimaryColor,
      onPrimary: whiteOnPrimaryColor,
      secondary: whiteSecondaryColor,
      onSecondary: whiteOnSecondaryColor,
    ),
    iconTheme: _iconTheme,
    buttonTheme: _buttonThemeData,
    textTheme: _lightTextTheme,
  );

  //* Light Text Theme Properties
  static const _lightHeadline3 = TextStyle(
    fontSize: 44,
    color: darkPrimaryColor,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );
  static const _lightHeadline4 = TextStyle(
    fontSize: 30,
    color: darkPrimaryColor,
    fontFamily: fontFamily,
  );
  static const _lightHeadline5 = TextStyle(
    fontSize: 24,
    color: darkPrimaryColor,
    fontFamily: fontFamily,
  );
  static const _lightHeadline6 = TextStyle(
    fontSize: 20,
    color: darkPrimaryColor,
    fontFamily: fontFamily,
  );
  static const _lightSubtitle1 = TextStyle(
    fontSize: 16,
    color: darkPrimaryColor,
    fontFamily: fontFamily,
  );
  static const _lightSubtitle2 = TextStyle(
    fontSize: 14,
    color: darkPrimaryColor,
    fontFamily: fontFamily,
  );
  static const _lightBodyText2 = TextStyle(
    fontSize: 14,
    color: darkPrimaryColor,
    fontFamily: fontFamily,
  );
  static const _lightBodyText1 = TextStyle(
    fontSize: 12,
    color: darkPrimaryColor,
    fontFamily: fontFamily,
  );
  static const _lightButtonText = TextStyle(
    fontSize: 14,
    color: darkPrimaryColor,
    fontFamily: fontFamily,
  );

  static const _lightCaptionText = TextStyle(
    fontSize: 10,
    color: darkPrimaryColor,
  );

  //* Light Text Theme
  static const TextTheme _lightTextTheme = TextTheme(
    displaySmall: _lightHeadline3,
    headlineMedium: _lightHeadline4,
    headlineSmall: _lightHeadline5,
    titleLarge: _lightHeadline6,
    titleMedium: _lightSubtitle1,
    titleSmall: _lightSubtitle2,
    bodyMedium: _lightBodyText2,
    bodyLarge: _lightBodyText1,
    labelLarge: _lightButtonText,
    bodySmall: _lightCaptionText,
  );

  //* Dark Theme

//* Dark Theme Colors
  static const Color darkPrimaryColor = Color(0xFF002D40);
  static const Color darkPrimaryVariant = Color(0xFFFFFAFA);
  static const Color darkOnPrimaryColor = whitePrimaryColor;
  static const Color darkSecondaryColor = Color(0xFFF96E57);
  static const Color darkSecondaryVariant = Color(0xFFF73E1B);
  static const Color darkOnSecondaryColor = Color(0xFFFFFAFA);

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: darkPrimaryColor,
    colorScheme: const ColorScheme.dark(
      primary: darkPrimaryColor,
      onPrimary: darkOnPrimaryColor,
      secondary: darkSecondaryColor,
      onSecondary: darkOnSecondaryColor,
    ),
    iconTheme: _iconTheme,
    buttonTheme: _buttonThemeData,
    textTheme: _darkTextTheme,
  );

  //* Light Dark Theme Properties
  static const _darkHeadline3 = TextStyle(
    fontSize: 36,
    color: AppColor.white,
  );
  static const _darkHeadline4 = TextStyle(
    fontSize: 30,
    color: AppColor.white,
  );
  static const _darkHeadline5 = TextStyle(
    fontSize: 24,
    color: AppColor.white,
  );
  static const _darkHeadline6 = TextStyle(
    fontSize: 20,
    color: AppColor.white,
  );
  static const _darkSubtitle1 = TextStyle(
    fontSize: 16,
    color: AppColor.white,
  );
  static const _darkSubtitle2 = TextStyle(
    fontSize: 14,
    color: AppColor.white,
  );
  static const _darkBodyText2 = TextStyle(
    fontSize: 14,
    color: AppColor.white,
  );
  static const _darkBodyText1 = TextStyle(
    fontSize: 12,
    color: AppColor.white,
  );
  static const _darkButtonText = TextStyle(
    fontSize: 14,
    color: AppColor.white,
  );

  static const _darkCaptionText = TextStyle(
    fontSize: 10,
    color: AppColor.white,
  );

//* Dark Text Theme
  static const TextTheme _darkTextTheme = TextTheme(
    displaySmall: _darkHeadline3,
    headlineMedium: _darkHeadline4,
    headlineSmall: _darkHeadline5,
    titleLarge: _darkHeadline6,
    titleMedium: _darkSubtitle1,
    titleSmall: _darkSubtitle2,
    bodyMedium: _darkBodyText2,
    bodyLarge: _darkBodyText1,
    labelLarge: _darkButtonText,
    bodySmall: _darkCaptionText,
  );

  //* Icon Theme
  static const Color iconColor = Color(0xFFF96E57);
  static const IconThemeData _iconTheme = IconThemeData(
    color: iconColor,
  );

  //* Button Theme
  static const Color buttonColor = Color(0xFFF73E1B);
  static const ButtonThemeData _buttonThemeData = ButtonThemeData(
    colorScheme: ColorScheme.light(
      primary: buttonColor,
    ),
    disabledColor: whiteSecondaryColor,
  );
}

class AppColor {
  const AppColor._();
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color imageBgColor = Color(0xFF61B0D4);
  static const Color deepOrange = Color(0xFFF73F1C);
  static const Color grey = Color(0xFFE1E4E8);
  static const Color lightBlue = Color(0xFFE7F0F9);
}
