import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:foodiez/models/catigories.dart';
import 'package:foodiez/models/ingredients.dart';
import 'package:foodiez/models/ratings.dart';
import 'package:foodiez/models/recipes.dart';
import 'package:foodiez/services/client.dart';

class RecipesService {
  Future<List<Recipes>> getRecipes() async {
    final response = await Client.client.get('/recipes/');
    final recipesdata = response.data as List;
    final recipes =
        recipesdata.map((recipejson) => Recipes.fromJson(recipejson)).toList();
    return recipes;
  }

  Future<Recipes> getRecipe(int id) async {
    try {
      final Response response = await Client.client.get('recipes/$id/');
      final Map<String, dynamic> data = response.data;
      final Recipes recipe = Recipes.fromJson(data);
      return recipe;
    } catch (e) {
      throw Exception('Failed to load recipe: $e');
    }
  }

  Future<List<Category>> getCategories() async {
    try {
      final Response response = await Client.client.get('categories/');
      final List<dynamic> data = response.data;
      final List<Category> categories =
          data.map((e) => Category.fromJson(e)).toList();
      return categories;
    } catch (e) {
      throw Exception('Failed to load categories: $e');
    }
  }

  Future<List<Ingredient>> getIngredients() async {
    try {
      final Response response = await Client.client.get('ingredients/');
      final List<dynamic> data = response.data;
      final List<Ingredient> ingredients =
          data.map((e) => Ingredient.fromJson(e)).toList();
      return ingredients;
    } catch (e) {
      throw Exception('Failed to load ingredients: $e');
    }
  }

  Future<Rating> createRating(Rating rating) async {
    try {
      final Response response =
          await Client.client.post('ratings/', data: rating.toJson());
      final Map<String, dynamic> data = response.data;
      final Rating newRating = Rating.fromJson(data);
      return newRating;
    } catch (e) {
      throw Exception('Failed to create rating: $e');
    }
  }

  Future<Recipes> createRecipe(Recipes recipe) async {
    try {
      final Response response =
          await Client.client.post('recipes/', data: recipe.toJson());
      final Map<String, dynamic> data = response.data;
      final Recipes newRecipe = Recipes.fromJson(data);
      return newRecipe;
    } catch (e) {
      throw Exception('Failed to create recipe: $e');
    }
  }

  Future<Recipes> updateRecipe(int id, Recipes recipe) async {
    try {
      final Response response =
          await Client.client.put('recipes/$id/', data: recipe.toJson());
      final Map<String, dynamic> data = response.data;
      final Recipes updatedRecipe = Recipes.fromJson(data);
      return updatedRecipe;
    } catch (e) {
      throw Exception('Failed to update recipe: $e');
    }
  }

  Future<void> deleteRecipe(int id) async {
    try {
      await Client.client.delete('recipes/$id/');
    } catch (e) {
      throw Exception('Failed to delete recipe: $e');
    }
  }
}
