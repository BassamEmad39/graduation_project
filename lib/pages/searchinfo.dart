import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/textField.dart';
import 'package:graduation_project/pages/signup3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DropdownButton2 Demo',
      home: SearchInfo(),
    );
  }
}

class SearchInfo extends StatefulWidget {
  const SearchInfo({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
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
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.grey[300],
                ),
                width: 380.w,
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
                    const SizedBox(height: 25),
                    const Text(
                      "عنـــوان البحث باللغــة الانجليـة",
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
                    const Text(
                      "تاريخ نشر البحث",
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
                    const Text(
                      "مكان إجراء البحث",
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
                    const Text(
                      "الرابط الخاص للبحث",
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
                    const Text(
                      "اســـم المجلـــة",
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
                    const Text(
                      "المعامل التأثيري لمجلة النشر",
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
                    const Text(
                      "الرقم المعياري التسلسلي للمجلة",
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
                    const Text(
                      "الربع الواقع به المجلة (Q) بالنسبة للأبحاث المنشورة على SCOUPS",
                      style: TextStyle(
                        color: Color.fromRGBO(26, 86, 83, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const MyTextField(
                      isPassword: false,
                      maxLiness: 1,
                      isPhone: false,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "هل يوجد مشاركون في البحث من أعضاء هيئة التدريس بجامعة  ",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Color.fromRGBO(26, 86, 83, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const Text(
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: RadioListTile(
                            title: const Text(
                              "يوجد",
                            ),
                            activeColor: const Color.fromRGBO(26, 86, 83, 1),
                            visualDensity: const VisualDensity(
                                horizontal: 0,
                                vertical: -4), // تعديل حجم الدائرة
                            value: "يوجد",
                            groupValue: choosse,
                            onChanged: (String? val) {
                              setState(() {
                                choosse = val;
                              });
                            },
                            contentPadding: EdgeInsets
                                .zero, // ضبط المسافة بين الدائرة والتيكست
                          ),
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: RadioListTile(
                            dense: false,
                            title: const Text(
                              "لا يوجد",
                            ),
                            activeColor: const Color.fromRGBO(26, 86, 83, 1),
                            visualDensity: const VisualDensity(
                                horizontal: 0,
                                vertical: -4), // تعديل حجم الدائرة
                            value: "لا يوجد",
                            groupValue: choosse,
                            onChanged: (String? val) {
                              setState(() {
                                choosse = val;
                              });
                            },
                            contentPadding: EdgeInsets.zero,
                            // ضبط المسافة بين الدائرة والتيكست
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            if (choosse == 'يوجد') const DropdownButton2Section(),
            if (choosse == 'لا يوجد') const Second(),
            const SizedBox(height: 30),
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
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          width: 180.w,
          height: 110.h,
          alignment: Alignment.center,
          child: Column(children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              "الاستمارة",
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
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              title: "طباعة",
              onPressed: () {},
            ),
          ]),
        ),
        Container(
          width: 260.w,
          height: 110.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                title: "رجوع",
                onPressed: () {},
              ),
              Container(
                width: 115,
                height: 40,
                child: MaterialButton(
                  elevation: 4,
                  color: Colors.grey,
                  onPressed: () {},
                  child: const Text("تعديل",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ],
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 0, left: 183, top: 5),
                child: Text(
                  " اختر عدد المشاركين في البحث",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
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
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_downward_outlined,
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 0, left: 210, top: 5),
                child: Text(
                  'المشارك ال${_translateIndexToArabic(i + 1)}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
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
            ),
          ],
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "الاسم العلمي المدون على البحث",
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
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "الاسم الثلاثي باللغة العربية",
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
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "الدرجة الوظيفية",
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
        return 'اول';
      case 2:
        return 'ثاني';
      case 3:
        return 'ثالث';
      case 4:
        return 'رابع';
      case 5:
        return 'خامس';
      default:
        return '';
    }
  }
}
