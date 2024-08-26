
import 'package:bank_app/utils/const/color_code.dart';
import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  final String? textName;
  final void Function()? onTap;
  const MyButton({super.key, this.textName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: RColors.bColors,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            textName ?? "Next",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
