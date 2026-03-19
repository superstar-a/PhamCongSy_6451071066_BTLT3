import 'package:flutter/material.dart';
import '../widget/draggable_circle.dart';

class DragPage extends StatelessWidget {
  const DragPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag Circle'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // Stack cho phép các widget đè lên nhau và đặt theo toạ độ tuyệt đối
      body: const Stack(
        children: [
          DraggableCircle(),
        ],
      ),
    );
  }
}