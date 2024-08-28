
import 'package:bank_app/views/pages/bottomnavBar/bottom_nav_bar.dart';
import 'package:bank_app/views/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
