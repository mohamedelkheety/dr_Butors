import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Ta5atob extends StatelessWidget {
  const Ta5atob({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: "أ.أسماء حسن",
        time: '12:00pm-08:00pm',
        openDays: "السبت-الأثنين-الأربعاء",
        adress: 'نجع أولاد عيسى-الكوبري-بجوار معمل الأمين',
        avatar: 'assets/images/avatar_woman.jpg',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "التخاطب",
    );
  }
}
