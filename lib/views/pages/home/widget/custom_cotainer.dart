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
        height: height ?? 70,
        width: width ?? 70,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
        child: Center(
            child: Icon(
          icon ?? Icons.send,
          size: 32,
          color:color ?? Colors.black54,
        )),
      ),
    );
  }
}
