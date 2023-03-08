// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:foodiez/models/recipes.dart';
import 'package:foodiez/models/users.dart';
import 'package:json_annotation/json_annotation.dart';
part 'ratings.g.dart';

@JsonSerializable()
class Rating {
  int id;
  int rating;
  Recipes recipes;
  User users;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
  Map<String, dynamic> toJson() => _$RatingToJson(this);
  Rating({
    required this.id,
    required this.rating,
    required this.recipes,
    required this.users,
  });
}
