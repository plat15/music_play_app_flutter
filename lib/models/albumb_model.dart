import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AlbumModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'describe')
  final String describe;

  @JsonKey(name: 'imageUrl')
  final String imageUrl;

  AlbumModel(
      {required this.id,
      required this.title,
      required this.describe,
      required this.imageUrl});
}
