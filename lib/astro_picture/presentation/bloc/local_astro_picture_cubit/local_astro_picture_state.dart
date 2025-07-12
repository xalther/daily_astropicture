part of 'local_astro_picture_cubit.dart';

@freezed
class LocalAstroPictureState with _$LocalAstroPictureState {
  const factory LocalAstroPictureState.loading() = _Loading;
  const factory LocalAstroPictureState.loaded(List<Picture> favourites) = _Loaded;
  const factory LocalAstroPictureState.empty() = _Empty;
  const factory LocalAstroPictureState.error() = _Error;
}
