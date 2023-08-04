import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/providers/discover_provider.dart';
import 'package:flutter_application_1/presentation/widgets/shared/video_scrollable.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DicoverProvider>();

    return Scaffold(
        body: discoverProvider.inicialLoading
            ? const Center(
                child: CircularProgressIndicator(
                strokeWidth: 2,
              ))
            : VideoScrollableView(videos: discoverProvider.videos));
  }
}
