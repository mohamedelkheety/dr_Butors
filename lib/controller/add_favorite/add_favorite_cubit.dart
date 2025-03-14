import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_boutros/helper/constants.dart';
import 'package:dr_boutros/models/doctor_model.dart';
import 'package:hive/hive.dart';

part 'add_favorite_state.dart';

class AddToFavoriteCubit extends Cubit<AddFavoriteState> {
  AddToFavoriteCubit() : super(AddFavoriteInitial());

  Future addFav(DoctorModel doctorModel) async {
    try {
      var box = Hive.box<DoctorModel>(kDocBox);
      await box.add(doctorModel);
      emit(AddFavoriteSuccess());

      log('Add to favorite');
    } catch (e) {
      emit(AddFavoriteFialuer());
      log(e.toString());
    }
  }
}
