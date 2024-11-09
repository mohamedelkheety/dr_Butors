import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../model/doctor_model.dart';

class NoseAndEar extends StatelessWidget {
  const NoseAndEar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.رمضان الصاوي',
        time: '12:00pm-2:00pm',
        openDays: "السبت ولإثنين والأربعاء",
        adress: '1بطورس-سوق أجيون-أعلى صيدلية الشرقان',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "أنف وأذن",
    );
  }
}
