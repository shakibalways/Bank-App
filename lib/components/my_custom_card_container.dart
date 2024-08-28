import 'package:bank_app/utils/const/color_code.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class MyCustomCardContainer extends StatelessWidget {
  const MyCustomCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height /4,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: RColors.containerColors,
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/containerImage/world.png",
              ))),
      child: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/vector/sim.png",
              height: 50,
              width: 50,
              fit: BoxFit.fitHeight,
            ),
            const CustomText(
              textName: "4562 1122 4595 7852",
              color: Colors.white,
            ),
            const CustomText(
              textName: "AbdullahShakib",
              color: Colors.white,
              fSize: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Column(
                      children: [
                        CustomText(
                          textName: "  Expiry Date",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fSize: 16,
                        ),
                        CustomText(
                          textName: "24/2030",
                          color: Colors.white,
                          fSize: 16,
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        CustomText(
                          textName: "cvv",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fSize: 20,
                        ),
                        CustomText(
                          textName: "501886",
                          color: Colors.white,
                          fSize: 16,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/vector/mastercard.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.fitHeight,
                    ),
                    const CustomText(
                      textName: "MasterCard",
                      color: Colors.white,
                      fSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}