import 'package:flutter/material.dart';
import 'package:praktikum_mobile/screens/home_screen.dart';
import 'package:praktikum_mobile/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        'home': (context) => HomeScreen()
      },
    );
  }
}
