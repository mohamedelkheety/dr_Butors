import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Bon extends StatelessWidget {
  const Bon({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.مصطفى قيقي',
        time: '03:00pm-05:00pm',
        openDays: "السبت-الأثنين-الأربعاء",
        adress: '1بطورس-سوق أجيون-أعلى صيدلية الشرقان',
      ),
      DoctorModel(
        drName: 'د.رماح البهي',
        time: '10:00am-01:00pm',
        openDays: "الأربعاء",
        adress: 'نجع أولاد عيسى-الكوبري-بجوار معمل الأمين',
      ),
      DoctorModel(
        drName: "د.مصطفي سعد",
        time: '02:50pm-9:00pm',
        openDays: "الأحد-الثلاثاء-الخميس",
        adress: "بلقطر-خلف صيدلية د.محمدموسى",
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "العظام",
    );
  }
}
