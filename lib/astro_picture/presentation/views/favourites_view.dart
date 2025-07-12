import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/local_astro_picture_cubit/local_astro_picture_cubit.dart';
import '../widgets/favourites_list.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Favourites'),
        centerTitle: true,
      ),
      body: _buildBody(),
    );
  }

  BlocBuilder<LocalAstroPictureCubit, LocalAstroPictureState> _buildBody() {
    return BlocBuilder<LocalAstroPictureCubit, LocalAstroPictureState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (favourites) {
            return FavouritesList(favourites: favourites);
          },
          empty: () => const Center(
            child: Text(
              'No favourites',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          error: () => const Center(
            child: Text(
              'Something went wrong',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}
