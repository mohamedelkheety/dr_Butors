import 'package:dr_boutros/view/about_us/developer.dart';
import 'package:dr_boutros/view/favorite/favorite.dart';
import 'package:flutter/material.dart';

import 'widget/home_page_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int currentIndex = 2;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          fixedColor: Colors.green,
          selectedFontSize: 16,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.contact_support,
                ),
                label: 'من نحن؟'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: 'المفضلة'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'الرئيسية'),
          ],
        ),
        body: screenViewIndex(currentIndex));
  }
}

Widget screenViewIndex(int index) {
  if (index == 2) {
    return const HomePageBody();
  } else if (index == 1) {
    return const Favotrite();
  }
  {
    return const Dveloper();
  }
}
