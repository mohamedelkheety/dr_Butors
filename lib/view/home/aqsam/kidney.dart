import 'package:dr_boutros/doctors_lists/doctors_lists.dart';
import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

class Kidney extends StatelessWidget {
  const Kidney({super.key});

  @override
  Widget build(BuildContext context) {
    return ApsamBody(
      doctorList: DoctorsListsInBoutros.kidneyDoctorsList,
      title: 'الكُلى والمسالك',
    );
  }
}
