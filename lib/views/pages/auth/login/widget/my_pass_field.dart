import 'package:flutter/material.dart';

class MyPassField extends StatelessWidget {
  final TextEditingController? controller;
  const MyPassField({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Enter your password",
          labelText: "Password",
          prefixIcon: const Icon(
            Icons.lock,
          ),
          suffixIcon: const Icon(Icons.remove_red_eye_rounded),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.grey)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.grey))),
    );
  }
}
