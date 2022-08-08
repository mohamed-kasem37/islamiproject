import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: { HomeScreen.routname: (_) => HomeScreen(),

      },
      initialRoute: HomeScreen.routname,
    );
  }

}