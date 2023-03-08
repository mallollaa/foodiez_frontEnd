import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:foodiez/pages/auth/Login.dart';
import 'package:foodiez/pages/auth/signup_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('images/icon.png'),
      title: Text(
        'Flutter Skills',
        style: TextStyle(
          color: Colors.pink,
          fontFamily: 'ro',
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      showLoader: true,
      loaderColor: Colors.pink,
      navigator: Login(),
      durationInSeconds: 3,
    );
  }
}
