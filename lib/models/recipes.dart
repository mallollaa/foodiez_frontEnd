// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'recipes.g.dart';

@JsonSerializable()
class Recipes {
  String title;
  String description;
  String chef;
  String image;
  String catigories;

  factory Recipes.fromJson(Map<String, dynamic> json) =>
      _$RecipesFromJson(json);
  Map<String, dynamic> toJson() => _$RecipesToJson(this);

  Recipes({
    required this.title,
    required this.description,
    required this.chef,
    required this.image,
    required this.catigories,
  });
}
