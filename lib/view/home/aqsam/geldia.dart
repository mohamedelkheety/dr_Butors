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
        adress: '1بطورس-سوق أجيون-أعلى صيدلية الشرقان',
        avatar: 'assets/images/avatar_woman.jpg',
      ),
      DoctorModel(
        drName: 'د.هبةاللَّه عوض',
        time: '09:00am-01:00pm',
        openDays: "الأحد",
        adress: 'نجع أولاد عيسى-الكوبري-بجوار معمل الأمين',
        avatar: 'assets/images/avatar_woman.jpg',
      ),
    ];

    return ApsamBody(
      doctorList: doctorList,
      title: "الأمراض الجلديّة",
    );
  }
}
