import 'package:flutter/material.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome(
      {super.key,
      required this.assetImage,
      required this.text,
      required this.navigatorTo});
  final Widget navigatorTo;
  final String assetImage, text;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(bottom: 8),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return navigatorTo;
            },
          ),
        );
      },
      icon: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(22),
          image: DecorationImage(
              opacity: 0.55, image: AssetImage(assetImage), fit: BoxFit.fill),
        ),
        height: MediaQuery.of(context).size.height * 0.18,
        width: double.infinity,
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.09,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
