// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double hight;

  SmallText({
    Key? key,
    this.color = Colors.black26,
    required this.text,
    this.hight = 1.2,
    this.size = 12, // check this
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.actor(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: size,
        height: hight,
      ),
    );
  }
}
