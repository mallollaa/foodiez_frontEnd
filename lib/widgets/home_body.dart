import 'package:flutter/material.dart';

import 'package:foodiez/widgets/search_bar.dart';
import 'package:foodiez/widgets/text/text.dart';

import 'package:google_fonts/google_fonts.dart';

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
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 7),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    MyText(
                      text: "Kuwait",
                      // size: 12,
                    ),
                    MyText(
                      text: "Andlous",
                      color: Colors.black26,
                      size: 12,
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
