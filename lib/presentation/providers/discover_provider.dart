import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/repositories/video_posts_repository.dart';
import '../../domain/enteties/video_post.dart';

class DicoverProvider extends ChangeNotifier {
  final VideoPostRepository videosRepository;

  bool inicialLoading = true;

  List<VideoPost> videos = [];

  DicoverProvider({required this.videosRepository});

  Future<void> loadNextPAge() async {
    final newVideos = await videosRepository.getTrendingVideosbyPage(1);

    videos.addAll(newVideos);
    inicialLoading = false;
    notifyListeners();
  }
}
