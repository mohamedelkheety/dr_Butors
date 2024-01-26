import 'package:dr_boutros/controller/bloc_obs.dart';
import 'package:dr_boutros/helper/constants.dart';
import 'package:dr_boutros/controller/add_favorite/add_favorite_cubit.dart';
import 'package:dr_boutros/controller/fech_favorite/fech_favorite_cubit.dart';
import 'package:dr_boutros/model/doctor_model.dart';
import 'package:dr_boutros/view/splash_view/splach.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(DoctorModelAdapter());
  await Hive.openBox<DoctorModel>(kDocBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AddFavoriteCubit(),
          ),
          BlocProvider(
            create: (context) => FechFavoriteCubit(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'ElMessiri'),
          home: const SplashView(),
        ));
  }
}
