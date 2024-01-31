import 'package:flutter/material.dart';

Text customText(double size,
    {Color color = Colors.black, required String text}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}
