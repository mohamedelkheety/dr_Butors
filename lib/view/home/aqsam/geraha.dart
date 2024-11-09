import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Geraha extends StatelessWidget {
  const Geraha({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.محمد عبدالمولى',
        time: '06:00pm-10:00pm',
        openDays: 'السبت-الإثنين-الأربعاء',
        adress: 'النميري-الكوبري-أمام المسجد الكبير ',
      ),
      DoctorModel(
        drName: 'د.محمد الديب',
        time: '05:00pm-10:00pm',
        openDays: "يوميًا ماعدا الإثنين والجمعة",
        adress: '1بطورس-سوق أجيون-أعلى صيدلية الشرقان',
      ),
      DoctorModel(
        drName: 'د.عزمي صبري الدقن',
        time: '03:00pm-9:00pm',
        openDays: "يوميًا ماعدا الأحد والجمعة",
        adress: 'نجع أولاد عيسى-الكوبري-بجوار معمل الأمين',
      ),
      DoctorModel(
        drName: 'د.محمود طه',
        time: '05:00pm-10:00pm',
        openDays: "يوميًا ماعدا الجمعة",
        adress: "بلقطر الشرقية-بجوار صيدلية د.محمد موسى",
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "الجراحة",
    );
  }
}
