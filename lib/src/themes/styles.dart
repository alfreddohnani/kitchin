import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      title: TextStyle(
        fontFamily: 'Circular Std Black Regular',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF292F33),
      ),
       subtitle: TextStyle(
        fontFamily: 'Circular Std Black Regular',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Color(0xFF000000),
      ),
      caption: TextStyle(
        fontFamily: 'Circular Std Black Regular',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF425398),
      ),
      subhead: TextStyle(
        fontFamily: 'Circular Std Black Regular',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF425398),
      ),
      body1: TextStyle(
        fontFamily: 'Circular Std Black Regular',
        fontSize: 17,
        fontWeight: FontWeight.normal,
        color: Color(0xFF425398),
      ),
    ),
  );
}