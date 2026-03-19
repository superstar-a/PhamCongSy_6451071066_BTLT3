

import 'package:flutter/material.dart';
import '../widget/color-box.dart';
import '../model/color_model.dart';

class ColorTogglePage extends StatelessWidget {
  const ColorTogglePage ({super.key});

  @override 
  Widget build(BuildContext context){

  return Scaffold(
    appBar: AppBar(
      title: const Text(ColorModel.pageTitle),

    ),
    body: const Center(
      child: ColorBox(),
    ),
  );
}
  }