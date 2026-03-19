import 'package:flutter/material.dart';

class DraggableCircle extends StatefulWidget {
  const DraggableCircle({super.key});

  @override
  State<DraggableCircle> createState() => _DraggableCircleState();
}

class _DraggableCircleState extends State<DraggableCircle> {
  // Vị trí hiện tại của hình tròn (góc trên-trái)
  double _left = 150;
  double _top = 300;

  // Kích thước hình tròn
  static const double _size = 80;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _left,
      top: _top,
      child: GestureDetector(
        // onPanUpdate: gọi liên tục khi ngón tay di chuyển
        // delta = lượng di chuyển so với vị trí trước đó (không phải toạ độ tuyệt đối)
        onPanUpdate: (DragUpdateDetails details) {
          setState(() {
            _left += details.delta.dx; // Cộng thêm độ lệch ngang
            _top  += details.delta.dy; // Cộng thêm độ lệch dọc
          });
        },
        child: Container(
          width: _size,
          height: _size,
          decoration: const BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle, // Vẽ hình tròn thay vì hình chữ nhật
          ),
        ),
      ),
    );
  }
}