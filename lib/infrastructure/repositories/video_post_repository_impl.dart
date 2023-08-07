import 'package:flutter_application_1/domain/enteties/video_post.dart';

import '../../domain/datasourse/video_posts_datasourse.dart';
import '../../domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImplementation implements VideoPostRepository {
  final VideoPostDatasourse videosDatasourse;

  VideoPostsRepositoryImplementation({required this.videosDatasourse});

  @override
  Future<List<VideoPost>> getFavousiteVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosbyPage(int page) {
    return videosDatasourse.getTrendingVideosByPage(page);
  }
}
