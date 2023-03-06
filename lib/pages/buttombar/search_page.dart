import 'package:flutter/material.dart';
import 'package:foodiez/widgets/search_bar.dart';

class MySearchPage extends StatelessWidget {
  MySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //----- search Bar Widget ----
      child: SearchBar(),
    );
  }
}
