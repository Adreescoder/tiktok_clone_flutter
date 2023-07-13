import 'package:flutter/widgets.dart';
import 'package:tik_tok_clone/domain/entities/video_post.dart';
import '../../infrastructure/models/local_video_model.dart';
import '../../shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    videos.addAll(videoPosts
        .map((e) => LocalVideoModel.fromJson(e).toVideoPostEntity())
        .toList());
    initialLoading = false;
    notifyListeners();
  }
}
