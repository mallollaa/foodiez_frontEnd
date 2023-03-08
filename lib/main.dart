import 'package:flutter/material.dart';
import 'package:foodiez/pages/auth/signin_page.dart';
import 'package:foodiez/pages/auth/signup_page.dart';
import 'package:foodiez/providers/auth_providers.dart';
import 'package:foodiez/providers/recipes_providers.dart';

import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'pages/buttombar/home_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => AuthProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => RecipesProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      // routerDelegate: _router.routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'foodiez',
      theme: ThemeData(
        // brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        // useMaterial3: true,
      ),
    );
  }
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MYHomePage(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => SignupPage(),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => SigninPage(),
    ),
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => MyHomePage(),
    // ),
  ],
);
