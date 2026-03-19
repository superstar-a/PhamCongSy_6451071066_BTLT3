import 'package:flutter/material.dart';
import '../widget/long_press_card.dart';

class LongPressPage extends StatelessWidget{
  const LongPressPage({super.key});
  @override
  Widget build (BuildContext context)
{
  return Scaffold(
    appBar: AppBar(
      title: Text('Long Press Page'),
    ),
    body: Center(
      child: LongPressCard(),
    ),
    
  );
}}