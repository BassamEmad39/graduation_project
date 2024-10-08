import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/cubits/useridcubit.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/forgetpassword.dart';
import 'package:graduation_project/pages/homepage.dart';
import 'package:graduation_project/pages/signup1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordVisible = false;
  bool isLoading = false;

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("find_account_title".tr(),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          content: Text('find_account_message'
              .tr(namedArgs: {'account': emailController.text})),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const ForgetPssword(),
                ));
              },
              child: Text(
                "find_account_button".tr(),
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(
                      255,
                      25,
                      124,
                      101,
                    )),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "try_again_button".tr(),
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(
                      255,
                      25,
                      124,
                      101,
                    )),
              ),
            ),
          ],
        );
      },
    );
  }

  void login(BuildContext context) async {
    isLoading = true;
    setState(() {});
    try {
      final response = await Dio().post(
        "https://walid28.bsite.net/api/doctorapi/login",
        data: {
          "Email": emailController.text,
          "Password": passwordController.text
        },
      );
      if (context.mounted) {
        final data = response.data as Map<String, dynamic>;
        print(data['data']['doc_nid']);
        BlocProvider.of<UserIdCubit>(context).setId(data["data"]["doc_nid"]);
      }
      print(response.data);
      isLoading = false;
      setState(() {});
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const HomePage(),
      ));
    } on DioException catch (ex) {
      isLoading = false;
      _showErrorDialog(ex.response?.data['message'] ?? 'An error occurred');
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 150.h),
          child: Column(
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
                            "login".tr(),
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(
                                  255,
                                  25,
                                  124,
                                  101,
                                ),
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
                            style: const TextStyle(
                                color: Color.fromRGBO(26, 86, 83, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 20)),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "field is required".tr();
                            } else if (value!.contains("@")) {
                            } else {
                              return "contain @".tr();
                            }
                            return null;
                          },
                          isPassword: false,
                          maxLiness: 1,
                          isPhone: false,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("password".tr(),
                            style: const TextStyle(
                                color: Color.fromRGBO(26, 86, 83, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 20)),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "field is required".tr();
                            }
                            return null;
                          },
                          isPassword: true,
                          maxLiness: 1,
                          isPhone: false,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                            child: isLoading
                                ? Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : CustomButton(
                                    title: "login".tr(),
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        login(context);
                                      }
                                    },
                                  )),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SignUpPage1(),
                                    
                              ));
                            },
                            child: Text("noacc".tr(),
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600])),
                          ),
                        ),
                        Center(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ForgetPssword(),
                              ));
                            },
                            child: Text("nopassword".tr(),
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[600])),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 

