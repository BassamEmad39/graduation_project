import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';

class SignUpPage4 extends StatefulWidget {
  final String emailText;
  final String idText;
  final String nameText;
  final String enNameText;
  final String addressText;
  final String phoneText;
  final String collegeText;
  final String sectionText;
  final String degreeText;
  final String postCodeText;

  SignUpPage4(
      {super.key,
      required this.emailText,
      required this.idText,
      required this.nameText,
      required this.enNameText,
      required this.addressText,
      required this.phoneText,
      required this.collegeText,
      required this.sectionText,
      required this.degreeText,
      required this.postCodeText});

  @override
  State<SignUpPage4> createState() => _SignUpPage4State();
}

class _SignUpPage4State extends State<SignUpPage4> {
  final formKey = GlobalKey<FormState>();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 200.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 30),
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
                  width: 335.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "createaccount".tr(),
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
                        height: 7.h,
                      ),
                      Text("password".tr(),
                          style: TextStyle(
                              color: Color.fromRGBO(26, 86, 83, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 13)),
                      SizedBox(
                        height: 5.h,
                      ),
                      MyTextField(
                        controller: passwordController,
                        isPassword: true,
                        maxLiness: 1,
                        isPhone: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "field is required".tr();
                          } else if (value!.length > 8) {
                            return null;
                          } else {
                            return "password should be".tr();
                          }
                        },
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text("confirmpassword".tr(),
                          style: TextStyle(
                              color: Color.fromRGBO(26, 86, 83, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 13)),
                      SizedBox(
                        height: 5.h,
                      ),
                      MyTextField(
                          controller: confirmPasswordController,
                          isPassword: true,
                          maxLiness: 1,
                          isPhone: false,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "field is required".tr();
                            } else if (value !=
                                passwordController.text) {
                              return "not match".tr();
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: CustomButton(
                          title: "create".tr(),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              register();
                            }
                          },
                        ),
                      )
                    ],
                  ),
                )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 90, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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
                      Container(
                        width: 68.w,
                        height: 6.h,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void register() async {
   try {
     final response = await Dio().post('https://walid28.bsite.net/api/doctorapi/register', data: {
       "doc_nid": widget.idText,
       "doc_name": widget.enNameText,
       "doc_phoneno": widget.phoneText,
       "doc_address": widget.addressText,
       "doc_email": widget.emailText,
       "doc_postcode": widget.postCodeText,
       "doc_faculty": widget.collegeText,
      "doc_dept": widget.sectionText,
      "doc_pass": passwordController.text,
       "ConfirmPassword": confirmPasswordController.text,
       "sntf_degree": widget.degreeText
     });
      
    print(response.data);
  } on DioException catch (ex) {
     print(ex.message);
     print(ex.response?.data);
  
 }
}
}