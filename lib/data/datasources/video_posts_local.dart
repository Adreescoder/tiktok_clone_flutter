import 'package:tik_tok_clone/domain/datasources/video_posts_datasource.dart';
import 'package:tik_tok_clone/domain/entities/video_post.dart';

import '../../infrastructure/models/local_video_model.dart';
import '../../shared/data/local_video_posts.dart';

class VideoPostsDatasourceImpl implements VideoPostsDatsources {
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    final List<VideoPost> videos = videoPosts
        .map((e) => LocalVideoModel.fromJson(e).toVideoPostEntity())
        .toList();
    return videos;
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
