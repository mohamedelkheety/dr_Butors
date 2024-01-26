import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Geldia extends StatelessWidget {
  const Geldia({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.شيماء شفيق علي',
        time: '09:00am-01:00pm',
        openDays: "السبت",
        adress: 'بطورس-سوق أجيون-أعلى صيدلية الشرقان',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "الجلدية",
    );
  }
}
