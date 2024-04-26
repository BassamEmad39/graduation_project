import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/searchinfo.dart';
import 'package:image_picker/image_picker.dart';

class ConfirmInformation extends StatefulWidget {
  const ConfirmInformation({super.key});

  @override
  State<ConfirmInformation> createState() => _ConfirmInformationState();
}

class _ConfirmInformationState extends State<ConfirmInformation> {
  String? imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 37),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.9),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.grey[300],
              ),
              width: 340.w,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "confirm your data".tr(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromRGBO(26, 86, 83, 1),
                            shadows: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("name".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      isPassword: false,
                      maxLiness: 1,
                      isPhone: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("name in english".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      isPassword: false,
                      maxLiness: 1,
                      isPhone: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("phone".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      isPassword: false,
                      maxLiness: 1,
                      isPhone: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("national ID".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      isPassword: false,
                      maxLiness: 1,
                      isPhone: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("degree2".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      isPassword: false,
                      maxLiness: 1,
                      isPhone: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("address2".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      isPassword: false,
                      maxLiness: 1,
                      isPhone: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("faculty".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      isPassword: false,
                      maxLiness: 1,
                      isPhone: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("section2".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      isPassword: false,
                      maxLiness: 1,
                      isPhone: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("post number".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      isPassword: false,
                      maxLiness: 1,
                      isPhone: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  spreadRadius: 0,
                  blurRadius: 0,
                ),
              ],
              color: Colors.grey[300],
            ),
            width: 200.w,
            height: 80.h,
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  "upload the card image here".tr(),
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                      color: Color.fromRGBO(26, 86, 83, 1),
                      shadows: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 1),
                        )
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 120,
                  height: 30,
                  color: Colors.white,
                  child: MaterialButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            height: 150,
                            color: Colors.white,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Center(
                                      child: InkWell(
                                        onTap: () async {
                                          // ignore: invalid_use_of_visible_for_testing_member
                                          var file = await ImagePicker.platform
                                              .getImageFromSource(
                                                  source: ImageSource.camera);
                                          if (file != null) {
                                            imagePath = file.path;
                                            setState(() {});
                                          }
                                        },
                                        child: Ink(
                                          height: 50,
                                          width: 50,
                                          child: Column(
                                            children: [
                                              Icon(Icons.camera),
                                              Text("camera".tr())
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: InkWell(
                                      onTap: () async {
                                        // ignore: invalid_use_of_visible_for_testing_member
                                        var file = await ImagePicker.platform
                                            .getImageFromSource(
                                                source: ImageSource.gallery);
                                        if (file != null) {
                                          imagePath = file.path;
                                          setState(() {});
                                        }
                                      },
                                      child: Ink(
                                        height: 50,
                                        width: 55,
                                        child: Column(
                                          children: [
                                            Icon(Icons.image),
                                            Text("gallery".tr())
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("card photo".tr(),
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                )),
                            Icon(
                              Icons.file_upload_outlined,
                              size: 15,
                              color: Color.fromARGB(255, 25, 124, 101),
                            ),
                          ])),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          if (imagePath != null) Image.file(File(imagePath!)),
          SizedBox(
            height: 30,
          ),
          Center(
            child: CustomButton(
              title: "next".tr(),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const SearchInfo(),
                ));
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
