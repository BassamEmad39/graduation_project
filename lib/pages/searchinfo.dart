import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:graduation_project/pages/researchConditions.dart';

class SearchInfo extends StatefulWidget {
  final String nameText;
  final String enameText;
  final String degreeText;
  final String facultyText;
  final String deptText;
  final String phoneText;
  final String emailText;
   SearchInfo(
      {super.key,
      required this.nameText,
      required this.enameText,
      required this.degreeText,
      required this.facultyText,
      required this.deptText,
      required this.phoneText,
      required this.emailText});

  @override
  State<SearchInfo> createState() => _SearchInfoState();
}

class _SearchInfoState extends State<SearchInfo> {
  final formKey = GlobalKey<FormState>();
  String? choosse;
  String? choosse2;
  final enTitleController = TextEditingController();
  final researchDateController = TextEditingController();
  final researchLocationController = TextEditingController();
  final magController = TextEditingController();
  final labController = TextEditingController();
  final issnController = TextEditingController();
  final scopusController = TextEditingController();
  final scName1Controller = TextEditingController();
  final tripleNameController = TextEditingController();
  final jobGradeController = TextEditingController();
  final scName2Controller = TextEditingController();
  final tripleNameController2 = TextEditingController();
  final jobGradeController2 = TextEditingController();
  final scName3Controller = TextEditingController();
  final tripleNameController3 = TextEditingController();
  final jobGradeController3 = TextEditingController();
  final scName4Controller = TextEditingController();
  final tripleNameController4 = TextEditingController();
  final jobGradeController4 = TextEditingController();
  final scName5Controller = TextEditingController();
  final tripleNameController5 = TextEditingController();
  final jobGradeController5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "research data".tr(),
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
                      const SizedBox(height: 25),
                      Text(
                        "research title in English".tr(),
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 5),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "field is required.".tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "date of publication of the research".tr(),
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "where to conduct the search in Arabic".tr(),
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 5),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "field is required.".tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "your search link".tr(),
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 5),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "field is required.".tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "name of magazine in Arabic".tr(),
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 5),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "field is required.".tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "the impact factor of a publishing journal".tr(),
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 5),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "field is required.".tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "the standard serial number of the journal".tr(),
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 5),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "field is required.".tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "the quadrant in which the journal is located (Q) for papers published on SCOUPS"
                            .tr(),
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(height: 5),
                      MyTextField(
                        isPassword: false,
                        maxLiness: 1,
                        isPhone: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "field is required.".tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("first".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  "the scientific name written on the search in Arabic"
                                      .tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: scName1Controller,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("the triple name in Arabic".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: tripleNameController,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("job grade in Arabic".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: jobGradeController,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("first".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  "the scientific name written on the search in Arabic"
                                      .tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: scName2Controller,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("the triple name in Arabic".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: tripleNameController2,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("job grade in Arabic".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: jobGradeController2,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("third".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  "the scientific name written on the search in Arabic"
                                      .tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: scName3Controller,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("the triple name in Arabic".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: tripleNameController3,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("job grade in Arabic".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: jobGradeController3,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("fourth".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  "the scientific name written on the search in Arabic"
                                      .tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: scName4Controller,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("the triple name in Arabic".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: tripleNameController4,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("job grade in Arabic".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: jobGradeController4,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("fifth".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  "the scientific name written on the search in Arabic"
                                      .tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: scName5Controller,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("the triple name in Arabic".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: tripleNameController5,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("job grade in Arabic".tr(),
                                  style: TextStyle(
                                    color: Color.fromRGBO(26, 86, 83, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              MyTextField(
                                isPassword: false,
                                maxLiness: 1,
                                isPhone: false,
                                controller: jobGradeController5,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: CustomButton(
                  title: "next".tr(),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                             ResearchConditions(
                          nameText: widget.nameText,
                          enameText: widget.enameText,
                          degreeText: widget.degreeText,
                          facultyText: widget.facultyText,
                          deptText: widget.deptText,
                          phoneText: widget.phoneText,
                          emailText: widget.emailText,
                          scName1Text: scName1Controller.text,
                          scName2Text:  scName2Controller.text,
                          scName3Text:  scName3Controller.text,
                          scName4Text:  scName4Controller.text,
                          scName5Text:  scName5Controller.text,
                          tripleNameText: tripleNameController.text,
                          tripleNameText2: tripleNameController2.text,
                          tripleNameText3: tripleNameController3.text,
                          tripleNameText4: tripleNameController4.text,
                          tripleNameText5:  tripleNameController5.text,
                          jobGradeText: jobGradeController.text,
                          jobGradeText2: jobGradeController2.text,
                          jobGradeText3: jobGradeController3.text,
                          jobGradeText4: jobGradeController4.text,
                          jobGradeText5: jobGradeController5.text,
                        ),
                      ));
                    }
                  },
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
