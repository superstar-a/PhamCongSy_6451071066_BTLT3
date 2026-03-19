import 'package:flutter/material.dart';
import '../widget/touch_area.dart';

class PointerPage extends StatelessWidget {
  const PointerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pointer Events'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const TouchArea(),
    );
  }
}