import 'package:dr_boutros/helper/constants.dart';
import 'package:dr_boutros/controller/add_favorite/add_favorite_cubit.dart';
import 'package:dr_boutros/controller/fech_favorite/fech_favorite_cubit.dart';
import 'package:dr_boutros/helper/custom_snac_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../../helper/custom_text.dart';
import '../../../../model/doctor_model.dart';

class DoctorItemValue extends StatelessWidget {
  const DoctorItemValue({
    super.key,
    required this.doctorModel,
  });

  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var box = Hive.box<DoctorModel>(kDocBox);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: size.height * 0.09,
          backgroundImage: AssetImage(doctorModel.avatar),
        ),
        customText(size.width * 0.08, text: doctorModel.drName),
        customText(size.width * 0.05, text: doctorModel.time),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            Icon(
              Icons.calendar_month,
              size: size.height * 0.04,
            ),
            customText(size.width * 0.04, text: doctorModel.openDays)
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            Icon(
              Icons.location_on,
              size: size.height * 0.04,
            ),
            Expanded(
                child: customText(size.width * 0.04, text: doctorModel.adress)),
          ],
        ),
        ElevatedButton(
          onPressed: box.values.contains(doctorModel)
              ? () {
                  doctorModel.delete();
                  customSnacBar(context, text: 'تمت الإزالة من المفضلة');

                  BlocProvider.of<FechFavoriteCubit>(context).fechFav();
                }
              : () {
                  BlocProvider.of<AddToFavoriteCubit>(context)
                      .addFav(doctorModel);
                },
          child: box.values.contains(doctorModel)
              ? customText(size.width * 0.04, text: 'إزالة من المفضلة')
              : customText(size.width * 0.04, text: 'إضافة إلى المفضلة'),
        )
      ],
    );
  }
}
