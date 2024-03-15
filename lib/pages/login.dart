import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/forgetpassword.dart';
import 'package:graduation_project/pages/signup1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String text = '';

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisible = false;
  bool states = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView(
        padding: EdgeInsets.only(top: 150.h),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13, vertical: 37),
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
                    width: 340.w,
                    height: 510.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Center(
                          child: Text(
                            "تسجيل دخول",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(
                                  255,
                                  25,
                                  124,
                                  101,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "الايميل",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(
                                255,
                                25,
                                124,
                                101,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(isPassword: false, maxLiness: 1,isPhone: false,),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "كلمة السر",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(
                                255,
                                25,
                                124,
                                101,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          isPassword: true,
                          maxLiness: 1,
                          isPhone: false,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                            child: CustomButton(
                          title: "تسجيل الدخول",
                          onPressed: () {},
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const SignUpPage1(),
                              ));
                            },
                            child: Text(" ليس لديك حساب؟",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600])),
                          ),
                        ),
                        Center(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ForgetPssword(),
                              ));
                            },
                            child: Text("هل نسيت كلمة السر؟",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[600])),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
