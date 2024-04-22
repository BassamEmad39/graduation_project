import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/dialog.dart';
import 'package:graduation_project/custom/textField.dart';

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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 200.h),
            child: Column(
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
                  width: 335.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "createaccount".tr(),
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
                      SizedBox(
                        height: 7.h,
                      ),
                      Text("password".tr(),
                          style: TextStyle(
                              color: Color.fromRGBO(26, 86, 83, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 13)),
                      SizedBox(
                        height: 5.h,
                      ),
                      MyTextField(
                        isPassword: true,
                        maxLiness: 1,
                        isPhone: false,
                        validator: (value) {
                          if (value!.length > 8) {
                            return null;
                          } else {
                            return "password should be".tr();
                          }
                        },
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text("confirmpassword".tr(),
                          style: TextStyle(
                              color: Color.fromRGBO(26, 86, 83, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 13)),
                      SizedBox(
                        height: 5.h,
                      ),
                      MyTextField(
                        isPassword: true,
                        maxLiness: 1,
                        isPhone: false,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: CustomButton(
                          title: "create".tr(),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return MyDialog(
                                      title: "accountcreated".tr(),
                                    );
                                  });
                            }
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
                        width: 68.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.grey[200]),
                      ),
                      Container(
                        width: 68.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.grey[200]),
                      ),
                      Container(
                        width: 68.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.grey[200]),
                      ),
                      Container(
                        width: 68.w,
                        height: 6.h,
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
          ),
        ));
  }
}
