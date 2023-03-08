import 'package:flutter/material.dart';
import 'package:foodiez/models/recipes.dart';
import 'package:foodiez/services/client.dart';
import 'package:foodiez/services/recipes_services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

class RecipesProvider extends ChangeNotifier {
  List<Recipes> recipes = [];

  // Actions

  Future<void> getRecipes() async {
    final recipeServices = RecipesService();
    final recipeResponse = await recipeServices.getRecipes();
    recipes = recipeResponse;
  }
}

//   Future<void> createRecipe(Recipes recipe) async {
//     try {
//       final newRecipe = await .createRecipe(recipe);
//       _recipes.add(newRecipe);
//       notifyListeners();
//     } catch (e) {
//       print('Failed to create recipe: $e');
//     }
//   }

//   Future<void> updateRecipe(int id, Recipes recipe) async {
//     try {
//       final updatedRecipe = await _service.updateRecipe(id, recipe);
//       final index = _recipes.indexWhere((r) => r.id == id);
//       _recipes[index] = updatedRecipe;
//       notifyListeners();
//     } catch (e) {
//       print('Failed to update recipe: $e');
//     }
//   }

//   Future<void> deleteRecipe(int id) async {
//     try {
//       await _service.deleteRecipe(id);
//       _recipes.removeWhere((r) => r.id == id);
//       notifyListeners();
//     } catch (e) {
//       print('Failed to delete recipe: $e');
//     }
//   }
// }

















//   Future<void> addRecipe(Recipes newRecipes) async {
//     await RecipeServices().addRecipe(newRecipes);
//     notifyListeners();
//   }

//   Future<void> editRecipe(Recipes editedRecipe) async {
//     await RecipeServices().editRecipe(editedRecipe);
//     notifyListeners();
//   }

//   Future<void> deleteRecipe(int recipeId) async {
//     await RecipeServices().deleteRecipe(recipeId);
//     recipes.removeWhere((recipe) => recipe.id == recipeId);
//     notifyListeners();
//   }
// }
