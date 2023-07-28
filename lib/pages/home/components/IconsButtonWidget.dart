import 'package:flutter/material.dart';

class IconsButtonWidget extends StatelessWidget {
  const IconsButtonWidget({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(image),
    );
  }
}
