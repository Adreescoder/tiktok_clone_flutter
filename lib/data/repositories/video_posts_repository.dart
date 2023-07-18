import 'package:tik_tok_clone/domain/datasources/video_posts_datasource.dart';
import 'package:tik_tok_clone/domain/entities/video_post.dart';
import 'package:tik_tok_clone/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDatsources datasource;

  VideoPostsRepositoryImpl({required this.datasource});

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return datasource.getTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
