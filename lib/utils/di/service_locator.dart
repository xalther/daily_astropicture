import 'package:daily_astropic/astro_picture/data/local/picture_dao.dart';
import 'package:daily_astropic/astro_picture/data/remote/data_repository.dart';
import 'package:daily_astropic/astro_picture/data/remote/remote_data_source.dart';
import 'package:daily_astropic/astro_picture/models/picture.dart';
import 'package:daily_astropic/astro_picture/presentation/bloc/astro_picture_cubit/astro_picture_cubit.dart';
import 'package:daily_astropic/astro_picture/presentation/bloc/local_astro_picture_cubit/local_astro_picture_cubit.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeServiceLocator() async {
  _setupRemoteDataSource();
  _setupDataRepository();
  _setupPictureDao();
  _setupRemoteBloc();
  _setupLocalBloc();
  await _setupHive();
}

void _setupRemoteDataSource() {
  sl.registerLazySingleton(() => RemoteDataSource());
}

void _setupDataRepository() {
  sl.registerLazySingleton(() => DataRepository(sl.get<RemoteDataSource>()));
}

void _setupPictureDao() {
  sl.registerLazySingleton(() => PictureDao());
}

void _setupRemoteBloc() {
  sl.registerFactory(() => AstroPictureCubit(sl.get<DataRepository>()));
}

void _setupLocalBloc() {
  sl.registerFactory(() => LocalAstroPictureCubit(sl.get<PictureDao>()));
}

Future<void> _setupHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PictureImplAdapter());
  await Hive.openBox('favourites');
}
