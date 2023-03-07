import 'package:dio/dio.dart';
import 'package:foodiez/models/recipes.dart';
import 'package:foodiez/services/client.dart';

class RecipeServices {
  Future<List<Recipes>> getRecipes() async {
    try {
      print("Before getting recipes");
      final response = await Client.client.get("/recipes/");
      final recipesData = response.data as List;
      final recipes = recipesData
          .map((recipeJson) => Recipes.fromJson(recipeJson))
          .toList();
      print("after getting recipes $recipes");

      return recipes;
    } catch (error) {
      print('Error while getting recipes: $error');
      rethrow;
    }
  }

  Future<void> addRecipe(Recipes newRecipe) async {
    try {
      await Client.client.post("recipes/add", data: newRecipe.toJson());
    } catch (error) {
      print('Error while adding recipe: $error');
      rethrow;
    }
  }

  Future<void> editRecipe(Recipes editedRecipe) async {
    try {
      await Client.client
          .put("recipes/${editedRecipe.id}", data: editedRecipe.toJson());
    } catch (error) {
      print('Error while editing recipe: $error');
      rethrow;
    }
  }

  Future<void> deleteRecipe(int recipeId) async {
    try {
      await Client.client.delete('recipes/delete/$recipeId');
    } catch (error) {
      print('Error while deleting recipe: $error');
      rethrow;
    }
  }
}
