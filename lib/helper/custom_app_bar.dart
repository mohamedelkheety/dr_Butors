import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.color = Colors.black,
  });
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: MediaQuery.of(context).size.width * 0.09,
      ),
    );
  }
}
