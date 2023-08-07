import 'package:flutter_application_1/domain/datasourse/video_posts_datasourse.dart';
import 'package:flutter_application_1/domain/enteties/video_post.dart';
import '../../shared/data/local_video_post.dart';
import '../models/local_video_model.dart';

class LocalVideoDatasourse implements VideoPostDatasourse {
  @override
  Future<List<VideoPost>> getFavousiteVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoEntity())
        .toList();

    return newVideos;
  }
}
