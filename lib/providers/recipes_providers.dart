import 'package:flutter/material.dart';
import 'package:foodiez/models/recipes.dart';
import 'package:foodiez/services/client.dart';
import 'package:foodiez/services/recipes_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecipesProvider extends ChangeNotifier {
  List<Recipes> recipes = [];

  // Actions

  Future<void> getRecipes() async {
    final recipeServices = RecipeServices();
    final recipeResponse = await recipeServices.getRecipes();
    recipes = recipeResponse;
    // notifyListeners();
  }

  Future<void> addRecipe(Recipes newRecipes) async {
    await RecipeServices().addRecipe(newRecipes);
    notifyListeners();
  }

  Future<void> editRecipe(Recipes editedRecipe) async {
    await RecipeServices().editRecipe(editedRecipe);
    notifyListeners();
  }

  Future<void> deleteRecipe(int recipeId) async {
    await RecipeServices().deleteRecipe(recipeId);
    recipes.removeWhere((recipe) => recipe.id == recipeId);
    notifyListeners();
  }
}
