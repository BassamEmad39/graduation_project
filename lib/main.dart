// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/pages/confirminfo.dart';
import 'package:graduation_project/pages/contact_us.dart';
import 'package:graduation_project/pages/forgetpassword.dart';
import 'package:graduation_project/pages/homepage.dart';
import 'package:graduation_project/pages/loading_page.dart';
import 'package:graduation_project/pages/login.dart';
import 'package:graduation_project/pages/profilepage_1.dart';
import 'package:graduation_project/pages/profilepage_2.dart';
import 'package:graduation_project/pages/profilepage_3.dart';
import 'package:graduation_project/pages/researchConditions.dart';
import 'package:graduation_project/pages/searchinfo.dart';
import 'package:graduation_project/pages/signup1.dart';
import 'package:graduation_project/pages/signup2.dart';
import 'package:graduation_project/pages/signup3.dart';
import 'package:graduation_project/pages/signup4.dart';
import 'package:graduation_project/pages/verfication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(441, 886),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              home: child,
            ),
child: const HomePage());
  }
}
