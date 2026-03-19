import 'package:flutter/material.dart';
import '../view/long_press_page.dart';

class MyApp extends StatelessWidget {
const MyApp ({super.key});

@override
Widget build(BuildContext context){
  return MaterialApp(
    title: 'Long Press Demo',
    home: const LongPressPage(),
  );
}
}