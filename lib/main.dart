import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/theme/app_theme.dart';
import 'package:flutter_application_1/infrastructure/datasourses/local_video_datasourse_impl.dart';
import 'package:flutter_application_1/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:flutter_application_1/presentation/providers/discover_provider.dart';
import 'package:flutter_application_1/presentation/screens/discover/discover_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostsRepositoryImplementation(
        videosDatasourse: LocalVideoDatasourse());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) =>
                DicoverProvider(videosRepository: videoPostRepository)
                  ..loadNextPAge()),
      ],
      child: MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: const DiscoverScreen()),
    );
  }
}
