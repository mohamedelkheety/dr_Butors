import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Geraha extends StatelessWidget {
  const Geraha({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.محمد الديب',
        time: '05:00pm-10:00pm',
        openDays: "يوميًا ماعدا الإثنين والجمعة",
        adress: '1بطورس-سوق أجيون-أعلى صيدلية الشرقان',
      ),
      DoctorModel(
        drName: 'د.محمد عبدالمولى',
        time: '06:00pm-10:00pm',
        openDays: 'السبت-الإثنين-الأربعاء',
        adress: 'النميري-الكوبري-أمام المسجد الكبير ',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "الجراحة",
    );
  }
}
