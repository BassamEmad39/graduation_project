import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfPrint extends StatelessWidget {
  const PdfPrint({
    super.key,
    this.columnWidths,
  });
  final Map<int, TableColumnWidth>? columnWidths;
  final bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Center(
              child: Text("إستمارة مكافأة النشر العلمي الدولي",
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold))),
          const SizedBox(
            height: 5,
          ),
          const Center(
              child: Text("(نموذج رقم 2)",
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold))),
          const SizedBox(
            height: 10,
          ),
          Table(
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(children: [
                Container(
                  color: Colors.grey,
                  child: const Center(
                    child: Text(
                      "شروط التقدم",
                      style: TextStyle(color: Color(0xff090a4d)),
                    ),
                  ),
                ),
              ]),
              const TableRow(
                children: [
                  Text(
                      "1-أن يكون المتقدم عضو هيئة تدريس بأحد كليات جامعة كفر الشيخ \n 2-أن يتضمن البحث إسم جامعة كفر الشيخ كتعريف للباحث المتقدم \n 3- أن يتم استيفاء استمارة التقدم للحصول على المكافأة مع مراعاة كتابة جميع البيانات بشكل واضح \n  4- أن يرفع الباحث نسخة البحث المنشور pdf ولا تقبل النسخ الورقية للأبحاث \n 5- الا يكون قد تم صرف مكافأة النشر الدولي لنفس البحث سابقًا من جامعة كفر الشيخ \n 6- كتابة الإسم الثلاثي للمشاركين في البحث من جامعة كفر الشيخ باللغة العربية مع توضيح الدرجة الوظيفية وتوقيع سيادتهم توقيع حي بالموافقة على تقديم البحث من قبل الباحث الرئيسي"),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    color: Colors.grey,
                    child: const Center(
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
                  columnWidths: const {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(4)
                  },
                  border: TableBorder.all(color: Colors.black),
                  children: const [
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('إسم الباحث باللغة العربية:'),
                      ),
                      Text(''),
                    ]),
                  ],
                ),
              ]),
              TableRow(children: [
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(4),
                    1: FlexColumnWidth(1)
                  },
                  border: TableBorder.all(color: Colors.black),
                  children: const [
                    TableRow(children: [
                      Text(''),
                      Center(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Name'),
                      )),
                    ]),
                  ],
                ),
              ]),
              TableRow(children: [
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(4)
                  },
                  border: TableBorder.all(color: Colors.black),
                  children: const [
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('الدرجة العلمية:'),
                      ),
                      Text(''),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('الكلية: '),
                      ),
                      Text(''),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('القسم:'),
                      ),
                      Text(''),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('رقم الموبايل'),
                      ),
                      Text(''),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
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
                    child: const Center(
                      child: Text(
                        "إقرار",
                        style: TextStyle(color: Color(0xff090a4d)),
                      ),
                    ),
                  ),
                ],
              ),
              const TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "أفر انا الموقع أدناه بأن: \n    1- البيانات الورادة باستمارة النشر الدولي صحيحة ومطابقة للواقع كما اقر بمسؤوليتي القانونية في حالة الإدلاء ببيانات خاطئة بهذه الإستمارة \n    2- الأبحاث المقدمة لنيل الجائزة لم تقدم من قبل للحصول على جائزة اخرى من جوائز الجامعة \n    3- اتعهد بتوزيع قيمة المكافأة المالية في حالة فوز البحث على المشاركين من جامعة كفر الشيخ واتحمل كامل المسؤولية القانونية على ذلك \n \n الإسم :                                                         التوقيع: \n"),
                )
              ])
            ],
          ),
          const SizedBox(
            height: 80,
          ),
         
          const SizedBox(
            height: 80,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'شرط حصول البحث على جائزة:',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '1- يحصل على الجائزة المتقدم ببخث نتشةر في مجلة علمية عالمية متخصصة و ذات معامل تأثيري طبقا للمادة رقم 20 من اللائحة و فاعدة بيانات ISI أثناء التقدم بالبحث في التخصصات العملية في التخصصات الإنسانية و الإجتماعية و التربوية و الاقتصادية طبقا لآخر إصدار لمعامل التأثير.'),
                SizedBox(
                  height: 5,
                ),
                Text('2- لا تقبل البحوث تخت النشر أو المقبولة للنشر'),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '3- لا يجوز التقدم بالبحث للحصول على جائزة أخرى من جوائز الجامعة'),
                SizedBox(
                  height: 5,
                ),
                Text('4- تستبعد البحوث غير المدون عليها إسم جامعة كفر الشيخ'),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '5- أن تكون جمي الأبحاث المقدمة قد تم نشرها خلال ثلاثة أعوام ميلادية من تاريخ نهاية التقدم'),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '6- في حالة توقف معامل التأثير للمجلة يتم الموافقة على الأبحاث المنشورة بها على ان تكون منشورة في نفس سنة التوقف و ليس بعدها'),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '7- تقبل الأبحاث المنشورة في مجلة علمية ذات مقياس رباعي Q1 على قاعدة بيانات Scopus.'),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '8- لا تقبل المقالات و الأوراق العلمية المنشورة بالمسميات الآتية :'),
                SizedBox(
                  height: 5,
                ),
                Text(
                    'Review, Letter to Editor أو اية مسميات جديدة لا تتوافر فيها شروط و قواعد الابحاث العلمية.'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'متطلبات التقديم',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '1- ان يتم استيفاء استمارة التقدم للحصول على المكافأة موقعة من السيد أ.د/رئيس القسم العلمي و السيد أ.د/ةميل المليى لشئون الدراسات العليا و البحوث ثم اعتمادها من السيد أ.د/ عميد الكلية.'),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '2- أن يرفع العضو المقدم نسخة البحث المنشور بصيغة pdf و لا تقبل النسخ الورقية للأبحاث.'),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '3- كتابة الإسم الثلاثي للمشاركين في البحث من جامعة كفر الشيخ باللغة العربية مع توضيح الدرجة الوظيفية و توقيع سيادتهم توقيع حي بالموافقة على تقديم بحث من قبل الباحث الرئيسي'),
                SizedBox(
                  height: 5,
                ),
                Text(
                    '4- ترفع الاستمارة و الابحاث و المقدمة و صورة بطاقة الرقم القومي على اللينك المرسل.'),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomButton(
                title: "Print",
                onPressed: (){},
              ),
              const SizedBox(
                width: 15,
              ),
              CustomButton(
                title: "Next",
                onPressed: () {},
              )
            ],
          )
        ],
      )),
    );
  }

 

  Future<void> _saveScreenshotAsPdf(Uint8List image) async {
    final pdf = pw.Document();

    final pdfImage = pw.MemoryImage(image);

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Image(pdfImage),
          );
        },
      ),
    );

    // Save the PDF file
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }
}
