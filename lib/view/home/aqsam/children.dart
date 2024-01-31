import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Children extends StatelessWidget {
  const Children({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.عبد الحليم الزيات',
        time: '10:00am-01:00pm',
        openDays: "طوال الأسبوع ماعدا الخميس والجمعة",
        adress: '1بطورس-سوق أجيون-أعلى صيدلية الشرقان',
      ),
      DoctorModel(
        drName: ' د.علي رجب فتوح',
        time: '02:30pm-5:00pm',
        openDays: 'طوال الأسبوع ماعدا الجمعة',
        adress: 'بطورس-محجر العرقان-أعلى صيدلية د.محمد فرحات',
      ),
      DoctorModel(
        drName: "د.محمد عبدالجليل",
        time: '05:00pm-9:00pm',
        openDays: "السبت-الثلاثاء-الخميس",
        adress: "بلقطر-الشارع الرئيسي-أمام معمل اليسر",
      ),
      DoctorModel(
        drName: 'د.عُلا الجدوي',
        time: '09:00am-08:00pm',
        openDays: "يوميًا ماعدا الجمعة",
        adress: "بلقطرالشرقيه-بجوار الوحدة الصحة",
        avatar: 'assets/images/avatar_woman.jpg',
      ),
      DoctorModel(
        drName: 'د.إيمان الشرقان',
        time: '03:00pm-05:00pm',
        openDays: "أجازة مؤقتة",
        adress: '1بطورس-سوق أجيون-أعلى صيدلية الشرقان',
        avatar: 'assets/images/avatar_woman.jpg',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "الأطفال",
    );
  }
}
