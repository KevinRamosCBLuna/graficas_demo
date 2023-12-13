import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0XFF345694),
      secondaryColor = Color(0XFFB2333A),
      tertiaryColor = Color(0xFF102047),
      alternate = Color(0XFF173938),
      primarytext = Colors.black,
      secundarytext = Colors.white,
      primaryBackground = Color(0xFFFFFFFF),
      secondaryBackground = Color(0XFFF7F6F6);
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
      ),
      hintText = TextStyle(
        fontSize: 13,
        fontFamily: 'Gotham-Light',
        color: Colors.grey,
      ),
      contenidoTablas = TextStyle(
        fontSize: 18,
        fontFamily: 'Gotham-Light',
        fontWeight: FontWeight.w400,
        color: AppTheme.primarytext,
      ),
      encabezadoTablas = TextStyle(
        fontSize: 22,
        fontFamily: 'Gotham-Regular',
        fontWeight: FontWeight.w600,
        color: AppTheme.primaryBackground,
      );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: primary,
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
    ),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //color primario
    primaryColor: primary,
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
    ),
  );
}
