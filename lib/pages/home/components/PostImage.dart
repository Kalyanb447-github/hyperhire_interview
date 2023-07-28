import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Image.asset(
            'assets/post.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Image.asset(
            'assets/dots.png',
            fit: BoxFit.none,
          ),
        ),
      ],
    );
  }
}
