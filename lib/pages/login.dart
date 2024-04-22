import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/forgetpassword.dart';
import 'package:graduation_project/pages/homepage.dart';
import 'package:graduation_project/pages/signup1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String text = '';

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  bool states = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 150.h),
          child: Column(
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
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Colors.grey[300],
                    ),
                    width: 340.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "login".tr(),
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
                          "email".tr(),
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "field is required".tr();
                            }
                            
                          },
                          isPassword: false,
                          maxLiness: 1,
                          isPhone: false,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "password".tr(),
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "field is required".tr();
                            }
                            return null;
                          },
                          isPassword: true,
                          maxLiness: 1,
                          isPhone: false,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                            child: CustomButton(
                          title: "login".tr(),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const HomePage(),
                              ));
                            }
                            ;
                          },
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
                            child: Text("noacc".tr(),
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
                            child: Text("nopassword".tr(),
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[600])),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
