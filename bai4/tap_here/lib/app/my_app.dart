import 'package:flutter/material.dart';
import 'package:tap_here/view/tap_here_page.dart';

class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'tap_count',
      debugShowCheckedModeBanner: false,
    theme: ThemeData(),
    home: const TapDemoPage(),
    );
  }
}