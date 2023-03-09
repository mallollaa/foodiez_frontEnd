import 'package:flutter/material.dart';

class backgroundImage extends StatelessWidget {
  const backgroundImage({
    super.key,
    required this.coverHeight,
  });

  final double coverHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Image.network(
        "https://pbs.twimg.com/profile_images/1074614892722823169/YAwujb39_400x400.jpg",
        width: double.infinity,
        height: coverHeight,
      ),
    );
  }
}
