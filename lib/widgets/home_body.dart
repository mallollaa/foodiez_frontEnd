import 'package:flutter/material.dart';
import 'package:foodiez/pages/recipes/food_body_page.dart';
import 'package:foodiez/widgets/text/text.dart';
import 'package:foodiez/providers/recipes_providers.dart';
import 'package:go_router/go_router.dart';
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
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 5),
                            blurRadius: 10)
                      ]),
                  child: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                ),
              )
            ],
          ),
        ),

        // --- showing the body -----
        MyFoodBodyPage(),

        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
