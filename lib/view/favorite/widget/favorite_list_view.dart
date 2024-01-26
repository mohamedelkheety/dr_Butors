import 'package:dr_boutros/model/doctor_model.dart';
import 'package:dr_boutros/view/home/aqsam/widget/doctor_item.dart';
import 'package:flutter/material.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({
    super.key,
    required this.boxList,
  });

  final List<DoctorModel>? boxList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10),
        itemCount: boxList?.length,
        itemBuilder: (context, index) {
          return DoctorItem(doctorModel: boxList![index]);
        });
  }
}
