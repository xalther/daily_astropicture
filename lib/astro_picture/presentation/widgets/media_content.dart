import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/picture.dart';
import 'video_player.dart';

class MediaContent extends StatelessWidget {
  final Picture picture;
  const MediaContent({
    super.key,
    required this.picture,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        picture.thumbnailUrl != null
            ? VideoPlayer(url: picture.url)
            : CachedNetworkImage(
                imageUrl: picture.hdurl!,
                fit: BoxFit.cover,
                placeholder: (context, url) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
        const BackButton(),
      ],
    );
  }
}
