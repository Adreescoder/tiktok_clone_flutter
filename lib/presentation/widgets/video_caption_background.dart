import 'package:flutter/material.dart';

class VideoCaptionBackground extends StatelessWidget {
  const VideoCaptionBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
        child: DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black87],
              stops: [0.8, 1.0])),
    ));
  }
}
