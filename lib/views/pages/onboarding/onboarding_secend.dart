import 'package:bank_app/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:bank_app/components/my_button.dart';
import 'package:bank_app/utils/const/color_code.dart';
import 'package:bank_app/utils/const/text_list.dart';

class OnboardingSecendPage extends StatelessWidget {
  const OnboardingSecendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 100),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/onboardingImage/secure.png",
                height: 400,
                width: 400,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 1; i <= 3; i++)
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        height: 5,
                        width: 20,
                        decoration: BoxDecoration(
                            color: RColors.bColors,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomText(
                textName: RTexts.onboardingTitle1,
                fontWeight: FontWeight.w800,
              ),
              const SizedBox(
                height: 25,
              ),
              const CustomText(
                maxLines: 2,
                textName: RTexts.onboardingSub1,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fSize: 15,
              ),
              const Spacer(),
              const MyButton(),
            ],
          ),
        ),
      ),
    );
  }
}
