import 'package:dr_boutros/data/doctors_lists/aqsam_lists.dart';
import 'package:dr_boutros/data/doctors_lists/aqsam_lists_inhome.dart';
import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';

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
      body: ListView.builder(
        itemCount: AqsamListsInHome.aqsamList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AqsamBody(
                    doctorList: AqsamLists.aqsamListsAll[index],
                    title: AqsamLists.titel[index]);
              }));
            },
            child: CategoryHome(aqsamModel: AqsamListsInHome.aqsamList[index]),
          );
        },
      ),
    );
  }
}
