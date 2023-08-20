import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final dynamic controller;
  final String labeltext;
  final bool obscureText;
  final dynamic validator;
  final dynamic prefixIcon;
  final dynamic suffixIcon;
  final dynamic keyboardType;
  final dynamic onChanged;

  const MyTextField(
      {super.key,
      required this.labeltext,
      required this.obscureText,
      this.onChanged,
      this.controller,
      this.validator,
      this.prefixIcon,
      this.keyboardType,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(
            floatingLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 117, 141, 252),
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.blueGrey),
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              width: 2,
              color: Color.fromARGB(255, 117, 141, 252),
            )),
            labelText: labeltext,
            labelStyle: TextStyle(color: Colors.white54)),
      ),
    );
  }
}
