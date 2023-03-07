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
          ? ListView(padding: EdgeInsets.zero, children: [
              UserAccountsDrawerHeader(
                accountName: Text("Username"),
                accountEmail: Text("email : mah41411@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset("assets/images/userpic.png"),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.explore_outlined),
                title: Text("explore"),
                onTap: () {
                  context.push('/explore');
                  //return the setings page here
                },
              ),
            ])
          : ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Regester"),
                  onTap: () {
                    context.push('/signup');

                    //return the setings page here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Log in"),
                  onTap: () {
                    context.push('/signin');
                    context.pop();
                    //return the logout page here
                  },
                ),
              ],
            ),
      // Divider(),
    );
  }
}
