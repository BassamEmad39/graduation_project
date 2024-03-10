import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/dialog.dart';
import 'package:graduation_project/custom/textField.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool isPasswordVisible = false;

  bool states = false;

  bool isPasswordVisible2 = false;

  bool states2 = false;

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
                  width: 340.w,
                  height: 420.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Center(
                        child: Text(
                          " تغير كلمة السر",
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
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        " كلمة السر الجديدة",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(
                              255,
                              25,
                              124,
                              101,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      
                      MyTextField(isPassword: true), 
                      
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        " تأكيد كلمة السر",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(
                              255,
                              25,
                              124,
                              101,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextField(isPassword: true), 
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: CustomButton(
                            title: "التالي",
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const MyDialog(
                                      title: "تم تغير كلمة السر بنجاح",
                                    );
                                  });
                            }),
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
