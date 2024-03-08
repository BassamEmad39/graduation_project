import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
          decoration:  InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              filled: true,
              fillColor: Color.fromRGBO(255, 253, 253, 1)),
        ),
      
    );
  }
}