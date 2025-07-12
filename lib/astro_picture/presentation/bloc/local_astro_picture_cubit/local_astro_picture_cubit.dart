import 'package:daily_astropic/astro_picture/data/local/picture_dao.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/picture.dart';

part 'local_astro_picture_state.dart';
part 'local_astro_picture_cubit.freezed.dart';

class LocalAstroPictureCubit extends Cubit<LocalAstroPictureState> {
  final PictureDao _pictureDao;
  LocalAstroPictureCubit(this._pictureDao) : super(const LocalAstroPictureState.loading());

  void getFavourites() {
    emit(const LocalAstroPictureState.loading());
    final favourites = _pictureDao.getFavourites;
    if (favourites.isNotEmpty) {
      emit(LocalAstroPictureState.loaded(favourites));
    } else {
      emit(const LocalAstroPictureState.empty());
    }
  }

  Future<void> addFavourite(Picture picture) async {
    try {
      emit(const LocalAstroPictureState.loading());
      await _pictureDao.addFavourite(picture);
      getFavourites();
    } catch (e) {
      emit(const LocalAstroPictureState.error());
    }
  }

  Future<void> deleteFavourite(Picture picture) async {
    try {
      emit(const LocalAstroPictureState.loading());
      await _pictureDao.deleteFavourite(picture);
      getFavourites();
    } catch (e) {
      emit(const LocalAstroPictureState.error());
    }
  }

  Future<void> deleteAllFavourites() async {
    try {
      emit(const LocalAstroPictureState.loading());
      await _pictureDao.deleteAllFavourites();
      getFavourites();
    } catch (e) {
      emit(const LocalAstroPictureState.error());
    }
  }
}
