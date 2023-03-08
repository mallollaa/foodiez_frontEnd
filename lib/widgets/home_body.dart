import 'package:flutter/material.dart';
import 'package:foodiez/pages/recipes/food_body_page.dart';

import 'package:foodiez/widgets/search_bar.dart';
import 'package:foodiez/widgets/text/text.dart';

import 'package:google_fonts/google_fonts.dart';

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
    return Column(
      children: [
        // --- shwing the header ----
        Container(
          child: Container(
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
        ),
        // --- showing the body -----
        MyfoodBodyPage(),
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
