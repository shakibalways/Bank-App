import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String textName;
  final double? fSize;
  final Color? color;
  final int? maxLines;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final void Function()? onTap;

  const CustomText({
    super.key,
    required this.textName,
    this.fSize,
    this.color,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        maxLines: maxLines ?? 2,
        textAlign: textAlign ?? TextAlign.center,
        textName,
        style: TextStyle(
            fontWeight: fontWeight ?? FontWeight.normal,
            fontSize: fSize ?? 28,
            color: color ?? Colors.black),
      ),
    );
  }
}
