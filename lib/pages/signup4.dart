import 'package:auto_direction/auto_direction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/dialog.dart';

class SignUpPage4 extends StatefulWidget {
  const SignUpPage4({super.key});

  @override
  State<SignUpPage4> createState() => _SignUpPage4State();
}

bool isPasswordVisible = false;

bool states = false;

bool isPasswordVisible2 = false;

bool states2 = false;
String text = '';

class _SignUpPage4State extends State<SignUpPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: ListView(
          padding: EdgeInsets.only(top: 200.h),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 30),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.grey[300],
                  ),
                  width: 290.w,
                  height: 295.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Center(
                        child: Text(
                          "انشاء حساب",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color.fromRGBO(26, 86, 83, 1),
                              shadows: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                )
                              ]),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text("كلمة السر",
                          style: TextStyle(
                              color: Color.fromRGBO(26, 86, 83, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 13)),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 300.w,
                        height: 35.h,
                        child: AutoDirection(
                          text: text,
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                text = value;
                              });
                            },
                            obscureText: !isPasswordVisible,
                            decoration: InputDecoration(
                                prefixIcon: IconButton(
                                  icon: isPasswordVisible
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      isPasswordVisible = !isPasswordVisible;
                                    });
                                  },
                                ),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(255, 253, 253, 1)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text("تأكيد كلمة السر",
                          style: TextStyle(
                              color: Color.fromRGBO(26, 86, 83, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 13)),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 300.w,
                        height: 35.h,
                        child: AutoDirection(
                          text: text,
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                text = value;
                              });
                            },
                            obscureText: !isPasswordVisible2,
                            decoration: InputDecoration(
                                prefixIcon: IconButton(
                                  icon: isPasswordVisible2
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      isPasswordVisible2 = !isPasswordVisible2;
                                    });
                                  },
                                ),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(255, 253, 253, 1)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Center(
                        child: CustomButton(
                          title: "انشاء",
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const MyDialog(
                                    title: "تم انشاء الحساب بنجاح",
                                  );
                                });
                          },
                        ),
                      )
                    ],
                  ),
                )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 90, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 68,
                        height: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.grey[200]),
                      ),
                      Container(
                        width: 68,
                        height: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.grey[200]),
                      ),
                      Container(
                        width: 68,
                        height: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.grey[200]),
                      ),
                      Container(
                        width: 68,
                        height: 6,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.9),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            shape: BoxShape.rectangle,
                            color: const Color.fromRGBO(16, 120, 105, 1)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
