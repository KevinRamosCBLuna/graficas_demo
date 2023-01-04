import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF2E6FC5), primarytext = Colors.black, secundarytext = Colors.white;
  static const TextStyle primarStyle = TextStyle(
        fontSize: 16,
        color: primarytext,
        fontWeight: FontWeight.bold,
      ),
      secundaryStyle = TextStyle(
        fontSize: 16,
        color: secundarytext,
      ),
      secundaryStylev2 = TextStyle(
        fontSize: 16,
        color: secundarytext,
        fontWeight: FontWeight.bold,
      );

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
