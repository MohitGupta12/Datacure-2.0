// import 'package:dc/pages/main_screen.dart';
import 'package:dc/pages/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DataCure',
      theme: ThemeData(
        primaryColor: Colors.blue.shade900,
      ),
      home: const SplashScreen(),
    );
  }
}
