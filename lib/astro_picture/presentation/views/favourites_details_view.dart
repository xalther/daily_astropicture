import 'package:daily_astropic/astro_picture/models/picture.dart';
import 'package:daily_astropic/astro_picture/presentation/widgets/about_picture.dart';
import 'package:daily_astropic/astro_picture/presentation/widgets/media_content.dart';
import 'package:flutter/material.dart';

class FavouritesDetailsView extends StatelessWidget {
  final Picture picture;
  const FavouritesDetailsView({
    super.key,
    required this.picture,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            MediaContent(picture: picture),
            AboutPicture(picture: picture),
          ],
        ),
      ),
    );
  }
}
