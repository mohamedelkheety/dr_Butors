import 'package:dr_boutros/data/doctors_lists/aqsam_lists_inhome.dart';
import 'package:flutter/material.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({
    super.key,
    required this.aqsamModel,
  });
  final AqsamModel aqsamModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(22),
        image: DecorationImage(
            opacity: 0.55,
            image: AssetImage(aqsamModel.image),
            fit: BoxFit.fill),
      ),
      height: MediaQuery.of(context).size.height * 0.18,
      width: double.infinity,
      child: Center(
        child: Text(aqsamModel.titel,
            style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * 0.09,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
