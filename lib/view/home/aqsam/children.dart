import 'package:dr_boutros/doctors_lists/doctors_lists.dart';
import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

class Children extends StatelessWidget {
  const Children({super.key});

  @override
  Widget build(BuildContext context) {
    return ApsamBody(
      doctorList: DoctorsListsInBoutros.childrenDoctorsList,
      title: "الأطفال",
    );
  }
}
