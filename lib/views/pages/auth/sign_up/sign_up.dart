import 'package:bank_app/components/custom_text.dart';
import 'package:bank_app/components/my_button.dart';
import 'package:bank_app/utils/const/color_code.dart';
import 'package:bank_app/views/pages/auth/login/widget/my_email.field.dart';
import 'package:bank_app/views/pages/auth/login/widget/my_pass_field.dart';
import 'package:bank_app/views/pages/auth/sign_up/widget/my_name_field.dart';
import 'package:bank_app/views/pages/auth/sign_up/widget/my_phone_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 60),
        child: SingleChildScrollView(
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
                textName: "Sign Up",
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const MyNameField(),
                  const SizedBox(
                    height: 40,
                  ),
                  const MyPhoneField(),
                  const SizedBox(
                    height: 40,
                  ),

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
                        textName: "Already have an account.?",
                        fontWeight: FontWeight.w500,
                        fSize: 14,
                        color: Colors.grey,
                      ),
                      CustomText(
                        textName: "Sign In",
                        fontWeight: FontWeight.bold,
                        fSize: 18,
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



