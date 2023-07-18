import 'package:tik_tok_clone/domain/entities/video_post.dart';

abstract class VideoPostsDatsources {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  Future<List<VideoPost>> getTrendingVideosByUser(String userId);
}
