import 'package:flutter/material.dart';

class MyEmailField extends StatelessWidget {
  final TextEditingController ? controller;
  const MyEmailField({
    super.key, this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: "Enter your email",
          labelText: "E-mail",
          prefixIcon: const Icon(
            Icons.email_outlined,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.grey)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.grey))),
    );
  }
}