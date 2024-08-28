import 'package:bank_app/components/custom_text.dart';
import 'package:bank_app/components/my_custom_card_container.dart';
import 'package:bank_app/utils/const/color_code.dart';
import 'package:bank_app/views/pages/home/widget/custom_cotainer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: RColors.avColors,
                        backgroundImage:
                            AssetImage("assets/images/bottomNavBar/home.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              textName: "Welcome back,",
                              color: Colors.grey,
                              fSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            CustomText(
                              textAlign: TextAlign.center,
                              textName: "Abdullah\nShakib",
                              fSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12,
                    ),
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const MyCustomCardContainer(),
              SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyCustomContainer(icon: Icons.send),
                  MyCustomContainer(icon: Icons.arrow_downward),
                  MyCustomContainer(icon: Icons.monetization_on_outlined),
                  MyCustomContainer(icon: Icons.vertical_align_top_sharp),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}


