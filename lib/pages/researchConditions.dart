import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/conditions.dart';

class ResearchConditions extends StatelessWidget {
  const ResearchConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 45),
            child: ListView(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 100.r,
                    backgroundImage: const AssetImage(
                        'images/two-students-researching-for-project.jpg'),
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                const Text(
                  ":شروط البحث",
                  style: TextStyle(
                      color: Color.fromRGBO(26, 86, 83, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const MyText(text: ".pdf يجب ان يكون البحث المقدم في صورة"),
                    SizedBox(width: 7.w),
                    const DotListItem(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const MyText(
                        text: ".لا تقبل البحوث تحت النشر أو المقبولة للنشر"),
                    SizedBox(width: 7.w),
                    const DotListItem(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const MyText(
                        text:
                            ".لا يجوز التقدم بالبحث للحصول على جائزة أخري من جوائز الجامعة"),
                    SizedBox(width: 7.w),
                    const DotListItem(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const MyText(
                        text:
                            ".تستبعد البحوث غير المدون عليها اسم جامعة كفر الشيخ"),
                    SizedBox(width: 7.w),
                    const DotListItem(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const MyText(
                        text:
                            "أن تكون جميع الابحاث المقدمة قد تم نشرها خلال ثلاثة أعوام ميلادية"),
                    SizedBox(width: 7.w),
                    const DotListItem(),
                  ],
                ),
                const MyText(text: ".من تاريخ نهاية التقدم      "),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const MyText(
                        text:
                            ",في حالة توقف معامل التأثير للمجلة، يتم الموافقة على الابحاث المنشورة بها "),
                    SizedBox(width: 7.w),
                    const DotListItem(),
                  ],
                ),
                const MyText(
                    text: ".منشورة في نفس سنة التوقف وليس بعدها       "),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const MyText(
                        text:
                            ".Scopus على قاعدة بيانات , Q1 تقبل الابحاث المنشورة في مجلة علمية ذات مقياس رباعي"),
                    SizedBox(width: 7.w),
                    const DotListItem(),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  const MyText(
                      text:
                          ":لا تقبل المقالات والاوراق العلمية المنشورة بالمسميات الآتية "),
                  SizedBox(width: 7.w),
                  const DotListItem(),
                ]),
                const MyText(text: "Review, Letter to editor،      "),
                const MyText(
                    text:
                        "أو أية مسميات جديدة لا تتوافر فيها شروط وقواعد الابحاث العلمية      "),
                SizedBox(
                  height: 40.h,
                ),
                Center(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  color: Colors.grey[300],
                  width: 190.w,
                  height: 90.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "قم برفع البحث هنا",
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      Center(
                        child: Container(
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            height: 32,
                            elevation: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "ارفع البحث",
                                  style: TextStyle(
                                      color: Color.fromRGBO(105, 105, 105, 1),
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(width: 3),
                                Icon(Icons.file_upload_outlined,
                                    size: 18,
                                    color: Color.fromRGBO(26, 86, 83, 1))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              ])
            ])));
  }
}

class DotListItem extends StatelessWidget {
  const DotListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 3),
      width: 10,
      height: 6,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(126, 126, 126, 1),
        shape: BoxShape.circle,
      ),
    );
  }
}
