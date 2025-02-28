import 'package:dr_boutros/data/doctors_lists/doctors_lists.dart';
import 'package:dr_boutros/models/doctor_model.dart';

class AqsamLists {
  static final List<List<DoctorModel>> aqsamListsAll = [
    DoctorsListsInBoutros.childrenDoctorsList,
    DoctorsListsInBoutros.batnaDoctorsList,
    DoctorsListsInBoutros.geldiaDoctorList,
    DoctorsListsInBoutros.womenDoctorsList,
    DoctorsListsInBoutros.gerahaDoctorsList,
    DoctorsListsInBoutros.noseAndEarDoctorsList,
    DoctorsListsInBoutros.bonDoctorsList,
    DoctorsListsInBoutros.asnanDoctorsList,
    DoctorsListsInBoutros.eyesDoctorsList,
    DoctorsListsInBoutros.ta5atobDoctorsList,
    DoctorsListsInBoutros.nervesDoctorsList,
    DoctorsListsInBoutros.elagtabi3yDoctorsList,
    DoctorsListsInBoutros.taghziaDoctorsList,
    DoctorsListsInBoutros.kidneyDoctorsList
  ];
  static final List<String> titel = [
    'الأطفال',
    'الباطنة والحميات',
    'الأمراض الجلدية',
    'النساء والتوليد',
    'الجراحة',
    'الأنف والأذن',
    'العظام',
    'الأسنان',
    'العيون',
    'التخاطب',
    'المخ والأعصاب',
    'العلاج الطبيعي',
    'التغذية العلاجية',
    'الكُلى والمسالك',
  ];
}
