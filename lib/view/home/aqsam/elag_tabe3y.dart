import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../model/doctor_model.dart';

class Elagtabi3y extends StatelessWidget {
  const Elagtabi3y({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: ' د.دينا السمالوسي',
        time: '10:00am-3:00pm',
        openDays: "يوميًا ماعدا الخميس والجمعة",
        adress: '1بطورس-سوق أجيون-أعلى صيدلية الشرقان',
        avatar: 'assets/images/avatar_woman.jpg',
      ),
      DoctorModel(
        drName: ' د.عبدالرحمن درويش',
        time: '1:00pm-5:00pm',
        openDays: 'السبت-الإثنين-الأربعاء',
        adress: 'بطورس-محجر العرقان-أعلى صيدلية د.محمد فرحات',
      ),
      DoctorModel(
        drName: 'د.ناصر عبد اللطيف',
        time: '05:30pm-7:00pm',
        openDays: "الخميس",
        adress: 'النميري-بجوار المدرسة الإعدادية',
      ),
      DoctorModel(
        drName: 'د.طارق الفرماوي',
        time: '01:00pm-7:00pm',
        openDays: "يوميًا ماعدا الجمعة",
        adress: 'نجع أولاد عيسى-الكوبري-بجوار معمل الأمين',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "العلاج الطبيعي",
    );
  }
}
