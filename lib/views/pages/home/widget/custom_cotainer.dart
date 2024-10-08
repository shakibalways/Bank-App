import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final void Function()? onTap;
  final IconData? icon;
  final Color? color;
  const MyCustomContainer({
    super.key,
    this.onTap,
    required this.icon,
    this.height,
    this.width,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 62,
        width: width ?? 62,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
        child: Center(
            child: Icon(
          icon ?? Icons.send,
          size: 30,
          color:color ?? Colors.black54,
        )),
      ),
    );
  }
}
