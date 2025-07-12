import 'package:daily_astropic/astro_picture/models/picture.dart';
import 'package:hive/hive.dart';

class PictureDao {
  final _box = Hive.box('favourites');

  String _generateUniqueKey(Picture picture) {
    return '${picture.date}_${picture.title}';
  }

  Future<void> addFavourite(Picture picture) async {
    final key = _generateUniqueKey(picture);
    await _box.put(key, picture);
  }

  Future<void> deleteFavourite(Picture picture) async {
    final key = _generateUniqueKey(picture);
    await _box.delete(key);
  }

  Future<void> deleteAllFavourites() async => await _box.clear();

  List<Picture> get getFavourites => _box.values.toSet().toList().cast<Picture>();
}
