import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/signup4.dart';

class SignUpPage3 extends StatefulWidget {
  const SignUpPage3({super.key});

  @override
  State<SignUpPage3> createState() => _SignUpPage3State();
}

class _SignUpPage3State extends State<SignUpPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView(
        padding: EdgeInsets.only(top: 125.h),
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                    width: 320.w,
                    height: 520.h,
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
                            height: 25,
                          ),
                          const Text("الكلية",
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 86, 83, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                          const SizedBox(
                            height: 5,
                          ),
                          MyTextField(isPassword: false,),
                          const SizedBox(
                            height: 31,
                          ),
                          const Text("القسم",
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 86, 83, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                          const SizedBox(
                            height: 5,
                          ),
                          MyTextField(isPassword: false,),
                          const SizedBox(
                            height: 31,
                          ),
                          const Text("الدرجة العلمية",
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 86, 83, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                          const SizedBox(
                            height: 5,
                          ),
                          MyTextField(isPassword: false,),
                          const SizedBox(
                            height: 31,
                          ),
                          Center(
                            child: CustomButton(
                              title: "التالي",
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const SignUpPage4(),
                                ));
                              },
                            ),
                          )
                        ]))),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
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
                  Container(
                    width: 68,
                    height: 6,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.grey[200]),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
