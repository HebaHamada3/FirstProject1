import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final obscureText;

  const CustomTextField(
      {super.key, required this.labelText, required this.controller, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField( obscureText:obscureText,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60),
          borderSide: const BorderSide(color: Colors.black, width: 2),
        ),
      ),
    );
  }
}
