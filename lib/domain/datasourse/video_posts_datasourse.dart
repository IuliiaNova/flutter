import 'package:flutter_application_1/domain/enteties/video_post.dart';

abstract class VideoPostDatasourse {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  Future<List<VideoPost>> getFavousiteVideoByUser(String userID);
}
