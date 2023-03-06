import 'package:flutter/material.dart';
import 'package:foodiez/models/users.dart';
import 'package:foodiez/providers/auth_providers.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SigninPage extends StatelessWidget {
  SigninPage({Key? key}) : super(key: key);
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("Sign In"),
            TextField(
              decoration: const InputDecoration(hintText: 'Username'),
              controller: usernameController,
            ),
            TextField(
              decoration: const InputDecoration(hintText: 'Password'),
              controller: passwordController,
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AuthProvider>().signIn(
                      user: User(
                          username: usernameController.text,
                          password: passwordController.text),
                    );
                context.pop();
              },
              child: const Text("Sign In"),
            )
          ],
        ),
      ),
    );
  }
}
