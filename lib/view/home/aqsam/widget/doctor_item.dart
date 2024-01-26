import 'package:dr_boutros/model/doctor_model.dart';
import 'package:dr_boutros/view/home/aqsam/widget/doctor_item_value.dart';
import 'package:flutter/material.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key, required this.doctorModel});
  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: DoctorItemValue(doctorModel: doctorModel),
    );
  }
}
