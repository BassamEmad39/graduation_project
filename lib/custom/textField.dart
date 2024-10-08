import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final bool isPassword, isPhone;
  final int maxLiness;
  final FormFieldValidator? validator;
  final TextEditingController? controller;

  const MyTextField({
    super.key,
    required this.isPassword,
    required this.maxLiness,
    required this.isPhone,
    this.validator,
    this.controller,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

String text = '';

class _MyTextFieldState extends State<MyTextField> {
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.isPhone ? TextInputType.phone : TextInputType.text,
      maxLines: widget.maxLiness,
      onChanged: (value) {
        setState(() {
          text = value;
        });
      },
      obscureText: isPasswordHidden && widget.isPassword,
      decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    size: null,
                    isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    isPasswordHidden = !isPasswordHidden;
                    setState(() {});
                  },
                )
              : null,
          filled: true,
          fillColor: Color.fromRGBO(255, 253, 253, 1)),
    );
  }
}
