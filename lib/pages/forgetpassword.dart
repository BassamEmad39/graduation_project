import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/verfication.dart';

class ForgetPssword extends StatefulWidget {
  const ForgetPssword({super.key});

  @override
  State<ForgetPssword> createState() => _ForgetPsswordState();
}

class _ForgetPsswordState extends State<ForgetPssword> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 180.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 37.w),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // changes position of shadow
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
                        "changepassword".tr(),
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
                      height: 20,
                    ),
                    Text("email".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                    SizedBox(
                      height: 5.h,
                    ),
                    Form(
                      key: formKey,
                      child: MyTextField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "field is required".tr();
                          }
                        },
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: CustomButton(
                        title: "next".tr(),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const Verificationn(),
                            ));
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
