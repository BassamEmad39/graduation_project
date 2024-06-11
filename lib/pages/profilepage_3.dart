import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/cubits/useridcubit.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/dialog.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/profilepage_2.dart';
import 'package:pinput/pinput.dart';

class ProfilePage3 extends StatefulWidget {
  const ProfilePage3({super.key});

  @override
  State<ProfilePage3> createState() => _ProfilePage3State();
}

class _ProfilePage3State extends State<ProfilePage3> {
  String id='';
  late Future<Map<String,dynamic>> _future;
  @override
  void initState(){
    final userIdCubit=BlocProvider.of<UserIdCubit>(context);
    if (userIdCubit.state is UserIdLoadedState){
      id=userIdCubit.id!;
    }
    _future= getDocAuthData();
    super.initState();
  }
  Future<Map<String,dynamic>> getDocAuthData()async{
    final response = await Dio().get("https://walid28.bsite.net/api/doctorapi/getdoctordata/$id");
    return response.data;
  }
    final emailController = TextEditingController();
    final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
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
              padding: EdgeInsets.all(16),
              height: 230.h,
              width: 450,
              color: Color(0xffE0E0E0),
              child: FutureBuilder(
                future: _future,
                builder: (context, snapshot) {
                  if(snapshot.hasData){
                    emailController.setText(snapshot.data!["doc_email"]);
                    passController.setText(snapshot.data!["doc_pass"]);
                  }
                  return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("email".tr()),
                    SizedBox(
                      height: 10,
                    ),
                    MyTextField(
                      controller: emailController,
                      isPassword: false,
                      maxLiness: 1,
                      isPhone: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("password".tr()),
                    SizedBox(
                      height: 10,
                    ),
                    MyTextField(
                      controller: passController,
                      isPassword: true,
                      maxLiness: 1,
                      isPhone: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                );
                },
                
              ),
            ),
            SizedBox(
              height: 10,
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
                            return  MyDialog(
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
                        builder: (BuildContext context) => const ProfilePage2(),
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
        ),
      ),
    );
  }
}
