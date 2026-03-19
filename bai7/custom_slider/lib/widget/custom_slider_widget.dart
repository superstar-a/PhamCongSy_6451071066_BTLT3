import 'package:flutter/material.dart';

class CustomSliderWidget extends StatefulWidget {
  const CustomSliderWidget({super.key});

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  // Giá trị từ 0.0 đến 1.0 (tỷ lệ phần trăm)
  double _value = 0.0;

  // Chiều rộng thanh track (lấy từ layout)
  double _trackWidth = 0;

  static const double _thumbSize = 28;
  static const double _trackHeight = 6;

  // Chuyển tỷ lệ (0.0-1.0) sang giá trị hiển thị (0-100)
  int get _displayValue => (_value * 100).round();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Giá trị: $_displayValue',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 40),
        // LayoutBuilder để biết chiều rộng thực tế của thanh
        LayoutBuilder(
          builder: (context, constraints) {
            _trackWidth = constraints.maxWidth - _thumbSize;
            // Vị trí trái của nút tròn
            final double thumbLeft = _value * _trackWidth;

            return GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  // Tính vị trí mới, giới hạn trong khoảng [0, _trackWidth]
                  final newLeft = (thumbLeft + details.delta.dx)
                      .clamp(0.0, _trackWidth);
                  _value = newLeft / _trackWidth;
                });
              },
              child: SizedBox(
                width: double.infinity,
                height: _thumbSize,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    // Thanh track nền (màu xám)
                    Positioned.fill(
                      top: (_thumbSize - _trackHeight) / 2,
                      bottom: (_thumbSize - _trackHeight) / 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                    // Phần đã kéo (màu xanh)
                    Positioned(
                      left: 0,
                      top: (_thumbSize - _trackHeight) / 2,
                      bottom: (_thumbSize - _trackHeight) / 2,
                      width: thumbLeft + _thumbSize / 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                    // Nút tròn kéo được
                    Positioned(
                      left: thumbLeft,
                      child: Container(
                        width: _thumbSize,
                        height: _thumbSize,
                        decoration: const BoxDecoration(
                          color: Colors.indigo,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}