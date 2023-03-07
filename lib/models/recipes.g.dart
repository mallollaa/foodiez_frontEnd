// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipes _$RecipesFromJson(Map<String, dynamic> json) => Recipes(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      chef: json['chef'] as String,
      image: json['image'] as String,
      catigories: Categery.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecipesToJson(Recipes instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'chef': instance.chef,
      'image': instance.image,
      'category': instance.catigories,
    };
