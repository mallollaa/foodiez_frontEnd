// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:foodiez/models/ingredients.dart';
import 'package:foodiez/models/ratings.dart';
import 'package:foodiez/models/users.dart';
import 'package:json_annotation/json_annotation.dart';
part 'recipes.g.dart';

@JsonSerializable()
class Recipes {
  int? id;
  String title;
  String description;
  String Image;
  String category;
  String chef;
  // List<Ingredient> ingredients;
  // User chef;
  // List<Rating> ratings;

  factory Recipes.fromJson(Map<String, dynamic> json) =>
      _$RecipesFromJson(json);
  Map<String, dynamic> toJson() => _$RecipesToJson(this);

  Recipes({
    required this.id,
    required this.title,
    required this.description,
    required this.Image,
    required this.category,
    required this.chef,
    // required this.ingredients,
    // required this.chef,
    // required this.ratings,
  });
}
