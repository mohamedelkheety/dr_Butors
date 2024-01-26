import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

import '../../../../model/doctor_model.dart';

class Children extends StatelessWidget {
  const Children({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctorList = [
      DoctorModel(
        drName: 'د.عبد الحليم الزيات',
        time: '10:00am-01:00pm',
        openDays: "طوال الأسبوع ماعدا الخميس والجمعة",
        adress: 'بطورس-سوق أجيون-أعلى صيدلية الشرقان',
      ),
      DoctorModel(
        drName: ' د.علي رجب فتوح',
        time: '2:30pm-5:00pm',
        openDays: 'طوال الأسبوع ماعدا الجمعة',
        adress: 'بطورس-محجر العرقان-أعلى صيدلية د.محمد فرحات',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "الأطفال",
    );
  }
}
