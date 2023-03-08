import 'package:flutter/material.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

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
