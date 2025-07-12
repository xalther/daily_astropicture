part of 'astro_picture_cubit.dart';

@freezed
class AstroPictureState with _$AstroPictureState {
  const factory AstroPictureState.loading() = _Loading;
  const factory AstroPictureState.loaded(Picture picture) = _Loaded;
  const factory AstroPictureState.error(String message) = _Error;
}
