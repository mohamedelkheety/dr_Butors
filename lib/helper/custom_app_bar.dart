import 'package:flutter/material.dart';

class CustomTextAppBar extends StatelessWidget {
  const CustomTextAppBar(
      {super.key,
      required this.title,
      this.color = Colors.black,
      this.customSize = 0.09});
  final String title;
  final Color color;
  final double customSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: MediaQuery.of(context).size.width * customSize,
      ),
    );
  }
}
