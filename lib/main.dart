// This Project is so simple its my First App To Learn Flutter and how Dart And Flutter Works
// Instagram : sepehremune  /  Email : theseyedwork@gmail.com
import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Vazir"),
      home: LoginPage(),
    );
  }
}
