// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/pages/confirminfo.dart';
import 'package:graduation_project/pages/contact_us.dart';
import 'package:graduation_project/pages/forgetpassword.dart';
import 'package:graduation_project/pages/homepage.dart';
import 'package:graduation_project/pages/loading_page.dart';
import 'package:graduation_project/pages/login.dart';
import 'package:graduation_project/pages/manage_profile.dart';
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

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      path: 'assets/translations',
      supportedLocales: [Locale('en'), Locale('ar')],
      fallbackLocale: Locale('ar'),
      startLocale: Locale('ar'),
      child: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String language = 'ar';
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(441, 886),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) => MaterialApp(
              locale: context.locale,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              debugShowCheckedModeBanner: false,
              home: child,
            ),
        child: const ConfirmInformation());
  }
}
