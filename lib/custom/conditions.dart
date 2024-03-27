import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Color.fromRGBO(75, 74, 74, 1),
          fontSize: 15,
          fontWeight: FontWeight.w500),
    );
  }
}
