import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          spacing: 15,
          children: [
            FlutterLogo(size: 100),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder()

              ) ,
            )
          ],
        ),
      ),
    );
  }
}
