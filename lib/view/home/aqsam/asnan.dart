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
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "الأسنان",
    );
  }
}
