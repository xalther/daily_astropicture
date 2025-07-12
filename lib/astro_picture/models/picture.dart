import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'picture.freezed.dart';
part 'picture.g.dart';

@freezed
class Picture with _$Picture {
  @HiveType(typeId: 0)
  factory Picture({
    @HiveField(0) required String date,
    @HiveField(1) required String explanation,
    @HiveField(2) String? hdurl,
    @JsonKey(name: 'media_type') @HiveField(3) required String mediaType,
    @JsonKey(name: 'service_version') @HiveField(4) required String serviceVersion,
    @JsonKey(name: 'thumbnail_url') @HiveField(5) String? thumbnailUrl,
    @HiveField(6) required String title,
    @HiveField(7) required String url,
    @HiveField(8) String? copyright,
  }) = _Picture;

  factory Picture.fromJson(Map<String, dynamic> json) => _$PictureFromJson(json);
}
