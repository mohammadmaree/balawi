import 'package:balawi/core/resources/color.dart';
import 'package:balawi/core/resources/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BuildDefaultText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  int? maxLines;
  double? height;
  TextOverflow? textOverflow;
  TextDecoration? textDecoration;

  BuildDefaultText({
    required this.text,
    required this.color,
    required this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.height,
    this.textOverflow,
    this.textDecoration
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize:fontSize,
          color: color,
          fontWeight: fontWeight??FontWeight.w500,
          fontFamily: TAJAWAL,
        height: height??1.8,
        decoration: textDecoration??TextDecoration.none,
        decorationColor: PrimaryColors.black.withOpacity(0.4),
        decorationThickness: 1.0
      ),
      textAlign: textAlign??TextAlign.start,
      maxLines: maxLines??1,
      overflow: textOverflow??TextOverflow.ellipsis,
    );
  }
}