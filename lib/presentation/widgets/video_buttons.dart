import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_clone/config/helpers/human_format.dart';

import '../../domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes,
          color: Colors.red,
          iconData: Icons.favorite,
        ),
        _CustomIconButton(
          value: video.views,
          color: Colors.white,
          iconData: Icons.remove_red_eye_outlined,
        ),
        SpinPerfect(
            infinite: true,
            duration: const Duration(seconds: 5),
            child: const _CustomIconButton(
              value: 0,
              color: Colors.white,
              iconData: Icons.play_circle_outline,
            ))
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton(
      {required this.value, required this.iconData, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: color,
              size: 30,
            )),
        if (value > 0) Text(HumanFormat.humanReadableNumber(value.toDouble()))
      ],
    );
  }
}
