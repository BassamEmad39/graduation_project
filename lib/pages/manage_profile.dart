import 'package:flutter/material.dart';
import 'package:graduation_project/custom/appbar.dart';

class ManageProfile extends StatelessWidget {
  const ManageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    Color color1=Color(0xff1A5653);
    Color color2=Color(0xff696969);
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/person back.jpg'),
                    radius: 100,
                  ),
                ),
                SizedBox(height: 10,),
                Text('شروط التقديم:',style: TextStyle(color: color1,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 8,),

                Text('1. أن يكون المتقدم عضو هيئة تدريس بأحد كليات جامعة كفر الشيخ.',style: TextStyle(color: color2),),
                Text('2. أن يتضمن البحث اسم جامعة كفر الشيخ كتعريف للباحث المتقدم.',style: TextStyle(color: color2),),
                Text('3. أن يتم استيفاء استمارة التقدم للحصول على المكافأة مع مراعاة كتابة جميع البيانات بخط واضح.',style: TextStyle(color: color2),),
                Text('4. أن يرفع الباحث نسخة البحث المنشورpdf ، ولا تقبل النسخ الورقية للأبحاث.',style: TextStyle(color: color2),),
                Text('5. الا يكون قد تم صرف مكافأة النشر الدولي لنفس البحث سابقاً من جامعة كفر الشيخ.',style: TextStyle(color: color2),),
                Text('6. كتابة الاسم الثلاثي للمشاركين في البحث من جامعة كفر الشيخ باللغة العربية مع توضيح الدرجة الوظيفية، وتوقيع سيادتهم توقيع حي بالموافقة على تقديم البحث من قبل الباحث الرئيسي.',style: TextStyle(color: color2),),

                 SizedBox(height: 10,),
                Text('متطلبات التقديم:',style: TextStyle(color: color1,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 8,),

                Text('أن يتم استيفاء استمارة التقدم للحصول على المكافأة موقعة من السيد أ.د/ رئيس القسم العلمي، والسيد أ.د/ وكيل الكلية لشئون الدراسات العليا والبحوث، ثم اعتمادها من السيد أ.د/ عميد الكلية.',style: TextStyle(color: color2),),
                Text('أن يرفع العضو المقدم نسخة البحث المنشور بصيغة pdf ولا تقبل النسخ الورقية للأبحاث.',style: TextStyle(color: color2),),
                Text('كتابة الاسم الثلاثي للمشاركين في البحث من جامعة كفر الشيخ باللغة العربية مع توضيح الدرجة الوظيفية، وتوقيع سيادتهم توقيع حى بالموافقة على تقديم البحث من قبل الباحث الرئيسي.',style: TextStyle(color: color2),),
                Text('ترفع الاستمارة و الابحاث والمقدمة وصورة بطاقة الرقم القومي على اللينك المرسل.',style: TextStyle(color: color2),),

                SizedBox(height: 10,),
                Text('شروط البحث:',style: TextStyle(color: color1,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 8,),

                Text('يجب ان يكون البحث المقدم في صورة pdf.',style: TextStyle(color: color2),),
                Text(' لا تقبل البحوث تحت النشر أو المقبولة للنشر.',style: TextStyle(color: color2),),
                Text('لا يجوز التقدم بالبحث للحصول على جائزة أخري من جوائز الجامعة.',style: TextStyle(color: color2),),
                Text('تستبعد البحوث غير المدون عليها اسم جامعة كفر الشيخ.',style: TextStyle(color: color2),),
                Text('أن تكون جميع الابحاث المقدمة قد تم نشرها خلال ثلاثة أعوام ميلادية من تاريخ نهاية التقدم.',style: TextStyle(color: color2),),
                Text('في حالة توقف معامل التأثير للمجلة، يتم الموافقة على الابحاث المنشورة بها، على أن تكون منشورة في نفس سنة التوقف وليس بعدها.',style: TextStyle(color: color2),),
                Text('تقبل الابحاث المنشورة في مجلة علمية ذات مقياس رباعي Q1 ، على قاعدة بيانات Scopus.',style: TextStyle(color: color2),),
                Text('لا تقبل المقالات والاوراق العلمية المنشورة بالمسميات الآتية:',style: TextStyle(color: color2),),
                Text('Review, Letter to editor،    '),
                Text('أو أية مسميات جديدة لا تتوافر فيها شروط وقواعد الابحاث العلمية',style: TextStyle(color: color2),),
                
                SizedBox(height: 10,),
                Text('شروط حصول البحث على الجائزة:',style: TextStyle(color: color1,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 10,),

                Text('يحصل على الجائزة المتقدم ببحث منشور في مجلة علمية عالمية متخصصة وذات معامل تأثيري طبقا للمادة رقم 20 من اللائحة وقاعدة بيانات ISI أثناء التقدم بالبحث في التخصصات العملية',style: TextStyle(color: color2),),
                Text(' في التخصصات الإنسانية والاجتماعية والتربوية والاقتصادية طبقا لأخر اصدار لمعامل التأثير.',style: TextStyle(color: color2),),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
