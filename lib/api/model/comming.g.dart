// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comming.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadsModel _$DownloadsModelFromJson(Map<String, dynamic> json) =>
    DownloadsModel(
      overview: json['overview'] as String?,
      releasedate: json['release_date'] as String?,
      title: json['title'] as String?,
      image: json['poster_path'] as String?,
    );

Map<String, dynamic> _$DownloadsModelToJson(DownloadsModel instance) =>
    <String, dynamic>{
      'overview': instance.overview,
      'release_date': instance.releasedate,
      'title': instance.title,
      'poster_path': instance.image,
    };
