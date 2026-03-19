import 'package:flutter/material.dart';
import '../model/image_model.dart';
import '../widget/image_viewer.dart';

class SwipePage extends StatelessWidget {
  const SwipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipe Image'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // PageView: widget có sẵn cơ chế swipe giữa các trang
      // Đơn giản hơn nhiều so với GestureDetector thủ công
      body: ImageViewer(images: ImageModel.items),
    );
  }
}