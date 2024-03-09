import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/pages/login.dart';

class MyDialog extends StatefulWidget {
  final String title;
  const MyDialog({super.key, required this.title});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        insetPadding: const EdgeInsets.symmetric(vertical: 230),
        shape: const ContinuousRectangleBorder(),
        elevation: 4,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 140.w,
                height: 140.h,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
                child: const Icon(
                  Icons.done_outlined,
                  color: Color.fromRGBO(37, 179, 158, 1),
                  size: 80,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                  color: Color.fromRGBO(26, 86, 83, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  shadows: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    )
                  ]),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: CustomButton(
                title: "التالي",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const LoginPage(),
                  ));
                },
              ),
            )
          ],
        ));
  }
}
