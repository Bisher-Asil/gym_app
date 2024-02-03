import 'package:flutter/material.dart';

class CustomAppTheme {
  CustomAppTheme._internal();

  static final CustomAppTheme instance = CustomAppTheme._internal();

  ThemeData lightThemeData() => ThemeData.light().copyWith(
    primaryColor: const Color.fromARGB(255, 220, 222, 225),
    scaffoldBackgroundColor: const Color.fromARGB(255, 220, 222, 225),
    canvasColor: Colors.grey.shade200,
    inputDecorationTheme: const InputDecorationTheme(
      suffixIconColor: Colors.grey,
      border: UnderlineInputBorder(
        borderSide: BorderSide(style: BorderStyle.none, width: 0),
      ),
    ),
    textSelectionTheme:
    const TextSelectionThemeData(cursorColor: Colors.black),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.grey,
      ),
    ),
  );

  ThemeData darkThemeData() => ThemeData.dark().copyWith(
    primaryColor: const Color.fromARGB(255, 40, 44, 49),
    scaffoldBackgroundColor: const Color.fromARGB(255, 40, 44, 49),
    canvasColor: const Color.fromARGB(255, 23, 26, 29),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.grey.shade700,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      suffixIconColor: Colors.grey,
      border: UnderlineInputBorder(
        borderSide: BorderSide(style: BorderStyle.none, width: 0),
      ),
    ),
    textSelectionTheme:
    const TextSelectionThemeData(cursorColor: Colors.grey),
  );

  bool isAppInDarkMode(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}