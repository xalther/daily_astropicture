import 'package:daily_astropic/astro_picture/data/remote/remote_data_source.dart';
import 'package:daily_astropic/astro_picture/models/picture.dart';

class DataRepository {
  final RemoteDataSource _remoteDataSource;
  DataRepository(this._remoteDataSource);

  Future<Picture> fetchData() async {
    try {
      final response = await _remoteDataSource.fetchData();
      final data = Picture.fromJson(response);
      return data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
