class AqsamModel {
  final String image, titel;
  AqsamModel({required this.image, required this.titel});
}

class AqsamListsInHome {
  static List<AqsamModel> aqsamList = [
    AqsamModel(image: 'assets/images/children.jpeg', titel: 'الأطفال'),
    AqsamModel(image: 'assets/images/batna.jpeg', titel: "الباطنة والحميات"),
    AqsamModel(image: 'assets/images/geldia.jpeg', titel: 'الأمراض الجلدية'),
    AqsamModel(image: 'assets/images/women.jpeg', titel: 'النساء والتوليد'),
    AqsamModel(image: 'assets/images/graha.jpeg', titel: 'الجراحة'),
    AqsamModel(
        image: 'assets/images/Allergic-Rhinitis.png', titel: 'الأنف والأذن'),
    AqsamModel(image: 'assets/images/bon.jpeg', titel: 'العظام'),
    AqsamModel(image: 'assets/images/asnan.jpeg', titel: 'الأسنان'),
    AqsamModel(image: 'assets/images/eyes.jpg', titel: 'العيون'),
    AqsamModel(image: 'assets/images/ta5atob.jpg', titel: "التخاطب"),
    AqsamModel(image: 'assets/images/nerves.jpeg', titel: 'المخ والأعصاب'),
    AqsamModel(image: 'assets/images/3laTabi3i.jpg', titel: 'العلاج الطبيعي'),
    AqsamModel(image: 'assets/images/taghzia.jpg', titel: 'التغذية العلاجية'),
    AqsamModel(image: 'assets/images/kidney.jpg', titel: 'الكُلى والمسالك'),
  ];
}
