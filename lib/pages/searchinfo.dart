import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:easy_localization/easy_localization.dart';

class SearchInfo extends StatefulWidget {
  const SearchInfo({super.key});

  @override
  State<SearchInfo> createState() => _SearchInfoState();
}

class _SearchInfoState extends State<SearchInfo> {
  final formKey = GlobalKey<FormState>();
  String? choosse;
  String? choosse2;

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
                      Text(
                        "are there faculty members at Kafrelsheikh University participating in the research?"
                            .tr(),
                        style: TextStyle(
                          color: Color.fromRGBO(26, 86, 83, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RadioListTile(
                              title: Text(
                                "yes".tr(),
                              ),
                              activeColor: const Color.fromRGBO(26, 86, 83, 1),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              value: "yes".tr(),
                              groupValue: choosse,
                              onChanged: (String? val) {
                                setState(() {
                                  choosse = val;
                                });
                              },
                              contentPadding: EdgeInsets.zero,
                            ),
                            RadioListTile(
                              dense: false,
                              title: Text(
                                "no".tr(),
                              ),
                              activeColor: const Color.fromRGBO(26, 86, 83, 1),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              value: "no".tr(),
                              groupValue: choosse,
                              onChanged: (String? val) {
                                setState(() {
                                  choosse = val;
                                });
                              },
                              contentPadding: EdgeInsets.zero,
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              if (choosse == "yes".tr()) const DropdownButton2Section(),
              const SizedBox(height: 30),
              Center(
                child: CustomButton(
                  title: "next".tr(),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const SearchInfo(),
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

class DropdownButton2Section extends StatefulWidget {
  const DropdownButton2Section({Key? key}) : super(key: key);

  @override
  _DropdownButton2SectionState createState() => _DropdownButton2SectionState();
}

class _DropdownButton2SectionState extends State<DropdownButton2Section> {
  final List<String> numbers = ['1', '2', '3', '4', '5'];
  String? selectedValue;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 35, left: 35),
                child: Text(
                  "choose the number of research participants".tr(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(26, 86, 83, 1),
                    shadows: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 1),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: const Row(
              children: [
                Expanded(
                  child: Text(""),
                ),
              ],
            ),
            items: numbers
                .map((String item) => DropdownMenuItem<String>(
                      alignment: Alignment.centerRight,
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(26, 86, 83, 1),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
                selectedIndex = int.tryParse(value!);
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 40,
              width: 350,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Colors.white,
              ),
              elevation: 2,
            ),
            iconStyleData: IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down_sharp,
              ),
              iconSize: 30,
              iconEnabledColor: Color.fromRGBO(26, 86, 83, 1),
            ),
            dropdownStyleData: DropdownStyleData(
              direction: DropdownDirection.left,
              maxHeight: 200,
              width: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.9),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        ),
        const SizedBox(height: 20),
        if (selectedIndex != null) ..._buildParticipants(selectedIndex!),
      ],
    );
  }

  List<Widget> _buildParticipants(int index) {
    List<Widget> participants = [];
    for (int i = 0; i < index; i++) {
      participants.addAll([
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                '       ${_translateIndexToArabic(i + 1)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromRGBO(26, 86, 83, 1),
                  shadows: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
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
          width: 340,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "the scientific name written on the search in Arabic".tr(),
                style: TextStyle(
                  color: Color.fromRGBO(26, 86, 83, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  isDense: true,
                  filled: true,
                  fillColor: Color.fromRGBO(255, 253, 253, 1),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "field is required.".tr();
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "the triple name in Arabic".tr(),
                style: TextStyle(
                  color: Color.fromRGBO(26, 86, 83, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  isDense: true,
                  filled: true,
                  fillColor: Color.fromRGBO(255, 253, 253, 1),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "field is required.".tr();
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "job grade in Arabic".tr(),
                style: TextStyle(
                  color: Color.fromRGBO(26, 86, 83, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  isDense: true,
                  filled: true,
                  fillColor: Color.fromRGBO(255, 253, 253, 1),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "field is required.".tr();
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ]);
    }
    return participants;
  }

  String _translateIndexToArabic(int index) {
    switch (index) {
      case 1:
        return "first".tr();
      case 2:
        return "second".tr();
      case 3:
        return "third".tr();
      case 4:
        return "fourth".tr();
      case 5:
        return "fifth".tr();
      default:
        return '';
    }
  }
}
