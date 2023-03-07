// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  MyText({
    Key? key,
    this.color = Colors.blueAccent,
    this.overflow =
        TextOverflow.ellipsis, // for the text if it overflow the screen
    required this.text,
    this.size = 22, // check this
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: GoogleFonts.aBeeZee(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: size,
      ),
    );
  }
}
