// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String text;
  FontWeight fontWeight;
  double fontSize;

  TextAlign textAlign;
  // String fontFamily;
  AppText({
    super.key,
    this.text = "",
    this.textAlign = TextAlign.left,
    this.fontWeight = FontWeight.w300,
    // this.fontFamily = "Tuli",
    this.fontSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,

        // fontFamily: fontFamily
      ),
    );
  }
}
