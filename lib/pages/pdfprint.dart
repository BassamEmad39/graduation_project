import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';

class PdfPrint extends StatefulWidget {
  final String nameText;
  final String enameText;
  final String degreeText;
  final String facultyText;
  final String deptText;
  final String phoneText;
  final String emailText;
  final String scName1Text,scName2Text,scName3Text,scName4Text,scName5Text;
  final String tripleNameText,tripleNameText2,tripleNameText3,tripleNameText4,tripleNameText5;
  final String jobGradeText,jobGradeText2,jobGradeText3,jobGradeText4,jobGradeText5;
  const PdfPrint({
    super.key,
    this.columnWidths, required this.nameText, required this.enameText, required this.degreeText, required this.facultyText, required this.deptText, required this.phoneText, required this.emailText, required this.scName1Text, required this.scName2Text, required this.scName3Text, required this.scName4Text, required this.scName5Text, required this.tripleNameText, required this.tripleNameText2, required this.tripleNameText3, required this.tripleNameText4, required this.tripleNameText5, required this.jobGradeText, required this.jobGradeText2, required this.jobGradeText3, required this.jobGradeText4, required this.jobGradeText5,
  });
  final Map<int, TableColumnWidth>? columnWidths;

  @override
  State<PdfPrint> createState() => _PdfPrintState();
}

class _PdfPrintState extends State<PdfPrint> {
  final bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Center(
                child: Text("إستمارة مكافأة النشر العلمي الدولي",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 202, 34, 22),
                        shadows: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          )
                        ],
                        fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 5,
            ),
            const Center(
                child: Text("(نموذج رقم 2)",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 202, 34, 22),
                        shadows: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          )
                        ],
                        fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 10,
            ),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(children: [
                  Container(
                    color: const Color.fromARGB(255, 210, 209, 209),
                    child: const Center(
                      child: Text(
                        "شروط التقدم",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 3, 3, 148)),
                      ),
                    ),
                  ),
                ]),
                const TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          "1-أن يكون المتقدم عضو هيئة تدريس بأحد كليات جامعة كفر الشيخ \n 2-أن يتضمن البحث إسم جامعة كفر الشيخ كتعريف للباحث المتقدم \n 3- أن يتم استيفاء استمارة التقدم للحصول على المكافأة مع مراعاة كتابة جميع البيانات بشكل واضح \n  4- أن يرفع الباحث نسخة البحث المنشور pdf ولا تقبل النسخ الورقية للأبحاث \n 5- الا يكون قد تم صرف مكافأة النشر الدولي لنفس البحث سابقًا من جامعة كفر الشيخ \n 6- كتابة الإسم الثلاثي للمشاركين في البحث من جامعة كفر الشيخ باللغة العربية مع توضيح الدرجة الوظيفية وتوقيع سيادتهم توقيع حي بالموافقة على تقديم البحث من قبل الباحث الرئيسي"),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 210, 209, 209),
                      child: const Center(
                        child: Text(
                          "بيانات خاصة بالبحث",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 3, 3, 148)),
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
                    border: TableBorder.all(
                      color: Colors.black,
                    ),
                    children:  [
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'إسم الباحث باللغة العربية:',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.nameText),
                        ),
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
                    children:  [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.enameText),
                        ),
                        Center(
                            child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                    children:  [
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'الدرجة العلمية:',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.degreeText),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'الكلية: ',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.facultyText),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'القسم:',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.deptText),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'رقم الموبايل',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.phoneText),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'البريد الإلكتروني',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(widget.emailText),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ]),
                TableRow(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 210, 209, 209),
                      child: const Center(
                        child: Text(
                          "إقرار",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 3, 3, 148)),
                        ),
                      ),
                    ),
                  ],
                ),
                const TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
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
                  Text('شرط حصول البحث على جائزة:',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 202, 34, 22),
                          shadows: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            )
                          ],
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      '1- يحصل على الجائزة المتقدم ببخث نتشةر في مجلة علمية عالمية متخصصة و ذات معامل تأثيري طبقا للمادة رقم 20 من اللائحة و فاعدة بيانات ISI أثناء التقدم بالبحث في التخصصات العملية في التخصصات الإنسانية و الإجتماعية و التربوية و الاقتصادية طبقا لآخر إصدار لمعامل التأثير.'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      '2- لا تقبل البحوث تخت النشر أو المقبولة للنشر'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      '3- لا يجوز التقدم بالبحث للحصول على جائزة أخرى من جوائز الجامعة'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      '4- تستبعد البحوث غير المدون عليها إسم جامعة كفر الشيخ'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      '5- أن تكون جمي الأبحاث المقدمة قد تم نشرها خلال ثلاثة أعوام ميلادية من تاريخ نهاية التقدم'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      '6- في حالة توقف معامل التأثير للمجلة يتم الموافقة على الأبحاث المنشورة بها على ان تكون منشورة في نفس سنة التوقف و ليس بعدها'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      '7- تقبل الأبحاث المنشورة في مجلة علمية ذات مقياس رباعي Q1 على قاعدة بيانات Scopus.'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      '8- لا تقبل المقالات و الأوراق العلمية المنشورة بالمسميات الآتية :'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      'Review, Letter to Editor أو اية مسميات جديدة لا تتوافر فيها شروط و قواعد الابحاث العلمية.'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 202, 34, 22),
                        shadows: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          )
                        ],
                        fontWeight: FontWeight.bold),
                    'متطلبات التقديم',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      '1- ان يتم استيفاء استمارة التقدم للحصول على المكافأة موقعة من السيد أ.د/رئيس القسم العلمي و السيد أ.د/ةميل المليى لشئون الدراسات العليا و البحوث ثم اعتمادها من السيد أ.د/ عميد الكلية.'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      '2- أن يرفع العضو المقدم نسخة البحث المنشور بصيغة pdf و لا تقبل النسخ الورقية للأبحاث.'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      '3- كتابة الإسم الثلاثي للمشاركين في البحث من جامعة كفر الشيخ باللغة العربية مع توضيح الدرجة الوظيفية و توقيع سيادتهم توقيع حي بالموافقة على تقديم بحث من قبل الباحث الرئيسي'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
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
                  title: "print".tr(),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 15,
                ),
                CustomButton(
                  title: "next".tr(),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
