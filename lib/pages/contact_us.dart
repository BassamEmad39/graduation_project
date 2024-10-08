import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final Uri _url=Uri.parse('https://maps.app.goo.gl/qwqayjuVric6etjy8');
  Color color = Color(0xffEEEEEE);
  Color iconColor = Color(0xFF107869);
  Color fontColor = Color(0xff696969);
  Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MyAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset('images/photo-1577563908411-5077b6dc7624 (1).png'),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Ink(
                          height: 100.h,
                          width: 100.h,
                          color: Color(0xffEEEEEE),
                          child: Center(
                              child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                'images/phone.png',
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "contactus".tr(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff696969),
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "002-047-3109590",
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xff696969)),
                              ),
                            ],
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              iconColor = Colors.white;
                              color = Color(0xFF107869);
                              fontColor = Colors.white;
                              scaffoldKey.currentState!
                                  .showBottomSheet((context) => Container(
                                        padding: EdgeInsets.all(16),
                                        height: 600.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Color(0xffE0E0E0),
                                        ),
                                        child: ListView(
                                          children: [
                                            Column(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Text(
                                                      "name".tr(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff696969),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 25),
                                                    ),
                                                    SizedBox(
                                                      height: 11,
                                                    ),
                                                    MyTextField(
                                                      isPassword: false,
                                                      maxLiness: 1,
                                                      isPhone: false,
                                                    )
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Text(
                                                      "mail".tr(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff696969),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 25),
                                                    ),
                                                    SizedBox(
                                                      height: 11,
                                                    ),
                                                    MyTextField(
                                                      isPhone: false,
                                                      isPassword: false,
                                                      maxLiness: 1,
                                                    )
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Text(
                                                      "message".tr(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff696969),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 25),
                                                    ),
                                                    SizedBox(
                                                      height: 11,
                                                    ),
                                                    MyTextField(
                                                      isPhone: false,
                                                      isPassword: false,
                                                      maxLiness: 5,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 15),
                                                Center(
                                                  child: Container(
                                                    width: 110,
                                                    height: 40,
                                                    color: Color(0xff107869),
                                                    child: MaterialButton(
                                                      onPressed: () {},
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.arrow_back,
                                                            color: Colors.white,
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text(
                                                            "send".tr(),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ));
                            });
                          },
                          child: Ink(
                            height: 100.h,
                            width: 100.h,
                            color: color,
                            child: Center(
                                child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Image.asset(
                                  'images/message.png',
                                  color: iconColor,
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                   "messageUs".tr(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: fontColor,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "President@kfs.edu.eg",
                                  style:
                                      TextStyle(fontSize: 8, color: fontColor),
                                ),
                              ],
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      InkWell(
                        onTap: _launchUrl,
                        child: Ink(
                          height: 100.h,
                          width: 100.h,
                          color: Color(0xffEEEEEE),
                          child: Center(
                              child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                'images/location.png',
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "address".tr(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff696969),
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  "addresss1".tr(),
                                  style: TextStyle(
                                      fontSize: 8, color: Color(0xff696969)),
                                ),
                              ),
                              Text(
                                "addresss2".tr(),
                                style: TextStyle(
                                    fontSize: 8, color: Color(0xff696969)),
                              ),
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
