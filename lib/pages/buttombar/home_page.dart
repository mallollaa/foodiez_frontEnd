// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodiez/pages/buttombar/account_page.dart';
import 'package:foodiez/pages/buttombar/search_page.dart';
import 'package:foodiez/widgets/drwer.dart';
import 'package:foodiez/widgets/home_body.dart';
import 'package:foodiez/widgets/recipe_card.dart';
import 'package:google_fonts/google_fonts.dart';

class MYHomePage extends StatefulWidget {
  MYHomePage({super.key});

  @override
  State<MYHomePage> createState() => _MYHomePageState();
}

class _MYHomePageState extends State<MYHomePage> {
  List pages = [
    HomeBody(),
    MySearchPage(),
    MyAccountPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    // this func for thr buttom bar pages
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ----- Buttom Bar --------
      backgroundColor: Colors.white,

      //----- Drawer -----
      // drawer: MyNavBar(),
      // ---App Bar ----

      // appBar: AppBar(
      //   title: Text(
      //     "Foodiez",
      //     style: GoogleFonts.aBeeZee(fontSize: 20),
      //   ),
      //   backgroundColor: Color.fromARGB(255, 218, 183, 44),
      // ),
      body: pages[currentIndex],
    );
  }
}
