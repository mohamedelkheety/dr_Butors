import 'package:dr_boutros/helper/constants.dart';
import 'package:dr_boutros/controller/fech_favorite/fech_favorite_cubit.dart';
import 'package:dr_boutros/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../helper/custom_app_bar_with_icon.dart';
import 'widget/favorite_list_impty.dart';
import 'widget/favorite_list_view.dart';

class Favotrite extends StatelessWidget {
  const Favotrite({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<FechFavoriteCubit>(context).fechFav();
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const CustomAppBarWithIcon(
            iconPath: 'assets/images/bookmark_9969448.png',
            title: 'المُفَضَّلَة',
          ),
        ),
        body: BlocBuilder<FechFavoriteCubit, FechFavoriteState>(
            builder: (context, state) {
          List<DoctorModel>? boxList =
              BlocProvider.of<FechFavoriteCubit>(context).boxList;
          if (boxList!.isEmpty) {
            return const FavoriteListImpty();
          } else if (state is FechFavoriteSuccess) {
            return FavoriteListView(boxList: boxList);
          }
          {
            return const Center(child: Text('هناك خطأ...من فضلك حاول لاحقًا'));
          }
        }));
  }
}
