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

  void loadAd() {
    InterstitialAd.load(
        adUnitId: AdManager.interstitialId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          // Called when an ad is successfully received.
          onAdLoaded: (ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
                // Called when the ad showed the full screen content.
                onAdShowedFullScreenContent: (ad) {},
                // Called when an impression occurs on the ad.
                onAdImpression: (ad) {},
                // Called when the ad failed to show full screen content.
                onAdFailedToShowFullScreenContent: (ad, err) {
                  // Dispose the ad here to free resources.
                  ad.dispose();
                },
                // Called when the ad dismissed full screen content.
                onAdDismissedFullScreenContent: (ad) {
                  // Dispose the ad here to free resources.
                  setState(() {
                    interstitialAd = ad;
                  });
                },
                // Called when a click is recorded for an ad.
                onAdClicked: (ad) {});

            debugPrint('$ad *****loaded.*****');
            interstitialAd?.dispose();
            debugPrint('$ad *****dispose.*****');
            // Keep a reference to the ad so you can show it later.
            interstitialAd = ad;
          },
          // Called when an ad request failed.
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint('InterstitialAd failed to load: $error');
          },
        ));
  }

  @override
  void initState() {
    loadAd();

    super.initState();
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
              interstitialAd?.show();
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
