import 'package:flutter/material.dart';

class DeleteListPage extends StatefulWidget {
  const DeleteListPage({super.key});

  @override
  State<DeleteListPage> createState() => _DeleteListPageState();
}

class _DeleteListPageState extends State<DeleteListPage> {
  // Danh sách có thể thay đổi — nằm ở view vì đây là state của màn hình
  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag to Delete'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return Dismissible(
            // key phải unique cho mỗi item — Dismissible dùng key để nhận biết item
            key: ValueKey(item),

            // Chỉ cho phép kéo sang trái
            direction: DismissDirection.endToStart,

            // nền đỏ hiện ra khi kéo — có icon thùng rác
            background: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 24),
              color: Colors.red,
              child: const Icon(Icons.delete, color: Colors.white, size: 28),
            ),

            // onDismissed: gọi khi kéo đủ xa để xóa
            onDismissed: (direction) {
              setState(() {
                _items.removeAt(index); // Xóa item khỏi danh sách
              });
              // Thông báo đã xóa
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$item đã bị xóa')),
              );
            },

            child: ListTile(
              leading: const Icon(Icons.drag_handle),
              title: Text(item),
              subtitle: const Text('Kéo sang trái để xóa'),
            ),
          );
        },
      ),
    );
  }
}