import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Asnan extends StatelessWidget {
  const Asnan({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.عمرو فوزي الديب',
        time: '12:00pm-5:00pm',
        openDays: "يوميًا ماعدا الجمعة",
        adress: 'بطورس-سوق أجيون-أمام مركز الشباب',
      ),
      DoctorModel(
        drName: 'د.عمرو هشام',
        time: '11:30am-5:00pm',
        openDays: "يوميًا ماعدا الجمعة",
        adress: 'بطورس-محجر العرقان-أعلى صيدلية د.محمد فرحات',
      ),
      DoctorModel(
        drName: 'د.علاء أبونجيلة',
        time: '11:30am-7:00pm',
        openDays: "يوميًا ماعدا الجمعة",
        adress: 'نجع أولاد عيسى-الكوبري-بجوار معمل الأمين',
      ),
      DoctorModel(
        drName: "د.أحمد كمال",
        time: '11:30am-6:00pm',
        openDays: "يوميًا ماعدا الجمعة",
        adress: "بلقطر الشرقية-بجوار حلواني البنا",
      ),
      DoctorModel(
        drName: "مركز الفتح",
        time: '03:00pm-8:00pm',
        openDays: "يوميًا ماعدا الجمعة",
        adress: "بلقطر الشرقية-أعلى صيدلية د.محمد شرف",
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "الأسنان",
    );
  }
}
