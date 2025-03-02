import 'package:dr_boutros/adMob/ad_manger.dart';
import 'package:dr_boutros/models/articles_model.dart';
import 'package:dr_boutros/view/ads/banner_container.dart';
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
    final size = await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
      MediaQuery.of(context).size.width.truncate(),
    );
    if (size == null) {
      debugPrint("🚨 لم يتمكن من الحصول على حجم الإعلان المناسب.");
      return;
    }
    bannerAd = BannerAd(
      adUnitId: AdManager.bannerId,
      request: const AdRequest(),
      size: size,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          debugPrint('$ad تم التحمييييييل');
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

  // @override
  // void initState() {
  //   loadAd();
  //   super.initState();
  // }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    loadAd(); // 🔥 يتم استدعاؤه بعد أن يصبح context جاهزًا
  }

  @override
  void dispose() {
    bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    num size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8, bottom: 8),
                child: Column(
                  spacing: 5,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      textDirection: TextDirection.rtl,
                      widget.articlesModel.title,
                      style: TextStyle(fontSize: size * 0.05),
                    ),
                    if (isLoaded && bannerAd != null)
                      BannerContainer(bannerAd: bannerAd),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back_ios)),
            ),
          ],
        ),
      ),
    );
  }
}
