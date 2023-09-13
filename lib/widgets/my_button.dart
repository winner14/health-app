import 'package:flutter/material.dart';

import '../constants.dart';
import 'my_text.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Color color;
  final Color textColor;
  final InteractiveInkFeatureFactory? factory;
  final double? borderRadius;
  final Color borderColor;
  final double borderWidth;
  final double elevation;
  final double textSize;
  final FontWeight fontWeight;
  final Icon icon;
  final bool hasIcon;

  const MyButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height = 60,
    this.width = 200,
    this.factory,
    this.color = myPrimaryColor,
    this.textColor = Colors.white,
    this.borderRadius = 8,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
    this.elevation = 0,
    this.textSize = 18,
    this.fontWeight = FontWeight.w400,
    this.icon = const Icon(
      Icons.cancel,
      color: Colors.white,
    ),
    this.hasIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
              side: BorderSide(
                color: borderColor,
                width: borderWidth,
              ),
            ),
          ),
          elevation: MaterialStatePropertyAll(elevation),
          splashFactory: factory,
          shadowColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hasIcon == true
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: icon,
                  )
                : const SizedBox(
                    width: 0,
                  ),
            MyText(
              text: text,
              fontSize: textSize,
              fontWeight: fontWeight,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}
