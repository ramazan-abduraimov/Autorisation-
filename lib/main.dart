import 'package:authorization/auth/HomePage.dart';
import 'package:authorization/auth/bashkybet.dart';
import 'package:authorization/mai_knigi/page_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageKnigi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
