import 'package:flutter/material.dart';
import 'package:bexel_assesment/core/app_theme/app_colors_palate.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primaryColor,
        accentColor: accentColor,
        cardColor: cardColor,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        // colorScheme: ColorScheme(
        // background: backgroundColor,
        // onBackground: onBackgroundColor,
        // onError: onErrorColor,
        // onPrimary: onPrimaryColor,
        // onSecondary: onSecondaryColor,
        // onSurface: onPrimaryColor,
        // surface: onSurfaceColor,
        // errorContainer:  ,
        //   brightness: Brightness.light,
        //   secondary: accentColor,
        //   primary: primaryColor,
        //   // error: errorColor,
        // ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: onPrimaryColor),
          bodyText1: TextStyle(color: onPrimaryColor),
        ),
        // dividerColor: dividerColor,
      );
}
