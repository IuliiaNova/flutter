import 'package:flutter/material.dart';
import 'package:flutter_application_1/infrastructure/models/local_video_model.dart';
import 'package:flutter_application_1/shared/data/local_video_post.dart';
import '../../domain/enteties/video_post.dart';

class DicoverProvider extends ChangeNotifier {
  bool inicialLoading = true;

  List<VideoPost> videos = [];

  Future<void> loadNextPAge() async {
    // await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoEntity())
        .toList();

    videos.addAll(newVideos);
    inicialLoading = false;

    notifyListeners();
  }
}
