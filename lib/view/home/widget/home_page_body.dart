import 'package:dr_boutros/view/home/aqsam/asnan.dart';
import 'package:dr_boutros/view/home/aqsam/batna.dart';
import 'package:dr_boutros/view/home/aqsam/bon.dart';
import 'package:dr_boutros/view/home/aqsam/children.dart';
import 'package:dr_boutros/view/home/aqsam/elag_tabe3y.dart';
import 'package:dr_boutros/view/home/aqsam/eyes.dart';
import 'package:dr_boutros/view/home/aqsam/geldia.dart';
import 'package:dr_boutros/view/home/aqsam/geraha.dart';
import 'package:dr_boutros/view/home/aqsam/kidney.dart';
import 'package:dr_boutros/view/home/aqsam/nerves.dart';
import 'package:dr_boutros/view/home/aqsam/ta5atob.dart';
import 'package:dr_boutros/view/home/aqsam/taghzia.dart';
import 'package:dr_boutros/view/home/aqsam/women.dart';
import 'package:flutter/material.dart';

import 'category_home.dart';
import '../../../helper/custom_app_bar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomTextAppBar(
          title: 'أطِبَّاء بطُورس وبلَقطَر',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        physics: const BouncingScrollPhysics(),
        children: const [
          CategoryHome(
            navigatorTo: Children(),
            assetImage: 'assets/images/children.jpeg',
            text: 'الأطفال',
          ),
          CategoryHome(
            navigatorTo: Batna(),
            assetImage: 'assets/images/batna.jpeg',
            text: "الباطنة والحميات",
          ),
          CategoryHome(
            navigatorTo: Geldia(),
            assetImage: 'assets/images/geldia.jpeg',
            text: 'الأمراض الجلدية',
          ),
          CategoryHome(
            navigatorTo: Women(),
            assetImage: 'assets/images/women.jpeg',
            text: 'النساء والتوليد',
          ),
          CategoryHome(
            navigatorTo: Geraha(),
            assetImage: 'assets/images/graha.jpeg',
            text: 'الجراحة',
          ),
          CategoryHome(
            navigatorTo: Bon(),
            assetImage: 'assets/images/bon.jpeg',
            text: 'العظام',
          ),
          CategoryHome(
            navigatorTo: Asnan(),
            assetImage: 'assets/images/asnan.jpeg',
            text: 'الأسنان',
          ),
          CategoryHome(
            navigatorTo: Eyes(),
            assetImage: 'assets/images/eyes.jpg',
            text: 'العيون',
          ),
          CategoryHome(
            navigatorTo: Ta5atob(),
            assetImage: 'assets/images/ta5atob.jpg',
            text: "التخاطب",
          ),
          CategoryHome(
            navigatorTo: Nerves(),
            assetImage: 'assets/images/nerves.jpeg',
            text: 'المخ والأعصاب',
          ),
          CategoryHome(
            navigatorTo: Elagtabi3y(),
            assetImage: 'assets/images/3laTabi3i.jpg',
            text: 'العلاج الطبيعي',
          ),
          CategoryHome(
            navigatorTo: Taghzia(),
            assetImage: 'assets/images/taghzia.jpg',
            text: 'التغذية العلاجية',
          ),
          CategoryHome(
            navigatorTo: Kidney(),
            assetImage: 'assets/images/kidney.jpg',
            text: 'الكُلى والمسالك',
          ),
        ],
      ),
    );
  }
}
