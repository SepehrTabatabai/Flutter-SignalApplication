import 'package:flutter/material.dart';
import 'package:fluuter_blog_navigation/password_recovery.dart';
import 'blog_page.dart';
// The Home Screen Widget

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void navigateToBlog(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome To Application",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    SizedBox(width: 10.0),
                    Icon(
                      Icons.login,
                      color: Colors.black,
                    ),
                  ],
                ),
                Image(
                  image: AssetImage("assets/images/w.png"),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(200.0, 40.0),
                      side: BorderSide(color: Colors.black, width: 2.0),
                      foregroundColor: Color.fromARGB(255, 2, 0, 0)),
                  onPressed: () {
                    navigateToBlog(context, BlogScreen());
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromARGB(255, 253, 253, 253),
                      backgroundColor: Colors.black,
                      minimumSize: Size(200.0, 40.0)),
                ),
                SizedBox(height: 10.0),
                TextButton(
                  onPressed: () {
                    navigateToBlog(context, PasswordRecovery());
                  },
                  child: Text("Forgot Password"),
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
