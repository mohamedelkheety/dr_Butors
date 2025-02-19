import 'package:flutter/material.dart';
import 'package:dr_boutros/doctors_lists/doctors_lists.dart';

import 'widget/apsam_body.dart';

class Batna extends StatelessWidget {
  const Batna({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ApsamBody(
      doctorList: DoctorsListsInBoutros.batnaDoctorsList,
      title: "الباطنة والحميات",
    );
  }
}
