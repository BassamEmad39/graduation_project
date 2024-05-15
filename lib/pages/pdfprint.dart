import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/custom/appbar.dart';

class PdfPrint extends StatelessWidget {
  const PdfPrint({super.key, this.columnWidths});
  final Map<int, TableColumnWidth>? columnWidths;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Container(
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          "شروط التقدم",
                          style: TextStyle(color: Color(0xff090a4d)),
                        ),
                      ),
                    ),
                  ]),
                  TableRow(
                    children: [
                      Text(
                          "1-أن يكون المتقدم عضو هيئة تدريس بأحد كليات جامعة كفر الشيخ \n 2-أن يتضمن البحث إسم جامعة كفر الشيخ كتعريف للباحث المتقدم \n 3- أن يتم استيفاء استمارة التقدم للحصول على المكافأة مع مراعاة كتابة جميع البيانات بشكل واضح \n  4- أن يرفع الباحث نسخة البحث المنشور pdf ولا تقبل النسخ الورقية للأبحاث \n 5- الا يكون قد تم صرف مكافأة النشر الدولي لنفس البحث سابقًا من جامعة كفر الشيخ \n 6- كتابة الإسم الثلاثي للمشاركين في البحث من جامعة كفر الشيخ باللغة العربية مع توضيح الدرجة الوظيفية وتوقيع سيادتهم توقيع حي بالموافقة على تقديم البحث من قبل الباحث الرئيسي"),
                    ],
                  ),
                  TableRow(
                    children: [
                      Container(
                        color: Colors.grey,
                        child: Center(
                          child: Text(
                            "بيانات خاصة بالبحث",
                            style: TextStyle(color: Color(0xff090a4d)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(children: [
                    Table(
                      columnWidths: {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(4)
                      },
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('إسم الباحث باللغة العربية:'),
                          ),
                          Text(''),
                        ]),
                      ],
                    ),
                  ]),TableRow(children: [
                    Table(
                      columnWidths: {
                        0: FlexColumnWidth(4),
                        1: FlexColumnWidth(1)
                      },
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Text(''),
                          Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Name'),
                          )),
                        ]),
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Table(
                      columnWidths: {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(4)
                      },
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('الدرجة العلمية:'),
                          ),
                          Text(''),
                        ]),TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('الكلية: '),
                          ),
                          Text(''),
                        ]),TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('القسم:'),
                          ),
                          Text(''),
                        ]),TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('رقم الموبايل'),
                          ),
                          Text(''),
                        ]),TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('البريد الإلكتروني'),
                          ),
                          Text(''),
                        ]),
                      ],
                    ),
                  ]),
                  TableRow(
                    children: [
                      Container(
                        color: Colors.grey,
                        child: Center(
                          child: Text(
                            "إقرار",
                            style: TextStyle(color: Color(0xff090a4d)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("أفر انا الموقع أدناه بأن: \n    1- البيانات الورادة باستمارة النشر الدولي صحيحة ومطابقة للواقع كما اقر بمسؤوليتي القانونية في حالة الإدلاء ببيانات خاطئة بهذه الإستمارة \n    2- الأبحاث المقدمة لنيل الجائزة لم تقدم من قبل للحصول على جائزة اخرى من جوائز الجامعة \n    3- اتعهد بتوزيع قيمة المكافأة المالية في حالة فوز البحث على المشاركين من جامعة كفر الشيخ واتحمل كامل المسؤولية القانونية على ذلك \n \n الإسم :                                                         التوقيع: \n"),
                      )
                    ]
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
