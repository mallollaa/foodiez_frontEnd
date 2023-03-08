// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'ingredients.g.dart';

@JsonSerializable()
class Ingredient {
  int id;
  String name;
  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$IngredientToJson(this);

  Ingredient({
    required this.id,
    required this.name,
  });
}
