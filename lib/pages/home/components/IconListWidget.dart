import 'package:flutter/material.dart';

import 'IconsButtonWidget.dart';

class IconListWidget extends StatelessWidget {
  const IconListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: ListTile(
        title: Row(
          children: [
            IconsButtonWidget(
              image: 'assets/heart.png',
            ),
            Text(
              '5',
              style: TextStyle(color: Colors.grey),
            ),
            IconsButtonWidget(
              image: 'assets/sms.png',
            ),
            Text(
              '5',
              style: TextStyle(color: Colors.grey),
            ),
            IconsButtonWidget(
              image: 'assets/bookmark.png',
            ),
            Text(
              '•••',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
