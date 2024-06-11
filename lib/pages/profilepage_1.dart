import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/cubits/useridcubit.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/pages/manage_profile.dart';
import 'package:graduation_project/pages/profilepage_2.dart';

class ProfilePage1 extends StatefulWidget {
  const ProfilePage1({super.key});

  @override
  State<ProfilePage1> createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<ProfilePage1> {
  String id = '';
  late Future<String> _future;
  @override
  void initState() {
    final userIdCubit = BlocProvider.of<UserIdCubit>(context);
    if (userIdCubit.state is UserIdLoadedState) {
      id = userIdCubit.id!;
    }
    _future = getDocName();
    super.initState();
  }

  Future<String> getDocName() async {
    final response = await Dio().get("https://walid28.bsite.net/api/doctorapi/getdoctordata/$id");
    return response.data['doc_name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
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
                        builder: (BuildContext context) => const ProfilePage2(),
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FutureBuilder(
                          future: _future,
                          builder: (context, snapshot) {
                            if(snapshot.hasData){
                              return Text(
                            snapshot.data!,
                            style: TextStyle(
                                color: Color(0xff1A5653),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          );
                            }else {
                              return Text('');
                            }
                          },
                          
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/settings.png',
                          width: 16.h,
                          height: 16.h,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                SizedBox(
                  height: 75,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Color(0xffE0E0E0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      color: Color(0xff107869),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "newsearch".tr(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ManageProfile(),
                      ));
                    },
                    child: Text(
                      "terms".tr(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff696969)),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
