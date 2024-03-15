import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/signup2.dart';

class SignUpPage1 extends StatefulWidget {
  const SignUpPage1({super.key});

  @override
  State<SignUpPage1> createState() => _SignUpPage1State();
}

class _SignUpPage1State extends State<SignUpPage1> {
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
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.grey[300],
                ),
                width: 290.w,
                height: 380.h,
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
                    SizedBox(
                      height: 25.h,
                    ),
                    const Text("الايميل",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                    SizedBox(
                      height: 5.h,
                    ),
                    MyTextField(isPassword: false, maxLiness: 1,isPhone: false,),
                    SizedBox(
                      height: 31.h,
                    ),
                    const Text("الرقم القومي",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                    SizedBox(
                      height: 5.h,
                    ),
                    MyTextField(isPassword: false, maxLiness: 1,isPhone: true,),
                    SizedBox(
                      height: 25.h,
                    ),
                    Center(
                      child: CustomButton(
                        title: "التالي",
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SignUpPage2(),
                          ));
                        },
                      ),
                    )
                  ],
                ),
              )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 65, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 68.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          shape: BoxShape.rectangle,
                          color: const Color.fromRGBO(16, 120, 105, 1)),
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
                          shape: BoxShape.rectangle, color: Colors.grey[200]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
