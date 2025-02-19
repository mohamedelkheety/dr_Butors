import 'package:dr_boutros/doctors_lists/doctors_lists.dart';
import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';
import 'package:flutter/material.dart';

class NoseAndEar extends StatelessWidget {
  const NoseAndEar({super.key});

  @override
  Widget build(BuildContext context) {
    return ApsamBody(
      doctorList: DoctorsListsInBoutros.noseAndEarDoctorsList,
      title: "أنف وأذن",
    );
  }
}
