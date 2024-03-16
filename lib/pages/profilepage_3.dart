import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/dialog.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/profilepage_2.dart';

class ProfilePage3 extends StatelessWidget {
  const ProfilePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('الإيميل'),
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
                Text('كلمة السر'),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                  isPassword: true,
                  maxLiness: 1,
                  isPhone: false,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
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
                    'رجوع',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
