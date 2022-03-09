import 'package:belajarflutter/home.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenView(
        navigateRoute: const Home(),
        duration: 5000,
        imageSrc: 'belajarflutter.png',
        backgroundColor: Colors.white70,
      ),
    );
  }
}
