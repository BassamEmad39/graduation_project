import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/custom/appbar.dart';
import 'package:graduation_project/custom/buttons.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Researchaccept extends StatefulWidget {
  const Researchaccept({super.key});

  @override
  State<Researchaccept> createState() => _ResearchacceptState();
}

class _ResearchacceptState extends State<Researchaccept> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Create a DateTime object with the specified year, month, and day
    DateTime date = DateTime(2024, 6, 6);

    // Format the date as yyyy-MM-dd
    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Center(
            child: CircularPercentIndicator(
              radius: 100,
              lineWidth: 10,
              percent: 0.5,
              progressColor: Color.fromARGB(255, 25, 124, 101),
              backgroundColor: Colors.white,
              center: Text(
                '${100 * 0.5}%',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ],
              color: Color.fromARGB(255, 25, 124, 101),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "award".tr(),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(formattedDate,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          CustomButton(
            title: "back".tr(),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class $ {}
