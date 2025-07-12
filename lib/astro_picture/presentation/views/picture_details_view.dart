import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/di/service_locator.dart';
import '../widgets/about_picture.dart';
import '../widgets/media_content.dart';
import '../bloc/astro_picture_cubit/astro_picture_cubit.dart';

class PictureDetailsView extends StatelessWidget {
  const PictureDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
      ),
    );
  }

  BlocProvider<AstroPictureCubit> buildBody() {
    return BlocProvider(
      create: (_) => sl.get<AstroPictureCubit>()..fetchData(),
      child: BlocBuilder<AstroPictureCubit, AstroPictureState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (picture) => Column(
              children: [
                MediaContent(picture: picture),
                AboutPicture(picture: picture),
              ],
            ),
            error: (message) => Center(
              child: Text(
                'Something went wrong: $message',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
