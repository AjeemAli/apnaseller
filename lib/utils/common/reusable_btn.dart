import 'package:apnademandseller/utils/common/text_custom.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class BtnFrave extends StatelessWidget {
  final String text;
  final Color? color;
  final double height;
  final double width;
  final double borderRadius;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final VoidCallback? onPressed;
  final Color shadowColor;
  final Color shadowColor1;

  const BtnFrave({
    required this.text,
    this.color = kTertiary,
    this.height = 70,
    this.width = double.infinity,
    this.borderRadius = 8.0,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 18,
    this.onPressed,
    this.shadowColor = kSecondaryLight,
    this.shadowColor1 = kGrayLight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        elevation: 5,
        onPressed: onPressed,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: kSecondaryLight,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.5),
              child: Container(
                height: 49,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: Center(
                  child: TextCustom(
                    text: text,
                    fontSize: fontSize,
                    color: textColor,
                    fontWeight: fontWeight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
