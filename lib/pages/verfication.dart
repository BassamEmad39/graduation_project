import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/pages/newpassword.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verificationn extends StatefulWidget {
  const Verificationn({super.key});

  @override
  State<Verificationn> createState() => _VerificationnState();
}

class _VerificationnState extends State<Verificationn> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 150.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 37),
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
                width: 290.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Text(
                        "changepassword".tr(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
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
                      height: 6,
                    ),
                    Center(
                        child: Text(
                      "textchangepassword".tr(),
                      style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: formKey,
                      child: PinCodeTextField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "entercode".tr();
                          } else if (value.length < 4) {
                            return "entercode".tr();
                          }
                          return null;
                        },
                        appContext: context,
                        length: 4,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(15),
                          fieldHeight: 50,
                          fieldWidth: 50,
                          inactiveColor: Color.fromARGB(255, 25, 124, 101),
                          selectedColor: Color.fromARGB(255, 25, 124, 101),
                          inactiveFillColor: Color.fromARGB(255, 25, 124, 101),
                          disabledColor: Color.fromARGB(255, 25, 124, 101),
                          activeColor: Color.fromARGB(255, 25, 124, 101),
                          selectedFillColor: Color.fromARGB(255, 25, 124, 101),
                          activeFillColor: Color.fromARGB(255, 25, 124, 101),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: CustomButton(
                        title: "next".tr(),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const NewPassword(),
                            ));
                          }
                          ;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text("resend".tr(),
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(
                                  255,
                                  25,
                                  124,
                                  101,
                                ))),
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
