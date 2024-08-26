import 'package:bank_app/components/custom_text.dart';
import 'package:bank_app/utils/const/color_code.dart';
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
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
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
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/vector/sim.png",
                        height: 60,
                        width: 60,
                        fit: BoxFit.fitHeight,
                      ),
                      const CustomText(
                        textName: "4562 1122 4595 7852",
                        color: Colors.white,
                      ),
                      const CustomText(
                        textName: "Abdullah\nShakib",
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
                              SizedBox(
                                width: 20,
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
                                height: 65,
                                width: 65,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
