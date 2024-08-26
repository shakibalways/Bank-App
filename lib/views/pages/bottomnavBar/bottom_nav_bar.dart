import 'package:bank_app/controller/getx/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavBarController bottomNavBarController =
        Get.put(BottomNavBarController());
    return Scaffold(
        body: Obx(
          () => bottomNavBarController.pages[bottomNavBarController.page.value],
        ),
        bottomNavigationBar: Obx(
          () => Container(
            height: 100,
            color: Colors.yellow,
            child: BottomNavigationBar(
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.grey,
              currentIndex: bottomNavBarController.page.value,
              key: bottomNavBarController.bottomNavigationKey,
              onTap: (index) {
                bottomNavBarController.page.value = index;
              },
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/bottomNavBar/home.png",
                    height: 40,
                    width: 40,
                    fit: BoxFit.fitHeight,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset("assets/images/bottomNavBar/cards.png"),
                  label: "My Carts",
                ),
                BottomNavigationBarItem(
                  icon:
                      Image.asset("assets/images/bottomNavBar/statistics.png"),
                  label: "Statistics",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/bottomNavBar/setting.png",
                    height: 40,
                    width: 40,
                    fit: BoxFit.fitHeight,
                  ),
                  label: "Settings",
                ),
              ],
            ),
          ),
        ));
  }
}
