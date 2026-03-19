import 'package:flutter/material.dart';
import '../model/tap_message.dart';
import '../widget/tap_box.dart';

class TapDemoPage extends StatelessWidget {
  const TapDemoPage({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(TapMessage.pageTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: TapBox(),
      ),
    );
  }
}
