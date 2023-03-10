// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'catigories.g.dart';

@JsonSerializable()
class Category {
  String title;
  String image;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  Category({
    required this.title,
    required this.image,
  });
}
