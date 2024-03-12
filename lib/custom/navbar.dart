import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/pages/contact_us.dart';
import 'package:graduation_project/pages/login.dart';
import 'package:graduation_project/pages/profilepage_1.dart';
import 'package:graduation_project/pages/signup1.dart';

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
            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage1(),));
              },
              child: CircleAvatar(
                child: Icon(Icons.person,size: 70,color: Colors.white,),
                backgroundColor: Color(0xffE0E0E0),
                radius: 50.r,
              ),
            ),
            ListTile(
              title: Text(
                'الرئيسية',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop(context);
              },
            ),
            ListTile(
              title: Text(
                'للتقديم',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'إتصل بنا',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const ContactUsPage(),
                ));
              },
            ),
            ListTile(
              title: Text(
                'إنشاء حساب',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const SignUpPage1(),
                ));
              },
            ),
            ListTile(
              title: Text(
                'تسجيل الدخول',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const LoginPage(),
                ));
              },
            ),
            Text(
              '_______________________',
              style: TextStyle(color: Colors.white),
            ),
            ListTile(
              leading: Image.asset('images/logout.png',height: 20.h,width: 20.h,),
              title: Text(
                'تسجيل الخروج',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
