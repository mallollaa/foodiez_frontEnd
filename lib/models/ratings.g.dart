// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      id: json['id'] as int,
      rating: json['rating'] as int,
      recipes: Recipes.fromJson(json['recipes'] as Map<String, dynamic>),
      users: User.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'recipes': instance.recipes,
      'users': instance.users,
    };
