import 'package:dr_boutros/adMob/ad_manger.dart';
import 'package:dr_boutros/models/articles_model.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ArticlesViewBody extends StatefulWidget {
  const ArticlesViewBody({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;

  @override
  State<ArticlesViewBody> createState() => _ArticlesViewBodyState();
}

class _ArticlesViewBodyState extends State<ArticlesViewBody> {
  BannerAd? bannerAd;
  bool isLoaded = false;
  void loadAd() async {
    // final size = await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
    //     MediaQuery.sizeOf(context).width.truncate());

    bannerAd = BannerAd(
      adUnitId: AdManager.bannerId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          debugPrint('$ad /////////////////loaded.');
          setState(() {
            isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          debugPrint('//////////BannerAd failed to load: $err');
          ad.dispose();
        },
      ),
    )..load();
  }

  @override
  void initState() {
    loadAd();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    num size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8, bottom: 8),
          child: Column(
            spacing: 5,
            textDirection: TextDirection.rtl,
            children: [
              if (isLoaded)
                Container(
                  alignment: Alignment.center,
                  width: bannerAd!.size.width.toDouble(),
                  height: bannerAd!.size.height.toDouble(),
                  child: AdWidget(ad: bannerAd!),
                ),
              Text(
                textDirection: TextDirection.rtl,
                widget.articlesModel.title,
                style: TextStyle(fontSize: size * 0.05),
              ),
              Image.asset(widget.articlesModel.image),
              SelectableText(
                textAlign: TextAlign.justify,
                widget.articlesModel.content,
                style: TextStyle(fontSize: size * 0.044),
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
