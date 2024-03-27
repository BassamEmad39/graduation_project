import 'package:easy_localization/easy_localization.dart';
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
                Text("submission".tr(),style: TextStyle(color: color1,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 8,),

                Text("submission1".tr(),style: TextStyle(color: color2),),
                Text("submission2".tr(),style: TextStyle(color: color2),),
                Text("submission3".tr(),style: TextStyle(color: color2),),
                Text("submission4".tr(),style: TextStyle(color: color2),),
                Text("submission5".tr(),style: TextStyle(color: color2),),
                Text("submission6".tr(),style: TextStyle(color: color2),),

                 SizedBox(height: 10,),
                Text("application".tr(),style: TextStyle(color: color1,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 8,),

                Text("application1".tr(),style: TextStyle(color: color2),),
                Text("application2".tr(),style: TextStyle(color: color2),),
                Text("application3".tr(),style: TextStyle(color: color2),),
                Text("application4".tr(),style: TextStyle(color: color2),),

                SizedBox(height: 10,),
                Text("searchconditions".tr(),style: TextStyle(color: color1,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 8,),

                Text("searchconditions1".tr(),style: TextStyle(color: color2),),
                Text("searchconditions2".tr(),style: TextStyle(color: color2),),
                Text("searchconditions3".tr(),style: TextStyle(color: color2),),
                Text("searchconditions4".tr(),style: TextStyle(color: color2),),
                Text("searchconditions5".tr(),style: TextStyle(color: color2),),
                Text("searchconditions6".tr(),style: TextStyle(color: color2),),
                Text("searchconditions7".tr(),style: TextStyle(color: color2),),
                Text("searchconditions8".tr(),style: TextStyle(color: color2),),
                Text("searchconditions9".tr(),style: TextStyle(color: color2),),
                Text("searchconditions10".tr(),style: TextStyle(color: color2),),
                
                SizedBox(height: 10,),
                Text("awardconditions".tr(),style: TextStyle(color: color1,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 10,),

                Text("awardconditions1".tr(),style: TextStyle(color: color2),),
                Text("awardconditions2".tr(),style: TextStyle(color: color2),),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
