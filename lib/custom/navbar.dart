import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff1A5653),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50.r,
            ),
            ListTile(
              title: Text(
                'الرئيسية',
                style: TextStyle(color: Colors.white),
              ),
              onTap: (){},
            ),
            ListTile(
              title: Text(
                'للتقديم',
                style: TextStyle(color: Colors.white),
              ),
              onTap: (){},
            ),
            ListTile(
              title: Text(
                'إتصل بنا',
                style: TextStyle(color: Colors.white),
              ),
              onTap: (){},
            ),
            ListTile(
              title: Text(
                'إنشاء حساب',
                style: TextStyle(color: Colors.white),
              ),
              onTap: (){},
            ),
            ListTile(
              title: Text(
                'تسجيل الدخول',
                style: TextStyle(color: Colors.white),
              ),
              onTap: (){},
            ),
            Text(
              '_______________________',
              style: TextStyle(color: Colors.white),
            ),
            ListTile(
              title: Text(
                'تسجيل الخروج',
                style: TextStyle(color: Colors.white),
              ),
              onTap: (){},
            ),
          ],
        ),
      ),
    );

  }
}
