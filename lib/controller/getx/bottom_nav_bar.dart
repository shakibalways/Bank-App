import 'package:bank_app/views/pages/onboarding/onboarding_one.dart';
import 'package:bank_app/views/pages/onboarding/onboarding_secend.dart';
import 'package:bank_app/views/pages/onboarding/onboarding_third.dart';
import 'package:bank_app/views/pages/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarController extends GetxController{
  final GlobalKey<FormState> bottomNavigationKey = GlobalKey<FormState>();
  RxInt page = 0.obs;
  List<Widget> pages = [
    const SplashPage(),
    const OnboardingOnePage(),
    const OnboardingSecendPage(),
    const OnboardingThirdPage(),
  ].obs;

}