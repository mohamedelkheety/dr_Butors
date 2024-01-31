import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Women extends StatelessWidget {
  const Women({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.مروة عاشور',
        time: '11:00am-02:00pm',
        openDays: 'السبت-الأثنين-الخميس',
        adress: 'بطورس-سوق أجيون-أعلى صيدلية الشرقان2-بجوار البنزينة',
        avatar: 'assets/images/avatar_woman.jpg',
      ),
      DoctorModel(
        drName: 'د.عبير العشماوي',
        time: '03:30pm-07:00pm',
        openDays: 'طوال أيام الأسبوع ماعدا الجمعة',
        adress: 'بطورس-قرية أمين باشا الكبرى -بجوار الكوبري',
        avatar: 'assets/images/avatar_woman.jpg',
      ),
      DoctorModel(
        drName: 'د.رشا صقر ',
        time: '04:00pm-09:00pm',
        openDays: 'يوميًا ماعدا الجمعة',
        adress: 'نجع أولاد عيسى-الكوبري-بجوار معمل الأمين',
        avatar: 'assets/images/avatar_woman.jpg',
      ),
      DoctorModel(
        drName: 'د.خيري الشويعر',
        time: '11:00am-5:00pm',
        openDays: 'الأحد والأربعاء',
        adress: 'بطورس-محجر العرقان-أعلى صيدلية د.أحمد زيد',
      ),
      DoctorModel(
        drName: 'د.محمد الديب',
        time: '05:00pm-09:00pm',
        openDays: "يوميًا ماعدا الإثنين والجمعة",
        adress: '1بطورس-سوق أجيون-أعلى صيدلية الشرقان',
      ),
      DoctorModel(
        drName: "د.محمود فوزي",
        time: '09:00am-09:00pm',
        openDays: "يوميًا ماعدا الجمعة",
        adress: "بلقطرالشرقيه-بجوار الوحدة الصحة",
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "النساء والتوليد",
    );
  }
}
