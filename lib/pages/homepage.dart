import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: MainAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 100.r,
                    backgroundImage: AssetImage('images/suits.jpg'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'يعد نشر البحث العلمي من المهام الأكثر الأهمية التي من المفترض أن يضطلع بها أعضاء هيئة التدريس والباحثون لدى جامعة كفر الشيخ .'),
                Text(
                    'لذا وُضِع برنامج الجوائز البحثية بغية الإشادة بالجهود المبذولة من جانب الباحثين المتميزين في جامعة كفر الشيخ وتحفيزهم على بذل المزيد من أجل الارتقاء بمجال البحوث الأكاديمية وإجراء المزيد من البحوث ورفع المستوى الأكاديمي للجامعة بحيث تكون في مصاف الجامعات العالمية.'),
                SizedBox(
                  height: 6.h,
                ),
                Center(child: Image.asset('images/200pound.gif')),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  'تعليمات هامة:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff1A5653)),
                ),
                Text(
                  'علي السادة المتقدمين لجوائز النشر الدولي تقديم:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                    'صورة من صفحة جوجل سكولار (Google Scholar) من الموقع الإلكتروني scholar.google.com الخاص بالمتقدم'),
                Text(
                    'ان يكون الانتماء الأكاديمي (Affiliation) يحتوي علي أسم جامعة كفر الشيخ  كالتالي “Kafrelsheikh University” '),
                Text(
                    'ان يكون البريد الالكتروني (Verified Email) يحتوي على نطاق جامعة كفر الشيخ على الانترنت وهو “kfs.edu.eg”'),
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: Column(
                    children: [
                      Text('جوائز النشر العلمي في ارقام'),
                      Text('إحصائيات تظهر حجم الجوائز في جامعة كفر الشيخ'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.topCenter,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Color(0xff1A5653),
                            foregroundColor: Colors.white,
                            child: Container(
                              child: Image.asset(
                                'images/group.png',
                                color: Colors.white,
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 6),
                          height: 55.h,
                          width: 90.w,
                          color: Color(0xff999999),
                          child: Column(
                            children: [
                              Text('100'),
                              Text(
                                'دكتور',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                            alignment: AlignmentDirectional.topCenter,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Color(0xff1A5653),
                              foregroundColor: Colors.white,
                              child: Container(
                                child: Image.asset(
                                  'images/contact.png',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 6),
                            height: 55.h,
                            width: 90.w,
                            color: Color(0xff999999),
                            child: Column(
                              children: [
                                Text('1700'),
                                Text(
                                  'نشر',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.topCenter,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Color(0xff1A5653),
                            foregroundColor: Colors.white,
                            child: Container(
                              child: Image.asset(
                                'images/dollar.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 6),
                          height: 55.h,
                          width: 90.w,
                          color: Color(0xff999999),
                          child: Column(
                            children: [
                              Text('2000000'),
                              Text(
                                'قيمة الجوائز المدفوعة',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  State<MainAppBar> createState() => _MainAppBarState();
  
  @override
    Size get preferredSize => Size.fromHeight(60.h);

}

class _MainAppBarState extends State<MainAppBar> {
  String buttonText = 'EN';
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(
            'title'.tr(),
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff1A5653)),
          ),
          Expanded(
              child: Image.asset(
            'images/logo (1).png',
            height: 32,
            width: 80,
          )),
        ],
      ),
      actions: [
        InkWell(
          onTap: () {
            String currentLang = context.locale.languageCode; 
            context.setLocale(Locale(currentLang=='en'?'ar':'en'));
          },
          child: Ink(
            height: 40.h,
            width: 40.h,
            color: Color(0xff1A5653),
            child: Center(
                child: Text(
              "buttonText".tr(),
              style: TextStyle(color: Colors.white),
            )),
          ),
        )
      ],
    );
  }

  
}
