import 'package:flutter/material.dart';

class CustomAppBarWithIcon extends StatelessWidget {
  const CustomAppBarWithIcon({
    super.key,
    required this.title,
    required this.iconPath,
  });
  final String iconPath, title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          iconPath,
          height: MediaQuery.of(context).size.width * 0.11,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.08,
          ),
        ),
      ],
    );
  }
}
