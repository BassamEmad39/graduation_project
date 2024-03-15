import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/dialog.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/profilepage_1.dart';
import 'package:graduation_project/pages/profilepage_3.dart';

class ProfilePage2 extends StatelessWidget {
  const ProfilePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: ListView(
          children: [
            Column(
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
                            builder: (BuildContext context) =>
                                const ProfilePage3(),
                          ));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'الخصوصية',
                          style: TextStyle(
                              color: Color(0xff1A5653),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
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
                Container(
                  padding: EdgeInsets.all(16),
                  height: 800,
                  width: 450,
                  color: Color(0xffE0E0E0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('الإسم'),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('الرقم'),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('الرقم القومي'),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'الدرجة العلمية',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('العنوان'),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('الكلية'),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('الفسم'),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('الرقم البريدي'),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextField(
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
                                Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ProfilePage1(),
                          ));
                              },
                              child: Text(
                                'رجوع',
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
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const MyDialog(
                                        title: "تم تعديل البيانات بنجاح",
                                      );
                                    });
                              },
                              child: Text(
                                'تعديل',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
