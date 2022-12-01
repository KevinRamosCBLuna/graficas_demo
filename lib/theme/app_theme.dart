import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.cyan;

  static final ThemeData darkTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: Colors.cyan,
      //App bar
      appBarTheme: const AppBarTheme(color: primary, elevation: 0, centerTitle: true),
      //Color botones
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(backgroundColor: primary)),

      //floating action button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: primary, elevation: 5),

      //elevatebutton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: primary, shape: const StadiumBorder(), elevation: 0),
      ),
      //Imput decoration
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: primary), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: primary), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))),
        border: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))),
      ));
}
