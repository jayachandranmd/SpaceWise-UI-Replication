import "package:flutter/material.dart";
import "package:hexcolor/hexcolor.dart";
import 'package:spacewise/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: HexColor("#22016d"),
        useMaterial3: true,
        textTheme: const TextTheme(
                titleMedium: TextStyle(fontSize: 24),
                titleLarge: TextStyle(fontSize: 28))
            .apply(bodyColor: Colors.black, displayColor: Colors.black),
        colorScheme: ColorScheme.fromSeed(
          seedColor: HexColor("#22016d"),
          brightness: Brightness.light,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
