import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Eyes extends StatelessWidget {
  const Eyes({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.إسلام الحوفي',
        time: '04:30pm-6:00pm',
        openDays: "الأحد-الثلاثاء-الخميس",
        adress: '1بطورس-سوق أجيون-أعلى صيدلية الشرقان',
      ),
      DoctorModel(
        drName: 'د.محمد الشمسي',
        time: '05:00pm-08:00pm',
        openDays: "الأحد-الثلاثاء",
        adress: 'نجع أولاد عيسى-الكوبري-بجوار معمل الأمين',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "الجراحة",
    );
  }
}
