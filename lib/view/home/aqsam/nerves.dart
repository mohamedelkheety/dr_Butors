import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Nerves extends StatelessWidget {
  const Nerves({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.صبري عبد اللطيف',
        time: '05:30pm-7:00pm',
        openDays: "السبت-الإثنين-الأربعاء",
        adress: 'النميري-بجوار المدرسة الإعدادية',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "المخ والأعصاب",
    );
  }
}
