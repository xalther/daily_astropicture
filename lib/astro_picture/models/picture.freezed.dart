// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Picture _$PictureFromJson(Map<String, dynamic> json) {
  return _Picture.fromJson(json);
}

/// @nodoc
mixin _$Picture {
  @HiveField(0)
  String get date => throw _privateConstructorUsedError;
  @HiveField(1)
  String get explanation => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get hdurl => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  @HiveField(3)
  String get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_version')
  @HiveField(4)
  String get serviceVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  @HiveField(5)
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @HiveField(6)
  String get title => throw _privateConstructorUsedError;
  @HiveField(7)
  String get url => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get copyright => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureCopyWith<Picture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureCopyWith<$Res> {
  factory $PictureCopyWith(Picture value, $Res Function(Picture) then) =
      _$PictureCopyWithImpl<$Res, Picture>;
  @useResult
  $Res call(
      {@HiveField(0) String date,
      @HiveField(1) String explanation,
      @HiveField(2) String? hdurl,
      @JsonKey(name: 'media_type') @HiveField(3) String mediaType,
      @JsonKey(name: 'service_version') @HiveField(4) String serviceVersion,
      @JsonKey(name: 'thumbnail_url') @HiveField(5) String? thumbnailUrl,
      @HiveField(6) String title,
      @HiveField(7) String url,
      @HiveField(8) String? copyright});
}

/// @nodoc
class _$PictureCopyWithImpl<$Res, $Val extends Picture>
    implements $PictureCopyWith<$Res> {
  _$PictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? explanation = null,
    Object? hdurl = freezed,
    Object? mediaType = null,
    Object? serviceVersion = null,
    Object? thumbnailUrl = freezed,
    Object? title = null,
    Object? url = null,
    Object? copyright = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      hdurl: freezed == hdurl
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      serviceVersion: null == serviceVersion
          ? _value.serviceVersion
          : serviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PictureImplCopyWith<$Res> implements $PictureCopyWith<$Res> {
  factory _$$PictureImplCopyWith(
          _$PictureImpl value, $Res Function(_$PictureImpl) then) =
      __$$PictureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String date,
      @HiveField(1) String explanation,
      @HiveField(2) String? hdurl,
      @JsonKey(name: 'media_type') @HiveField(3) String mediaType,
      @JsonKey(name: 'service_version') @HiveField(4) String serviceVersion,
      @JsonKey(name: 'thumbnail_url') @HiveField(5) String? thumbnailUrl,
      @HiveField(6) String title,
      @HiveField(7) String url,
      @HiveField(8) String? copyright});
}

/// @nodoc
class __$$PictureImplCopyWithImpl<$Res>
    extends _$PictureCopyWithImpl<$Res, _$PictureImpl>
    implements _$$PictureImplCopyWith<$Res> {
  __$$PictureImplCopyWithImpl(
      _$PictureImpl _value, $Res Function(_$PictureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? explanation = null,
    Object? hdurl = freezed,
    Object? mediaType = null,
    Object? serviceVersion = null,
    Object? thumbnailUrl = freezed,
    Object? title = null,
    Object? url = null,
    Object? copyright = freezed,
  }) {
    return _then(_$PictureImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      hdurl: freezed == hdurl
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      serviceVersion: null == serviceVersion
          ? _value.serviceVersion
          : serviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$PictureImpl implements _Picture {
  _$PictureImpl(
      {@HiveField(0) required this.date,
      @HiveField(1) required this.explanation,
      @HiveField(2) this.hdurl,
      @JsonKey(name: 'media_type') @HiveField(3) required this.mediaType,
      @JsonKey(name: 'service_version')
      @HiveField(4)
      required this.serviceVersion,
      @JsonKey(name: 'thumbnail_url') @HiveField(5) this.thumbnailUrl,
      @HiveField(6) required this.title,
      @HiveField(7) required this.url,
      @HiveField(8) this.copyright});

  factory _$PictureImpl.fromJson(Map<String, dynamic> json) =>
      _$$PictureImplFromJson(json);

  @override
  @HiveField(0)
  final String date;
  @override
  @HiveField(1)
  final String explanation;
  @override
  @HiveField(2)
  final String? hdurl;
  @override
  @JsonKey(name: 'media_type')
  @HiveField(3)
  final String mediaType;
  @override
  @JsonKey(name: 'service_version')
  @HiveField(4)
  final String serviceVersion;
  @override
  @JsonKey(name: 'thumbnail_url')
  @HiveField(5)
  final String? thumbnailUrl;
  @override
  @HiveField(6)
  final String title;
  @override
  @HiveField(7)
  final String url;
  @override
  @HiveField(8)
  final String? copyright;

  @override
  String toString() {
    return 'Picture(date: $date, explanation: $explanation, hdurl: $hdurl, mediaType: $mediaType, serviceVersion: $serviceVersion, thumbnailUrl: $thumbnailUrl, title: $title, url: $url, copyright: $copyright)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PictureImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.hdurl, hdurl) || other.hdurl == hdurl) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.serviceVersion, serviceVersion) ||
                other.serviceVersion == serviceVersion) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, explanation, hdurl,
      mediaType, serviceVersion, thumbnailUrl, title, url, copyright);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PictureImplCopyWith<_$PictureImpl> get copyWith =>
      __$$PictureImplCopyWithImpl<_$PictureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PictureImplToJson(
      this,
    );
  }
}

abstract class _Picture implements Picture {
  factory _Picture(
      {@HiveField(0) required final String date,
      @HiveField(1) required final String explanation,
      @HiveField(2) final String? hdurl,
      @JsonKey(name: 'media_type')
      @HiveField(3)
      required final String mediaType,
      @JsonKey(name: 'service_version')
      @HiveField(4)
      required final String serviceVersion,
      @JsonKey(name: 'thumbnail_url') @HiveField(5) final String? thumbnailUrl,
      @HiveField(6) required final String title,
      @HiveField(7) required final String url,
      @HiveField(8) final String? copyright}) = _$PictureImpl;

  factory _Picture.fromJson(Map<String, dynamic> json) = _$PictureImpl.fromJson;

  @override
  @HiveField(0)
  String get date;
  @override
  @HiveField(1)
  String get explanation;
  @override
  @HiveField(2)
  String? get hdurl;
  @override
  @JsonKey(name: 'media_type')
  @HiveField(3)
  String get mediaType;
  @override
  @JsonKey(name: 'service_version')
  @HiveField(4)
  String get serviceVersion;
  @override
  @JsonKey(name: 'thumbnail_url')
  @HiveField(5)
  String? get thumbnailUrl;
  @override
  @HiveField(6)
  String get title;
  @override
  @HiveField(7)
  String get url;
  @override
  @HiveField(8)
  String? get copyright;
  @override
  @JsonKey(ignore: true)
  _$$PictureImplCopyWith<_$PictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
