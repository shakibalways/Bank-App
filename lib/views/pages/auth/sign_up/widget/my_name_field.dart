import 'package:flutter/material.dart';

class MyNameField extends StatelessWidget {
  const MyNameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Enter your full name",
          labelText: "Full Name",
          prefixIcon: const Icon(
            Icons.person_outlined,
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