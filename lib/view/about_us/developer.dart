import 'package:dr_boutros/helper/custom_app_bar.dart';
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
          title: const CustomAppBar(
            color: Colors.white,
            title: 'مَن نحن؟',
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          CircleAvatar(
            radius: size * 0.13,
            backgroundImage: const AssetImage('assets/images/myphoto.png'),
          ),
          const SizedBox(
            height: 25,
          ),
          Text('Dev:Mohamed Elkheety',
              style: TextStyle(
                  fontSize: size * 0.04,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 50,
            child: GestureDetector(
              onTap: () {
                _luncherUrl();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/gmail (1).png',
                    height: size * 0.04,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('mohamedelkheaty97@gmail.com',
                      style: TextStyle(
                        fontSize: size * 0.025,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _luncherUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

Uri _url = Uri.parse('https://flutter.dev');
