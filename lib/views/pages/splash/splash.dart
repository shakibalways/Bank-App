import 'package:bank_app/utils/const/color_code.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/sp_logo/splash_logo.png",
              height: 100,
              width: 100,
              fit: BoxFit.fitHeight,
            ),
            const Text(
              "BANKPICK",
              style: TextStyle(
                  color: RColors.tColors,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
