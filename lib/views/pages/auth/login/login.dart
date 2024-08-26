import 'package:bank_app/components/custom_text.dart';
import 'package:bank_app/components/my_button.dart';
import 'package:bank_app/utils/const/color_code.dart';
import 'package:bank_app/views/pages/auth/login/widget/my_email.field.dart';
import 'package:bank_app/views/pages/auth/login/widget/my_pass_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    size: 28,
                    Icons.arrow_back,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const CustomText(
                textName: "Sign In",
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const MyEmailField(),
                  const SizedBox(
                    height: 40,
                  ),
                  const MyPassField(),
                  const SizedBox(
                    height: 40,
                  ),
                  const MyButton(
                    textName: "Sign In",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        textName: "I’m a new user.?",
                        fontWeight: FontWeight.w500,
                        fSize: 14,
                        color: Colors.grey,
                      ),
                      CustomText(
                        textName: "Sign Up",
                        fontWeight: FontWeight.bold,
                        fSize: 15,
                        color: RColors.bColors,
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}




