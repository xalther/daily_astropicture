import 'package:daily_astropic/env/env.dart';
import 'package:dio/dio.dart';

class RemoteDataSource {
  Future<dynamic> fetchData() async {
    try {
      final response = await Dio().get('https://api.nasa.gov/planetary/apod?api_key=$_apiKey&thumbs=true');
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }

  static final _apiKey = Env.key;
}
