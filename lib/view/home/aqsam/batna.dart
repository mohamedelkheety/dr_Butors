import 'package:flutter/material.dart';

import '../../../model/doctor_model.dart';
import 'widget/apsam_body.dart';

class Batna extends StatelessWidget {
  const Batna({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.أيمن مشرف',
        time: '06:30pm-11:00pm',
        openDays: "يوميًا ماعدا الجمعة",
        adress: '1بطورس-سوق أجيون-أعلى صيدلية الشرقان',
      ),
      DoctorModel(
        drName: 'د.محمد أبونجيلة ',
        time: '06:30pm-11:00pm',
        openDays: 'السبت والثلاثاء',
        adress: 'بطورس-سوق أجيون-أعلى صيدلية د.محمد فرحات',
      ),
      DoctorModel(
        drName: 'د.حمدي أبوحسين',
        time: '03:30pm-11:00pm',
        openDays: 'طوال أيام الأسبوع',
        adress: 'بطورس-قرية أمين باشا الكبرى -بجوار الكوبري',
      ),
      DoctorModel(
        drName: 'د.محمد عطالله',
        time: '02:30pm-09:00pm',
        openDays: 'يوميًا ماعدا الجمعة',
        adress: 'نجع أولاد عيسى-الكوبري-بجوار معمل الأمين',
      ),
      DoctorModel(
        drName: 'د.رجب حرفوش',
        time: '011:00am-07:00pm',
        openDays: 'يوميًا ماعدا الجمعة',
        adress: "بلقطر الشرقيه-بجوار حلواني البنا",
      ),
      DoctorModel(
        drName: 'د.محمود مصطفي',
        time: '011:00am-07:00pm',
        openDays: 'السبت-الأحد-الإثنين',
        adress: "بلقطر الشرقيه-أمام معمل اليسر",
      )
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "الباطنة والحميات",
    );
  }
}
