import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/enteties/video_post.dart';

import '../../../config/helpers/human_formats.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButtom(
          value: video.likes,
          iconData: Icons.remove_red_eye_outlined,
        ),
        _CustomIconButtom(
          value: video.likes,
          iconColor: Colors.red,
          iconData: Icons.favorite,
        )
      ],
    );
  }
}

class _CustomIconButtom extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButtom(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {}, icon: Icon(iconData, color: color, size: 30)),
        Text(HumanFormats.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}
