import 'package:json_annotation/json_annotation.dart';

class MusicModel {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'type')
  int? type;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'desciption')
  String? desciption;

  @JsonKey(name: 'time')
  String? time;

  @JsonKey(name: 'author')
  String? author;

  @JsonKey(name: 'imageUrl')
  String? imageUrl;

  @JsonKey(name: 'pathMusic')
  String? pathMusic;

  @JsonKey(name: 'isLoadSound')
  bool? isLoadSound;

  MusicModel({
    this.id,
    this.type,
    this.title,
    this.desciption,
    this.time,
    this.author,
    this.imageUrl,
    this.pathMusic,
    this.isLoadSound,
  });
}
