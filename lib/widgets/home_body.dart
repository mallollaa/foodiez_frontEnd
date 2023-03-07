import 'package:flutter/material.dart';
import 'package:foodiez/providers/recipes_providers.dart';
import 'package:foodiez/widgets/search_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final recipesProvider = Provider.of<RecipesProvider>(context);
    final recipes = recipesProvider.recipes;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // pages[currentIndex],
        Container(
          padding: EdgeInsets.only(top: 25),
          child: Text(
            " Manal & Waleed Kitchen ! ",
            style: GoogleFonts.alef(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Color.fromARGB(255, 243, 91, 45)),
            textAlign: TextAlign.center,
          ),
        ),

        SizedBox(
          height: 25,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              final recipe = recipes[index];
              return ListTile(
                title: Text(recipe.title),
                subtitle: Text(recipe.description),
              );
            },
          ),
        ),
      ],
    );
  }
}
