import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:graduation_project/custom/conditions.dart';

class ResearchConditions extends StatefulWidget {
  const ResearchConditions({super.key});

  @override
  State<ResearchConditions> createState() => _ResearchConditionsState();
}

class _ResearchConditionsState extends State<ResearchConditions> {
  PlatformFile? file;
  String fileName = '';
  String buttonText = "upload your search".tr();

  void onPress() {
    String currentLang = context.locale.languageCode;
    context.setLocale(Locale(currentLang == 'en' ? 'ar' : 'en'));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 45),
        child: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              Text(
                "search conditions".tr(),
                style: TextStyle(
                    color: Color.fromRGBO(26, 86, 83, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text("the submitted research must be in PDF format".tr()),
              SizedBox(
                height: 5.h,
              ),
              Text(
                  "research under publication or accepted for publication will not be accepted"
                      .tr()),
              SizedBox(
                height: 5.h,
              ),
              Text(
                  "it is not permissible to submit research to obtain another university award"
                      .tr()),
              SizedBox(
                height: 5.h,
              ),
              Text(
                  "research papers not listed with the name of Kafr El-Sheikh University will be excluded."
                      .tr()),
              SizedBox(
                height: 5.h,
              ),
              Text(
                  "all submitted research must have been published within three calendar years from the date of the end of the application."
                      .tr()),
              SizedBox(
                height: 5.h,
              ),
              Text(
                  "in the event that the journal’s impact factor is discontinued, the research published in it will be approved, provided that it is published in the same year of discontinuation and not after it."
                      .tr()),
              SizedBox(
                height: 5.h,
              ),
              MyText(
                  text:
                      "research published in a scientific journal with a Q1 scale is accepted on the Scopus database."
                          .tr()),
              SizedBox(
                height: 5.h,
              ),
            ]),
            Text(
                "articles and scientific papers published under the following titles will not be accepted:"
                    .tr()),
            SizedBox(
              height: 2.h,
            ),
            Text("  Review, Letter to editor،"),
            Text(
                "or any new names that do not meet the conditions and rules of scientific research"
                    .tr()),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  color: Colors.grey[300],
                  width: 250.w,
                  height: 100.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "upload your search here".tr(),
                        style: TextStyle(
                            color: Color.fromRGBO(26, 86, 83, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      Center(
                        child: Container(
                          child: MaterialButton(
                            onPressed: () async {
                              FilePickerResult? result =
                                  await FilePicker.platform.pickFiles();

                              if (result != null) {
                                file = result.files.first;
                                buttonText = file!.name;
                                setState(() {});
                              }
                            },
                            color: Colors.white,
                            height: 32,
                            elevation: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  buttonText,
                                  style: TextStyle(
                                      color: Color.fromRGBO(105, 105, 105, 1),
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(width: 3),
                                const Icon(Icons.file_upload_outlined,
                                    size: 18,
                                    color: Color.fromRGBO(26, 86, 83, 1))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            if (file != null)
              Center(
                child: CustomButton(
                  title: "next".tr(),
                  onPressed: () {},
                ),
              ),
          ],
        ),
      ),
    );
  }
}
