import 'package:flutter/material.dart';

class TapHereButton extends StatefulWidget{
  const TapHereButton ({super.key});
@override
  State<TapHereButton> createState() => _TapHereButtonState();

}

class _TapHereButtonState extends State<TapHereButton> {
  int count = 0;

  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _incrementCounter,
      child: Text('Tap here: $count'),
    );
  }

}