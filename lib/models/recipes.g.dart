// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipes _$RecipesFromJson(Map<String, dynamic> json) => Recipes(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      category: json['category'] as String,
      chef: json['chef'] as String,
      ingrediants:
          (json['ingrediants'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$RecipesToJson(Recipes instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'category': instance.category,
      'chef': instance.chef,
      'ingrediants': instance.ingrediants,
    };
