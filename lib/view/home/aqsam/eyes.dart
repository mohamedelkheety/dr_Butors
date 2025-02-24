import 'package:dr_boutros/data/doctors_lists/doctors_lists.dart';
import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

class Eyes extends StatelessWidget {
  const Eyes({super.key});

  @override
  Widget build(BuildContext context) {
    return ApsamBody(
      doctorList: DoctorsListsInBoutros.eyesDoctorsList,
      title: "الجراحة",
    );
  }
}
