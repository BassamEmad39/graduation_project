import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/signup3.dart';

class SearchInfo extends StatefulWidget {
  const SearchInfo({super.key});

  @override
  State<SearchInfo> createState() => _SearchInfoState();
}

class _SearchInfoState extends State<SearchInfo> {
  String? choosse;
  String? choosse2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: ListView(padding: EdgeInsets.only(top: 50.h), children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 37),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.grey[300],
                  ),
                  width: 380.w,
                  height: 950.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Center(
                        child: Text(
                          "بيانات خاصة بالبحث",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
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
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "عنـــوان البحـث باللغــة الانجليزيـة",
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MyTextField(isPassword: false, maxLiness: 1),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "تاريخ نشر البحث",
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MyTextField(isPassword: false, maxLiness: 1),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "مكان إجراء البحث",
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MyTextField(isPassword: false, maxLiness: 1),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "الرابط الخاص للبحث",
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MyTextField(isPassword: false, maxLiness: 1),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "اســـم المجلـــة",
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MyTextField(isPassword: false, maxLiness: 1),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "المعامل التأثيري لمجلة النشر",
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MyTextField(isPassword: false, maxLiness: 1),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "الرقم المعياري التسلسلي للمجلة",
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MyTextField(isPassword: false, maxLiness: 1),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "الربع الواقع به المجلة (Q) بالنسبة للأبحاث المنشورة على SCOUPS",
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MyTextField(isPassword: false, maxLiness: 1),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "هل يوجد مشاركون في البحث من أعضاء هيئة التدريس بجامعة",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "كفر الشيخ؟",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RadioListTile(
                            title: Text(
                              "يوجد",
                            ),
                            activeColor: Color.fromRGBO(26, 86, 83, 1),
                            visualDensity: VisualDensity(
                                horizontal: 0,
                                vertical: -4), // تعديل حجم الدائرة
                            value: "يوجد",
                            groupValue: choosse2,
                            onChanged: (String? val) {
                              setState(() {
                                choosse2 = val;
                              });
                            },
                            contentPadding: EdgeInsets
                                .zero, // ضبط المسافة بين الدائرة والتيكست
                          ),
                          RadioListTile(
                            dense: false,
                            title: Text(
                              "لا يوجد",
                            ),
                            activeColor: Color.fromRGBO(26, 86, 83, 1),
                            visualDensity: VisualDensity(
                                horizontal: 0,
                                vertical: -4), // تعديل حجم الدائرة
                            value: "لا يوجد",
                            groupValue: choosse2,
                            onChanged: (String? val) {
                              setState(() {
                                choosse2 = val;
                              });
                            },
                            contentPadding: EdgeInsets.zero,
                            // ضبط المسافة بين الدائرة والتيكست
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ]));
  }
}
