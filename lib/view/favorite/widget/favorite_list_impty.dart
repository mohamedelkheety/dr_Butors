import 'package:flutter/material.dart';

class FavoriteListImpty extends StatelessWidget {
  const FavoriteListImpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/bookmark_9969448.png',
            height: MediaQuery.of(context).size.height * 0.10,
          ),
          Center(
              child: Text(
            'المفضلة فارغة',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.03,
              fontWeight: FontWeight.bold,
            ),
          )),
        ],
      ),
    );
  }
}
