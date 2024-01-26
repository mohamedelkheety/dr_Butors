import 'package:hive/hive.dart';

part 'doctor_model.g.dart';

@HiveType(typeId: 0)
class DoctorModel extends HiveObject {
  @HiveField(0)
  final String avatar;
  @HiveField(1)
  final String drName;
  @HiveField(2)
  final String time;
  @HiveField(3)
  final String openDays;
  @HiveField(4)
  final String adress;

  DoctorModel({
    this.avatar = 'assets/images/logo.png',
    required this.drName,
    required this.time,
    required this.openDays,
    required this.adress,
  });
}
