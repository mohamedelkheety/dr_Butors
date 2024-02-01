import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Kidney extends StatelessWidget {
  const Kidney({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.محمد سعد محمد',
        time: '09:00am-11:00am',
        openDays: 'الإثنين-الخميس',
        adress: 'نجع أولاد عيسى-الكوبري-بجوار معمل الأمين',
      ),
      DoctorModel(
        drName: 'د.محمد عبدالناصر',
        time: '02:30pm-5:00pm',
        openDays: "أجازة مؤقتة",
        adress: 'بطورس-محجر العرقان-أعلى صيدلية د.محمد فرحات',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: 'الكُلى والمسالك',
    );
  }
}
