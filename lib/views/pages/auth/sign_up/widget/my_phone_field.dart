import 'package:flutter/material.dart';

class MyPhoneField extends StatelessWidget {
  const MyPhoneField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Enter your phone number",
          labelText: "Phone Number",
          prefixIcon: const Icon(
            Icons.call,
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