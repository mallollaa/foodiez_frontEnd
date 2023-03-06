import 'package:flutter/material.dart';

import 'package:foodiez/widgets/search_bar.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // pages[currentIndex],
        Container(
          padding: EdgeInsets.only(top: 25),
          child: Text(
            " manal & Waleed Kitchen ! ",
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
        // ListView()
      ],
    );
  }
}
