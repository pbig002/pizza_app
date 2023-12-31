import 'package:flutter/material.dart';
import 'package:pizza_app_byme/screens/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: debugDisableShadows,
      home: HomePage(),
    );
  }
}
