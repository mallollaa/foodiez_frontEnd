// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'catigories.g.dart';

@JsonSerializable()
class Categery {
  String name;
  int? id;
  Categery({
    required this.name,
    this.id,
  });

  factory Categery.fromJson(Map<String, dynamic> json) =>
      _$CategeryFromJson(json);
  Map<String, dynamic> toJson() => _$CategeryToJson(this);
}
