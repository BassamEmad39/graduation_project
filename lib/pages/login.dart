import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
            color: Colors.grey[200],
            width: 350.w,
            height: 600.h,
            child: Column(
              children: [
                Center(
                    child: Text(
                  "تسجيل دخول",
                  style: TextStyle(
                    
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 25, 124, 101,
                      )),
                ))
              ],
            )),
      ),
    );
  }
}
