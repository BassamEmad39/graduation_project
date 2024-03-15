import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/searchinfo.dart';

class ConfirmInformation extends StatefulWidget {
  const ConfirmInformation({super.key});

  @override
  State<ConfirmInformation> createState() => _ConfirmInformationState();
}

class _ConfirmInformationState extends State<ConfirmInformation> {
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
              height: 800.h,
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Text(
                        "لتأكيد بياناتك",
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
                    Text("الاسم",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(isPassword: false, maxLiness: 1,isPhone: false,),
                    SizedBox(
                      height: 10,
                    ),
                    Text("الرقم",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(isPassword: false, maxLiness: 1,isPhone: true,),
                    SizedBox(
                      height: 10,
                    ),
                    Text("الرقم القومي",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(isPassword: false, maxLiness: 1,isPhone: true,),
                    SizedBox(
                      height: 10,
                    ),
                    Text("الدرجة العلمية",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(isPassword: false, maxLiness: 1,isPhone: false,),
                    SizedBox(
                      height: 10,
                    ),
                    Text("العنوان",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(isPassword: false, maxLiness: 1,isPhone: false,),
                    SizedBox(
                      height: 10,
                    ),
                    Text("الكلية",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(isPassword: false, maxLiness: 1,isPhone: false,),
                    SizedBox(
                      height: 10,
                    ),
                    Text("القسم",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(isPassword: false, maxLiness: 1,isPhone: false,),
                    SizedBox(
                      height: 10,
                    ),
                    Text("الرقم البريدي",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(isPassword: false, maxLiness: 1,isPhone: true,),
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
                const Text(
                  "قم برفع صورة البطاقة هنا",
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
                      onPressed: () {},
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("صورة البطاقة",
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
          Center(
            child: CustomButton(
              title: "التالي",
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
