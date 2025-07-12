import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:daily_astropic/astro_picture/models/picture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:daily_astropic/astro_picture/data/remote/data_repository.dart';

part 'astro_picture_cubit.freezed.dart';
part 'astro_picture_state.dart';

class AstroPictureCubit extends Cubit<AstroPictureState> {
  final DataRepository _dataRepository;
  AstroPictureCubit(
    this._dataRepository,
  ) : super(const AstroPictureState.loading());

  Future<void> fetchData() async {
    try {
      emit(const AstroPictureState.loading());
      final data = await _dataRepository.fetchData();
      emit(AstroPictureState.loaded(data));
    } catch (e) {
      emit(AstroPictureState.error(e.toString()));
    }
  }
}
