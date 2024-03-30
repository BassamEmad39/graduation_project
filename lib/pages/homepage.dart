import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/navbar.dart';
import 'dart:ui' as ui;

import 'package:graduation_project/pages/researchConditions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPress() {
    String currentLang = context.locale.languageCode;
    context.setLocale(Locale(currentLang == 'en' ? 'ar' : 'en'));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: MainAppBar(onPressed: onPress),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: CircleAvatar(
                  radius: 100.r,
                  backgroundImage: AssetImage('images/suits.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("scientific1".tr()),
                    Text("scientific2".tr()),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  _blurredImage(),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "applyresearch".tr(),
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          height: 40,
                          minWidth: 100,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ResearchConditions(),
                            ));
                          },
                          child: Text(
                            "clickhere".tr(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          color: Color(0xff107869),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Column(
                children: [],
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "importantinstructions".tr(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff1A5653)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "instructionline".tr(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    Text("instruction1".tr()),
                    Text("instruction2".tr()),
                    Text("instruction3".tr()),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: Column(
                  children: [
                    Text("homepageline1".tr()),
                    Text("homepageline2".tr()),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0xff1A5653),
                          foregroundColor: Colors.white,
                          child: Container(
                            child: Image.asset(
                              'images/group.png',
                              color: Colors.white,
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 6),
                        height: 55.h,
                        width: 90.w,
                        color: Color(0xff999999),
                        child: Column(
                          children: [
                            Text('100'),
                            Text(
                              "homepagebottom1".tr(),
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.topCenter,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Color(0xff1A5653),
                            foregroundColor: Colors.white,
                            child: Container(
                              child: Image.asset(
                                'images/contact.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 6),
                          height: 55.h,
                          width: 90.w,
                          color: Color(0xff999999),
                          child: Column(
                            children: [
                              Text('1700'),
                              Text(
                                "homepagebottom2".tr(),
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0xff1A5653),
                          foregroundColor: Colors.white,
                          child: Container(
                            child: Image.asset(
                              'images/dollar.png',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 6),
                        height: 55.h,
                        width: 90.w,
                        color: Color(0xff999999),
                        child: Column(
                          children: [
                            Text('2000000'),
                            Text(
                              "homepagebottom3".tr(),
                              style: TextStyle(fontSize: 9),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  MainAppBar({super.key, required this.onPressed});

  String buttonText = 'EN';

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(
            'title'.tr(),
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff1A5653)),
          ),
          Expanded(
              child: Image.asset(
            'images/logo (1).png',
            height: 32,
            width: 80,
          )),
        ],
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(5),
          child: InkWell(
            onTap: () {
              onPressed();
            },
            child: Ink(
              height: 40.h,
              width: 40.h,
              color: Color(0xff1A5653),
              child: Center(
                  child: Text(
                "buttonText".tr(),
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Widget _blurredImage() {
  return ImageFiltered(
    imageFilter: ui.ImageFilter.blur(sigmaX: 5, sigmaY: 5),
    child: Image.asset(
      "images/200pound.gif",
      fit: BoxFit.cover,
      width: double.infinity,
      height: 180,
    ),
  );
}
