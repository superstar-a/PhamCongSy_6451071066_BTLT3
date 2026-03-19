import 'package:flutter/material.dart';
import '../view/color_toggle_page.dart';

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Double Tap Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
      ),
      home: const ColorTogglePage(),
    );
  }
}