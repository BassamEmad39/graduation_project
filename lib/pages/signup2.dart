import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/signup3.dart';

class SignUpPage2 extends StatefulWidget {
  final String emailText;
  final String idText;
    final String nameText;
  final String enNameText;
  

   SignUpPage2({super.key, required this.emailText, required this.idText, required this.nameText, required this.enNameText});

  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  final formKey = GlobalKey<FormState>();

  final addressController = TextEditingController();

  final phoneController = TextEditingController();

  final postCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const MyAppBar(),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 150.h),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                              "createaccount".tr(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color.fromRGBO(26, 86, 83, 1),
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(0, 1),
                                    )
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                         
                        
                          SizedBox(
                            height: 31.h,
                          ),
                         
                         
                         
                          SizedBox(
                            height: 31.h,
                          ),
                          Text("address".tr(),
                              style: const TextStyle(
                                  color: Color.fromRGBO(26, 86, 83, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                          SizedBox(
                            height: 5.h,
                          ),
                          MyTextField(
                            controller: addressController,
                            isPassword: false,
                            maxLiness: 1,
                            isPhone: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "field is required".tr();
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 31.h,
                          ),
                          Text("phone".tr(),
                              style: const TextStyle(
                                  color: Color.fromRGBO(26, 86, 83, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                          SizedBox(
                            height: 5.h,
                          ),
                          MyTextField(
                            controller: phoneController,
                            isPassword: false,
                            maxLiness: 1,
                            isPhone: true,
                            validator: (value) {
                              if(value!.isEmpty) {
                                return "field is required".tr();
                              }
                              if (value.length >= 11) {
                                return null;
                              } else {
                                return "phone number".tr();
                              }
                            },
                          ),
                          const SizedBox(height: 31,),
                          Text("postcode".tr(),
                              style: const TextStyle(
                                  color: Color.fromRGBO(26, 86, 83, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                          SizedBox(
                            height: 5.h,
                          ),
                          MyTextField(
                            controller: postCodeController,
                            isPassword: false,
                            maxLiness: 1,
                            isPhone: true,
                            validator: (value) {
                              if(value!.isEmpty) {
                                return "field is required".tr();
                              }
                               else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Center(
                            child: CustomButton(
                              title: "next".tr(),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                         SignUpPage3(emailText: widget.emailText, idText: widget.idText, nameText: widget.nameText, enNameText: widget.enNameText, addressText: addressController.text, phoneText: phoneController.text, postCodeText: postCodeController.text,),
                                  ));
                                }
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
                                0, 2), // changes position of shadow
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
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
