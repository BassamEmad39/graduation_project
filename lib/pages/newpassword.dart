import 'package:easy_localization/easy_localization.dart';
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
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Form(
        key: formKey,
        child: ListView(
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
                    height: 440.h,
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
                        const SizedBox(
                          height: 20,
                        ),
                        Text("newpassword".tr(),
                            style: TextStyle(
                                color: Color.fromRGBO(26, 86, 83, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 13)),
                        const SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: passwordController,
                          isPassword: true,
                          maxLiness: 1,
                          isPhone: false,
                          validator: (value) {
                            if (value!.toString().isEmpty) {
                              return "كلمة المرور مطلوبة ";
                            } else if (value.toString().length < 8) {
                              return "يجب ان تحتوي كلمة المرور على 8 ارقام على الأقل";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("confirmpassword".tr(),
                            style: TextStyle(
                                color: Color.fromRGBO(26, 86, 83, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 13)),
                        const SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: confirmPasswordController,
                          isPassword: true,
                          maxLiness: 1,
                          isPhone: false,
                          validator: (value) {
                            if (value!.toString().isEmpty) {
                              return "تأكيد كلمة المرور مطلوبة ";
                            } else if (value != passwordController.text) {
                              return "كلمتا المرور غير متطابقتين";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: CustomButton(
                              title: "next".tr(),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return MyDialog(
                                          title: "passwordsuccess".tr(),
                                        );
                                      });
                                }
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
      ),
    );
  }
}
