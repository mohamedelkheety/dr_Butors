import 'dart:developer';

import 'package:dr_boutros/helper/constants.dart';
import 'package:dr_boutros/models/doctor_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

part 'fech_favorite_state.dart';

class FechFavoriteCubit extends Cubit<FechFavoriteState> {
  FechFavoriteCubit() : super(FechFavoriteInitial());
  List<DoctorModel>? boxList;
  fechFav() {
    var box = Hive.box<DoctorModel>(kDocBox);

    boxList = box.values.toList();
    emit(FechFavoriteSuccess());
    log('Fech favorites');
  }
}
