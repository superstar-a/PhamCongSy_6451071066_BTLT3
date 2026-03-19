import 'package:flutter/material.dart';
import '../model/color_model.dart';

class ColorBox extends StatefulWidget{
  const ColorBox ({super.key});
  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox>{
  bool _isblue = true;

  void _toggleColor(){
    setState(() {
      _isblue = !_isblue;
    });

  }
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onDoubleTap: _toggleColor,
      child: Container(
        width: ColorModel.boxSize,
        height: ColorModel.boxSize,
        color: _isblue ? ColorModel.A : ColorModel.B,
      ),
    );
  }
}