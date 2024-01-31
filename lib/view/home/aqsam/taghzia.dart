import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Taghzia extends StatelessWidget {
  const Taghzia({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.مي خميس أبوشهيوة',
        time: '09:00am-02:00pm',
        openDays: "الأربعاء",
        adress: 'نجع أولاد عيسى-الكوبري-بجوار معمل الأمين',
        avatar: 'assets/images/avatar_woman.jpg',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: 'التغذية العلاجية والسمنة',
    );
  }
}
