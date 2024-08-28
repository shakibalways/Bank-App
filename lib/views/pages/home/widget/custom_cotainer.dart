import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  final void Function()? onTap;

  final IconData icon;
  const MyCustomContainer({
    super.key,
    this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black38,
        ),
        child: Center(
            child: Icon(
          icon ?? Icons.send,
          size: 35,
        )),
      ),
    );
  }
}
