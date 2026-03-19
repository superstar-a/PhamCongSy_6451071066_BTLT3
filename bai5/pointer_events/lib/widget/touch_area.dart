import 'package:flutter/material.dart';

// StatefulWidget vì toạ độ (x, y) thay đổi mỗi khi chạm
class TouchArea extends StatefulWidget {
  const TouchArea({super.key});

  @override
  State<TouchArea> createState() => _TouchAreaState();
}

class _TouchAreaState extends State<TouchArea> {
  // Lưu toạ độ con trỏ, ban đầu null = chưa chạm lần nào
  double? _x;
  double? _y;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Listener khác GestureDetector: bắt sự kiện ở mức thấp hơn (pointer level)
        // onPointerDown: kích hoạt ngay khi ngón tay chạm xuống màn hình
        Listener(
          onPointerDown: (PointerDownEvent event) {
            setState(() {
              // event.localPosition: toạ độ trong vùng widget hiện tại
              _x = event.localPosition.dx; // dx = trục hoành (ngang)
              _y = event.localPosition.dy; // dy = trục tung (dọc)
            });
          },
          child: Container(
            width: double.infinity, // Chiếm hết chiều ngang màn hình
            height: 400,
            color: Colors.teal.shade100,
            child: const Center(
              child: Text(
                'Chạm vào đây',
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
          ),
        ),
        const SizedBox(height: 32),
        // Hiển thị toạ độ — nếu chưa chạm thì hiện 'Chưa có'
        Text(
          _x == null
              ? 'Chưa chạm vào màn hình'
              : 'x: ${_x!.toStringAsFixed(1)},  y: ${_y!.toStringAsFixed(1)}',
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}