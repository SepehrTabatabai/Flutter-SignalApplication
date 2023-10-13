import 'package:flutter/material.dart';

Widget getBlogPost({required String imageName, required String title}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6.00),
        child: Image(
          image: AssetImage("assets/images/$imageName"),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        "$title",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "خرید روی 12.365",
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          Icon(
            Icons.payments,
            size: 20,
            color: Colors.green,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "فروش روی 12.560",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          Icon(
            Icons.sell,
            size: 20,
            color: Colors.red,
          ),
        ],
      ),
      Container(
        width: 200.0,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ),
    ],
  );
}
