import 'package:bank_app/components/custom_text.dart';
import 'package:bank_app/components/my_custom_card_container.dart';
import 'package:bank_app/model/list/transaction_list.dart';
import 'package:bank_app/utils/const/color_code.dart';
import 'package:bank_app/views/pages/home/widget/custom_cotainer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: RColors.avColors,
                        backgroundImage:
                            AssetImage("assets/images/bottomNavBar/home.png"),
                      ),
                      buildSizedBox(width: 15),
                      const Padding(
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
                              textName: "Abdullah Shakib",
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
              buildSizedBox(height: 25),
              const MyCustomCardContainer(),
              buildSizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyCustomContainer(icon: Icons.send),
                  MyCustomContainer(icon: Icons.arrow_downward),
                  MyCustomContainer(icon: Icons.monetization_on_outlined),
                  MyCustomContainer(icon: Icons.vertical_align_top_sharp),
                ],
              ),
              buildSizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(textName: "Transaction", fSize: 25),
                  CustomText(
                      textName: "Sell all", fSize: 22, color: RColors.iColors),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const PageScrollPhysics(),
                  itemCount: transactionList.length,
                  itemBuilder: (context, index) {
                    var data = transactionList[index];
                    return Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 2),
                      child: Container(
                        height: height / 8.5,
                        color: Colors.white12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              leading: MyCustomContainer(
                                  icon: data.icon,
                                  height: 55,
                                  width: 55,
                                  color: Colors.black),
                              title: CustomText(
                                  textName: data.title,
                                  fSize: 23,
                                  fontWeight: FontWeight.w500),
                              subtitle: CustomText(
                                  textName: data.subTitle,
                                  fSize: 16,
                                  fontWeight: FontWeight.w300),
                              trailing:
                                  CustomText(textName: data.amount, fSize: 18),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox({double? height, double? width}) => SizedBox(
        height: height,
        width: width,
      );
}
