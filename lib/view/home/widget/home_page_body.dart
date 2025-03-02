import 'package:dr_boutros/adMob/ad_manger.dart';
import 'package:dr_boutros/data/doctors_lists/aqsam_lists.dart';
import 'package:dr_boutros/data/doctors_lists/aqsam_lists_inhome.dart';
import 'package:dr_boutros/view/home/aqsam/widget/apsam_body.dart';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'category_home.dart';
import '../../../helper/custom_app_bar.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({
    super.key,
  });

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  InterstitialAd? interstitialAd;
  bool interstitialIsLoaded = false;
  void loadAd() {
    InterstitialAd.load(
      adUnitId: AdManager.interstitialId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          debugPrint('InterstitialAd Loaded');
          setState(() {
            interstitialAd = ad;
            interstitialIsLoaded = true;
          });
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              loadAd(); // تحميل إعلان جديد بعد إغلاق الإعلان الحالي
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();
              setState(() {
                interstitialAd = null;
                interstitialIsLoaded = false;
              });
            },
          );
        },
        onAdFailedToLoad: (LoadAdError error) {
          debugPrint('InterstitialAd failed to load: $error');
          setState(() {
            interstitialIsLoaded = false;
          });
        },
      ),
    );
  }

  @override
  void initState() {
    loadAd();

    super.initState();
  }

  @override
  void dispose() {
    interstitialAd?.dispose();
    super.dispose();
  }

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
              if (interstitialIsLoaded && interstitialAd != null) {
                interstitialAd?.show();
                interstitialIsLoaded = false;
                interstitialAd = null;
              }

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
