import 'package:dr_boutros/view/home/aqsam/asnan.dart';
import 'package:dr_boutros/view/home/aqsam/batna.dart';
import 'package:dr_boutros/view/home/aqsam/children.dart';
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
        title: const CustomAppBar(
          title: 'أطِبَّاء بطُورس',
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
            navigatorTo: Batna(),
            assetImage: 'assets/images/geldia.jpeg',
            text: 'الأمراض الجلدية',
          ),
          CategoryHome(
            navigatorTo: Batna(),
            assetImage: 'assets/images/women.jpeg',
            text: 'النساء والتوليد',
          ),
          CategoryHome(
            navigatorTo: Batna(),
            assetImage: 'assets/images/brian.jpeg',
            text: 'المخ والأعصاب',
          ),
          CategoryHome(
            navigatorTo: Batna(),
            assetImage: 'assets/images/bon.jpeg',
            text: 'العظام',
          ),
          CategoryHome(
            navigatorTo: Asnan(),
            assetImage: 'assets/images/asnan.jpeg',
            text: 'الأسنان',
          ),
          CategoryHome(
            navigatorTo: Batna(),
            assetImage: 'assets/images/graha.jpeg',
            text: 'الجراحة',
          ),
        ],
      ),
    );
  }
}
