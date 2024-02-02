import 'package:dr_boutros/helper/custom_app_bar.dart';
import 'package:dr_boutros/helper/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Dveloper extends StatelessWidget {
  const Dveloper({super.key});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    Color backgroundColor = const Color.fromARGB(255, 46, 109, 158);
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            backgroundColor: backgroundColor,
            centerTitle: true,
            title: const CustomTextAppBar(
              color: Colors.white,
              title: 'مَن نحن؟',
            )),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: size * 0.15,
          ),
          CircleAvatar(
            radius: size * 0.13,
            backgroundImage: const AssetImage('assets/images/myphoto.png'),
          ),
          const SizedBox(
            height: 25,
          ),
          customText(size * 0.04,
              text: 'Dev:Mohamed Elkheety', color: Colors.white),
          Divider(
            indent: size * 0.09,
            endIndent: size * 0.09,
            color: Colors.white,
          ),
          customText(size * 0.02,
              text: 'للمتابعة أو الإبلاغ عن مشكلة', color: Colors.white),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      _luncherUrl(
                          urlLink:
                              'https://web.facebook.com/MOHAMEDELKHEATY97');
                    },
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.white,
                      size: size * 0.04,
                    )),
                IconButton(
                    onPressed: () {
                      _luncherUrl(
                          urlLink: 'mailto:mohamedelkheaty97@gmail.com');
                    },
                    icon: Icon(
                      Icons.email,
                      color: Colors.white,
                      size: size * 0.04,
                    )),
              ],
            ),
          ),
        ]));
  }

  Future<void> _luncherUrl({required String urlLink}) async {
    Uri url = Uri.parse(urlLink);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
