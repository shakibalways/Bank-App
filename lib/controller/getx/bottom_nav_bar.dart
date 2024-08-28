import 'package:bank_app/views/pages/auth/login/login.dart';
import 'package:bank_app/views/pages/auth/sign_up/sign_up.dart';
import 'package:bank_app/views/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarController extends GetxController{
  final GlobalKey<FormState> bottomNavigationKey = GlobalKey<FormState>();
  RxInt page = 0.obs;
  List<Widget> pages = [
    const HomePage(),
    const LoginPage(),
    const SignUpPage(),
    const LoginPage(),
  ].obs;

}