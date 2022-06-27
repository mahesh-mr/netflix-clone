import 'package:json_annotation/json_annotation.dart';
part 'comming.g.dart';

@JsonSerializable()
class DownloadsModel {
   @JsonKey(name: 'overview')
  String? overview;
   @JsonKey(name: 'release_date')
  String? releasedate;
    @JsonKey(name: 'title')
  
  String? title;
    @JsonKey(name: 'poster_path')
  String? image;

  DownloadsModel({
    required this.overview,
    required this.releasedate,
    required this.title,
    required this.image,
  });
factory DownloadsModel.fromJson(Map<String, dynamic> json) => _$DownloadsModelFromJson(json);

  
 
  Map<String,dynamic> toJson() => _$DownloadsModelToJson(this);

}
