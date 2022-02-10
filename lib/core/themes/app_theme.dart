import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appDarkTheme() {
    return ThemeData(
      primaryColor: Colors.deepOrange[900],
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(backgroundColor: Colors.deepOrange[900]),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.deepOrange,
        selectionColor: Colors.orange,
        selectionHandleColor: Colors.orange,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        iconColor: Colors.deepOrange,
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 1.5),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 1.5),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 1.5),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            gapPadding: 1.5),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        floatingLabelStyle: TextStyle(color: Colors.orange),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          side: MaterialStateProperty.all(
              const BorderSide(width: 1.0, color: Colors.deepOrange)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
          textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(color: Colors.deepOrange)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(color: Colors.white)),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
      )),
      textTheme: const TextTheme(
        button: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
        caption: TextStyle(color: Colors.white),
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        headline3: TextStyle(color: Colors.white),
        headline4: TextStyle(color: Colors.white),
        headline5: TextStyle(color: Colors.white),
        headline6: TextStyle(color: Colors.white),
        overline: TextStyle(color: Colors.white),
        subtitle1: TextStyle(color: Colors.white),
        subtitle2: TextStyle(color: Colors.white),
      ),
      scrollbarTheme: const ScrollbarThemeData(
        isAlwaysShown: false,
        radius: Radius.circular(1.0),
      ),
    );
  }

  static ThemeData appLightTheme() {
    return ThemeData(
      primaryColor: Colors.deepOrange[900],
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(backgroundColor: Colors.deepOrange[900]),
      inputDecorationTheme: const InputDecorationTheme(
        iconColor: Colors.deepOrange,
        labelStyle: TextStyle(color: Colors.black),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 1.5),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 1.5),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 1.5),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            gapPadding: 1.5),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        floatingLabelStyle: TextStyle(color: Colors.orange),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          side: MaterialStateProperty.all(
              const BorderSide(width: 1.0, color: Colors.deepOrange)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
          textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(color: Colors.deepOrange)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(color: Colors.white)),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
      )),
      scrollbarTheme: const ScrollbarThemeData(
        isAlwaysShown: false,
        radius: Radius.circular(1.0),
      ),
    );
  }
}
