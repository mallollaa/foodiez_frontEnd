import 'dart:html';

import 'package:flutter/material.dart';
import 'package:foodiez/widgets/account_profile.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(100),
        child: Column(
          children: [
            Container(height: 200, child: Text("My Account Page ")),
          ],
        ),
      ),
    );
  }
}
