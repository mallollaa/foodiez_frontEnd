// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodiez/providers/auth_providers.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  @override
  // Drawer NavBar
  // ignore: prefer_const_literals_to_create_immutables
  Widget build(BuildContext context) {
    return Drawer(
        child: context.watch<AuthProvider>().isAuth
            ? ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    child: Text(
                        "Welcome ${context.watch<AuthProvider>().user.username}"),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  ListTile(
                    title: const Text("Logout"),
                    trailing: const Icon(Icons.logout),
                    onTap: () {},
                  ),
                ],
              )
            : ListView(
                children: [
                  ListTile(
                    title: Text("SignUP NOW !!!"),
                    onTap: () {
                      context.push("/signup");
                    },
                  ),
                  ListTile(
                    title: Text("Sign In Dear :)"),
                    onTap: () {
                      context.push("/signin");
                    },
                  ),
                ],
              ));
  }
}
