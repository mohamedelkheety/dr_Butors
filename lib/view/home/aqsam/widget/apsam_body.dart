import 'package:dr_boutros/controller/add_favorite/add_favorite_cubit.dart';
import 'package:dr_boutros/helper/constants.dart';
import 'package:dr_boutros/helper/custom_app_bar.dart';
import 'package:dr_boutros/helper/custom_snac_bar.dart';
import 'package:dr_boutros/model/doctor_model.dart';
import 'package:dr_boutros/view/home/aqsam/widget/doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApsamBody extends StatelessWidget {
  const ApsamBody({
    super.key,
    required this.doctorList,
    required this.title,
  });
  final String title;
  final List<DoctorModel> doctorList;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddToFavoriteCubit, AddFavoriteState>(
        listener: (context, state) {
          if (state is AddFavoriteSuccess) {
            customSnacBar(context, text: 'تمت الإضافة إلى المفضلة');
          } else if (state is AddFavoriteFialuer) {
            customSnacBar(context, text: 'موجود بالفعل في المفضلة');
          }
        },
        child: Scaffold(
            backgroundColor: kPrimaryColor,
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: kPrimaryColor,
                title: CustomTextAppBar(
                  title: title,
                )),
            body: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: doctorList.length,
                itemBuilder: (context, index) {
                  return DoctorItem(doctorModel: doctorList[index]);
                })));
  }
}
