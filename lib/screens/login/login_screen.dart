import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.indigo,
      // ),
      body: Form(
        key: formkey,
        child: ListView(
          padding: EdgeInsets.all(10),
          // spacing: 15,   // This was given when column widget was there instead of Listview.
          children: [
            SizedBox(height: 100),
            FlutterLogo(size: 100),
            SizedBox(height: 20),

            Text(
              'Login Here', textAlign: TextAlign.center,
              style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),

            Text(
              'Please enter your email and password to get started with your account:',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 15),

            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            TextField(
              controller: password,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.all(15),
                ),
                child: Text('Login'),
              ),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password')),
              ],
            ),
            SizedBox(height: 20),

            // Spacer(),     // This was given when column widget was there instead of Listview.
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(padding: EdgeInsets.all(15)),
                child: Text("Don't have an account? Register Here."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
