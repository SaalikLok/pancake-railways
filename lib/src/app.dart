import 'package:flutter/material.dart';

import 'screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pancake Railways',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomePage(title: 'Pancake Railways'),
    );
  }
}