// Model chứa danh sách đường dẫn hình ảnh và màu đại diện
import 'package:flutter/material.dart';

class ImageModel {
  final String label;
  final Color color;
  final IconData icon;

  const ImageModel({
    required this.label,
    required this.color,
    required this.icon,
  });

  // Danh sách 3 "hình" (dùng màu và icon thay ảnh thật vì không có asset)
  static const List<ImageModel> items = [
    ImageModel(label: 'Hình 1', color: Colors.redAccent,  icon: Icons.image),
    ImageModel(label: 'Hình 2', color: Colors.greenAccent, icon: Icons.photo),
    ImageModel(label: 'Hình 3', color: Colors.blueAccent,  icon: Icons.photo_library),
  ];
}