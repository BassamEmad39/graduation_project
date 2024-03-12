import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:graduation_project/pages/homepage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0xff107869),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset('images/KSU.png'),
            SizedBox(
              height: 80,
            ),
            SpinKitCircle(
              size: 70,
              itemBuilder: (context, index) => DecoratedBox(
                  decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '..جاري التحميل',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
