import 'package:dr_boutros/helper/constants.dart';
import 'package:flutter/material.dart';

void customSnacBar(BuildContext context, {required String text}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontSize: MediaQuery.of(context).size.width * 0.05),
      textAlign: TextAlign.center,
    ),
    duration: const Duration(seconds: 2),
    backgroundColor: kPrimaryColor,
  ));
}
