import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/cubits/useridcubit.dart';

import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/dialog.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/profilepage_1.dart';
import 'package:graduation_project/pages/profilepage_3.dart';
import 'package:pinput/pinput.dart';

class ProfilePage2 extends StatefulWidget {
  const ProfilePage2({super.key});

  @override
  State<ProfilePage2> createState() => _ProfilePage2State();
}

class _ProfilePage2State extends State<ProfilePage2> {
  String id = '';
  late Future<Map<String, dynamic>> _future;
  @override
  void initState() {
    final userIdCubit = BlocProvider.of<UserIdCubit>(context);
    if (userIdCubit.state is UserIdLoadedState) {
      id = userIdCubit.id!;
    }
    _future = getDocData();
    super.initState();
  }

  Future<Map<String, dynamic>> getDocData() async {
    final response = await Dio()
        .get("https://walid28.bsite.net/api/doctorapi/getdoctordata/$id");
    return response.data;
  }

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final idController = TextEditingController();
  final degreeController = TextEditingController();
  final addressController = TextEditingController();
  final facultyController = TextEditingController();
  final deptController = TextEditingController();
  final postNumController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xffE0E0E0),
                  radius: 100.r,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const ProfilePage3(),
                    ));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/settings.png',
                        width: 16.h,
                        height: 16.h,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "privacy".tr(),
                        style: TextStyle(
                            color: Color(0xff1A5653),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                padding: EdgeInsets.all(16),
                height: 800,
                width: 450,
                color: Color(0xffE0E0E0),
                child: FutureBuilder(
                  future: _future,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      nameController.setText(snapshot.data!["doc_name"]);
                      phoneController.setText(snapshot.data!["doc_phoneno"]);
                      idController.setText(snapshot.data!["doc_nid"]);
                      degreeController.setText(snapshot.data!["sntf_degree"]);
                      addressController.setText(snapshot.data!["doc_address"]);
                      facultyController.setText(snapshot.data!["doc_faculty"]);
                      deptController.setText(snapshot.data!["doc_dept"]);
                      postNumController.setText(snapshot.data!["doc_postcode"]);
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("name".tr()),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: nameController,
                          isPassword: false,
                          maxLiness: 1,
                          isPhone: false,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("phone".tr()),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: phoneController,
                          isPassword: false,
                          maxLiness: 1,
                          isPhone: true,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("nationalid".tr()),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: idController,
                          isPassword: false,
                          maxLiness: 1,
                          isPhone: true,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "degree".tr(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: degreeController,
                          isPassword: false,
                          maxLiness: 1,
                          isPhone: false,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("address".tr()),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: addressController,
                          isPassword: false,
                          maxLiness: 1,
                          isPhone: false,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("faculty".tr()),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: facultyController,
                          isPassword: false,
                          maxLiness: 1,
                          isPhone: false,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("section".tr()),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: deptController,
                          isPassword: false,
                          maxLiness: 1,
                          isPhone: false,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("post number".tr()),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controller: postNumController,
                          isPassword: false,
                          maxLiness: 1,
                          isPhone: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: Color(0xff107869),
                              child: MaterialButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return MyDialog(
                                          title: "modified".tr(),
                                        );
                                      });
                                },
                                child: Text(
                                  "edit".tr(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              color: Color(0xff107869),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const ProfilePage1(),
                                  ));
                                },
                                child: Text(
                                  "back".tr(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
