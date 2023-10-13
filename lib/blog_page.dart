import 'package:flutter/material.dart';
import 'package:fluuter_blog_navigation/custom_widgets/post_widget.dart';
// Second Screen Widget

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final List<Widget> listBlogWidget = [
    getBlogPost(
        imageName: "s.png", title: " برای 15 آبان SafeMoon سیگنال خرید کوین "),
    getBlogPost(
        imageName: "a.png",
        title: " برای 15 آبان Alchemy Pay سیگنال خرید کوین  "),
    getBlogPost(
        imageName: "c.png", title: " برای 15 آبان CosMos سیگنال خرید کوین "),
    getBlogPost(
        imageName: "r.png", title: " برای 15 آبان X Ripple سیگنال خرید کوین "),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          " VIP اخبار و سیگنال های  ",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 1.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...listBlogWidget,
                  SizedBox(
                    height: 20.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "خروج از حساب کاربری",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
