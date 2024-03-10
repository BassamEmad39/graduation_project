import 'package:auto_direction/auto_direction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

String text = '';

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 40.h,
      child: AutoDirection(
        text: text,
        child: TextFormField(
          onChanged: (value) {
            setState(() {
              text = value;
            });
          },
          decoration: const InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              filled: true,
              fillColor: Color.fromRGBO(255, 253, 253, 1)),
        ),
      ),
    );
  }
}
