 
import 'package:flutter/material.dart';
import 'home.dart';
import 'cheese.dart';
import 'fries.dart';
import 'tiktok.dart';
import 'facebook.dart';
import 'pizza.dart';

main() {
  runApp(
    MyApp()
  );
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
         '0': (context) => pizza(),
         '1': (context) => Cheese(),
         '2': (context) => Fries(),
         '3': (context) => Twitter(),
         '4': (context) => Facebook(),
      }
    );
  }
}