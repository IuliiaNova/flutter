import 'package:flutter_application_1/domain/enteties/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getTrendingVideosbyPage(int page);
  Future<List<VideoPost>> getFavousiteVideoByUser(String userID);
}
