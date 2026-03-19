import 'package:flutter/material.dart';

class ColorGrid extends StatefulWidget {
  const ColorGrid({super.key});

  @override
  State<ColorGrid> createState() => _ColorGridState();
}

class _ColorGridState extends State<ColorGrid> {
  // Danh sách 9 màu tương ứng với 9 ô trong lưới 3x3
  // Ban đầu tất cả là màu xám
  final List<Color> _colors = List.filled(9, Colors.grey.shade300);

  // Mảng màu tùy chọn để đổi qua khi tap
  final List<Color> _palette = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // Lưới 3 cột, khoảng cách giữa các ô là 8
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              // Mỗi lần tap đổi sang màu tương ứng trong _palette
              // Nếu đã tô rồi thì reset về xám
              if (_colors[index] == Colors.grey.shade300) {
                _colors[index] = _palette[index];
              } else {
                _colors[index] = Colors.grey.shade300;
              }
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: _colors[index],
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
      },
    );
  }
}