import 'package:flutter/material.dart';
import 'package:internship/home.dart';

void main() {
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internship',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

