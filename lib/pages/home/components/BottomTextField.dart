import 'package:flutter/material.dart';

class BottomTextField extends StatelessWidget {
  const BottomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.image_outlined,
              color: Colors.grey,
            ),
          ),
        ),
        const Expanded(
          flex: 8,
          child: TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                hintText: '댓글을 남겨주세요.'),
          ),
        ),
        const Expanded(
          flex: 1,
          child: Text(
            '등록',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
