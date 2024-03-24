import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/pages/newpassword.dart';

class Verificationn extends StatelessWidget {
  const Verificationn({super.key});

  @override
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 37),
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
                  height: 350.h,
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
                      OtpTextField(
                        numberOfFields: 4,
                        borderColor: Colors.black,
                        fieldWidth: 50,
                        keyboardType: TextInputType.number,
                        enabled: true,
                        fillColor: Colors.white,
                        cursorColor: const Color.fromRGBO(26, 86, 83, 1),
                        autoFocus: false,
                        showFieldAsBox: false,
                        hasCustomInputDecoration: false,
                        filled: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: CustomButton(
                          title: "next".tr(),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const NewPassword(),
                            ));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 15,
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
        ],
      ),
    );
  }
}
