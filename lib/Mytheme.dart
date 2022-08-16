import 'package:flutter/material.dart';

class MyTheme {
  static final Color maincolor = Color(0xFFB7935F);
  static final ThemeData lighttheme = ThemeData(
      primaryColor: maincolor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 30, color: Colors.black)),
      textTheme: TextTheme(headline4: TextStyle(color: Colors.black)));
}
