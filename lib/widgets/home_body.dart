import 'package:flutter/material.dart';

import 'package:foodiez/pages/recipes/food_body_page.dart';
import 'package:foodiez/widgets/text/text.dart';

import 'package:foodiez/providers/recipes_providers.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'text/small_text.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    super.key,
  });

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    final recipesProvider = Provider.of<RecipesProvider>(context);
    final recipes = recipesProvider.recipes;
    return Column(
      children: [
        // --- shwing the header ----
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  MyText(
                    text: "MW Kitchen",
                  ),
                  Row(
                    children: [
                      SmallText(
                        text: "Kuwait",
                        color: Colors.black54,
                      ),
                      Icon(Icons.arrow_drop_down_rounded)
                    ],
                  )
                ],
              ),
              Center(
                child: Container(
                  width: 45,
                  height: 45,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 223, 244, 133),
                  ),
                ),
              )
            ],
          ),
        ),

        // --- showing the body -----
        MyfoodBodyPage(),

        SizedBox(
          height: 25,
        ),
        Expanded(
            child: FutureBuilder(
          future:
              Provider.of<RecipesProvider>(context, listen: false).getRecipes(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  final recipe = recipes[index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(recipe.title),
                        Image.network(
                          recipe.Image,
                          width: 200,
                        )
                      ],
                    ),
                  );
                },
              );
            }
          },
        )),
      ],
    );
  }

  // Column(
  //   crossAxisAlignment: CrossAxisAlignment.stretch,
  //   children: [
  //     // pages[currentIndex],
  //     Container(
  //       padding: EdgeInsets.only(top: 25),
  //       child: Text(
  //         " manal & Waleed Kitchen ! ",
  //         style: GoogleFonts.alef(
  //             fontWeight: FontWeight.w700,
  //             fontSize: 24,
  //             color: Color.fromARGB(255, 243, 91, 45)),
  //         textAlign: TextAlign.center,
  //       ),
  //     ),

  //     SizedBox(
  //       height: 25,
  //     ),
  //     // ListView()
  //   ],
  // );
  // }
}
