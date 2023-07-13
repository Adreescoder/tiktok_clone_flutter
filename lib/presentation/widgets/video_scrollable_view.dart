import 'package:flutter/material.dart';
import 'package:tik_tok_clone/domain/entities/video_post.dart';
import 'package:tik_tok_clone/presentation/widgets/video_buttons.dart';

import 'full_screen_player.dart';

class VideoCreollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoCreollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
                child: FullScreenPlayer(
                    videoUrl: video.videoUrl, caption: video.caption)),
            Positioned(bottom: 40, right: 20, child: VideoButtons(video: video))
          ],
        );
      },
    );
  }
}
