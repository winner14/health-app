import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final Color color;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  const MyText({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.textAlign = TextAlign.start,
    this.color = Colors.black,
    this.maxLines,
    this.overflow,
    this.fontWeight = FontWeight.w400,
    this.textScaleFactor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: GoogleFonts.quicksand(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ));
  }
}
