import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste_guide_ti/common/style/style_guide.dart';

final lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    centerTitle: true,
    foregroundColor: Style.primaryColor,
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide:
          const BorderSide(width: 1, color: Style.primaryBackgroundColor),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFFFAFAFA),
  tabBarTheme: const TabBarTheme(labelColor: Style.secundaryColor),
  textTheme: GoogleFonts.nunitoSansTextTheme(),
);
