// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PictureImplAdapter extends TypeAdapter<_$PictureImpl> {
  @override
  final int typeId = 0;

  @override
  _$PictureImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PictureImpl(
      date: fields[0] as String,
      explanation: fields[1] as String,
      hdurl: fields[2] as String?,
      mediaType: fields[3] as String,
      serviceVersion: fields[4] as String,
      thumbnailUrl: fields[5] as String?,
      title: fields[6] as String,
      url: fields[7] as String,
      copyright: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$PictureImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.explanation)
      ..writeByte(2)
      ..write(obj.hdurl)
      ..writeByte(3)
      ..write(obj.mediaType)
      ..writeByte(4)
      ..write(obj.serviceVersion)
      ..writeByte(5)
      ..write(obj.thumbnailUrl)
      ..writeByte(6)
      ..write(obj.title)
      ..writeByte(7)
      ..write(obj.url)
      ..writeByte(8)
      ..write(obj.copyright);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PictureImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PictureImpl _$$PictureImplFromJson(Map<String, dynamic> json) =>
    _$PictureImpl(
      date: json['date'] as String,
      explanation: json['explanation'] as String,
      hdurl: json['hdurl'] as String?,
      mediaType: json['media_type'] as String,
      serviceVersion: json['service_version'] as String,
      thumbnailUrl: json['thumbnail_url'] as String?,
      title: json['title'] as String,
      url: json['url'] as String,
      copyright: json['copyright'] as String?,
    );

Map<String, dynamic> _$$PictureImplToJson(_$PictureImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'explanation': instance.explanation,
      'hdurl': instance.hdurl,
      'media_type': instance.mediaType,
      'service_version': instance.serviceVersion,
      'thumbnail_url': instance.thumbnailUrl,
      'title': instance.title,
      'url': instance.url,
      'copyright': instance.copyright,
    };
