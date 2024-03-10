import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/changepassword.dart';

class ForgetPssword extends StatelessWidget {
  const ForgetPssword({super.key});

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
                  width: 340.w,
                  height: 300.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Center(
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
                      MyTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: CustomButton(
                          title: "التالي",
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ChangePassword(),
                            ));
                          },
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
