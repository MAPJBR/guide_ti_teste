import 'package:flutter/material.dart';

abstract class Style {
  static const primaryColor = Color(0xFF133A3A);
  static const secundaryColor = Color(0xFFA4D8DE);
  static const cardColor = Color(0xFFF1F4F8);
  static const buttonBackgroundColor = Color(0xFF57636C);
  static const primaryBackgroundColor = Color(0xFFF0F5F6);
  static const textContent = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Lexend Deca',
    color: Colors.white,
    fontSize: 12,
  );
  static const textTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Lexend Deca',
    color: Colors.black,
    fontSize: 16,
  );
}
