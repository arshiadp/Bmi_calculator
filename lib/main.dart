import 'package:bmi_calculator/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFFDAFD84),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFFDAFD84),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF0A0E21),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      themeMode: ThemeMode.light,
      home: SplashScreen(),
    );
  }
}
 //theme: ThemeData.dark().copyWith(
      //   primaryColor: const Color(0xFFDAFD84), //0xFF0A0E21

      //   scaffoldBackgroundColor: Color(0xFFFFFFFF), //0xFF0A0E21
      //   //textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.blue)),
      // ),
      // darkTheme: ThemeData.dark().copyWith(
      //   primaryColor: const Color(0xFF0A0E21), //0xFF0A0E21
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      // ), //0xFF0A0E21,