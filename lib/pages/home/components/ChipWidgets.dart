import 'package:flutter/material.dart';

class ChipWidgets extends StatelessWidget {
  const ChipWidgets({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: const Color(0xFFCED3DE).withOpacity(.1),
      label: Text(
        title,
        style: const TextStyle(
          color: Colors.black45,
        ),
      ),
      shape: const StadiumBorder(side: BorderSide.none),
      elevation: 0,
    );
  }
}
