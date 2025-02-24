import 'package:dr_boutros/data/doctors_lists/doctors_lists.dart';
import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

class Nerves extends StatelessWidget {
  const Nerves({super.key});

  @override
  Widget build(BuildContext context) {
    return ApsamBody(
      doctorList: DoctorsListsInBoutros.kidneyDoctorsList,
      title: "المخ والأعصاب",
    );
  }
}
