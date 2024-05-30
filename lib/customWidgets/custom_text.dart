import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class TextCustom extends StatelessWidget {
  final String theText;
  final double fontSizeWidth;
  final String fontFamily;
  final Color fontColor;
  double height;
  FontWeight fontWeight;

  TextCustom({
    super.key,
    required this.theText,
    required this.fontSizeWidth,
    required this.fontFamily,
    required this.fontColor,
    required this.height,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      theText,
      style: TextStyle(
          height: height.h,
          fontFamily: fontFamily,
          color: fontColor,
          fontSize: fontSizeWidth,
          fontWeight: fontWeight),
      textAlign: TextAlign.center,
    );
  }
}
