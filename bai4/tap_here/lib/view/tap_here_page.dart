import 'package:flutter/material.dart';
import 'package:tap_here/widget/tap_here_button.dart';

class TapDemoPage extends StatelessWidget {
  const TapDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Demo'),
      ),
      body: const Center(
        child: TapHereButton(),
      ),
    );
  }
}
