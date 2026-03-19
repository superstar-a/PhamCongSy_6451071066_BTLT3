import 'package:flutter/material.dart';
import '../view/tap_demo-page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'Tap Demo',
      theme: ThemeData(
        colorScheme: ColorScheme(brightness: Brightness.light, primary: Colors.blue, onPrimary: Colors.white, secondary: Colors.green, onSecondary: Colors.white, error: Colors.red, onError: Colors.white, surface: Colors.grey, onSurface: Colors.black)
      ),
      home: const TapDemoPage(),
    );
  }
}