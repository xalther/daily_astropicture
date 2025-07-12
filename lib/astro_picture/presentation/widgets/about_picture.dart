import 'package:daily_astropic/utils/extensions/date_format_extension.dart';
import 'package:daily_astropic/astro_picture/presentation/bloc/local_astro_picture_cubit/local_astro_picture_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/picture.dart';

class AboutPicture extends StatelessWidget {
  final Picture picture;
  const AboutPicture({
    super.key,
    required this.picture,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      picture.title,
                      style: const TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  BlocBuilder<LocalAstroPictureCubit, LocalAstroPictureState>(
                    builder: (context, state) {
                      bool isFavourite = false;
                      state.maybeWhen(
                        loaded: (favourites) {
                          isFavourite = favourites.contains(picture);
                        },
                        orElse: () {},
                      );
                      return IconButton(
                        iconSize: 28,
                        onPressed: () async {
                          String message;
                          if (isFavourite) {
                            await context.read<LocalAstroPictureCubit>().deleteFavourite(picture);
                            message = 'Deleted from favourites';
                          } else {
                            await context.read<LocalAstroPictureCubit>().addFavourite(picture);
                            message = 'Added to favourites';
                          }
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).removeCurrentSnackBar();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: const Color(0xFF111111),
                                content: Text(
                                  message,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                        icon: Icon(
                          isFavourite ? Icons.favorite : Icons.favorite_outline,
                        ),
                      );
                    },
                  ),
                ],
              ),
              Text(
                picture.date.formatDate(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  letterSpacing: 3,
                ),
              ),
              const SizedBox(height: 48),
              Text(
                picture.explanation,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                  fontSize: 12,
                  wordSpacing: 3,
                  height: 1.5,
                ),
              ),
              if (picture.copyright != null)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      'credit: ${picture.copyright!.replaceAll('\n', '')}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
