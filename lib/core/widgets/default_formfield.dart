// ignore_for_file: use_super_parameters

import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  final String prefix;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    required this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.border_formField_color)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.border_formField_color)),
          fillColor: Color(0xffF3F3F3),
          filled: true,
          labelText: labelText,
          labelStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xff858383)),
          border: OutlineInputBorder(),
          suffixIcon: isPassword ? Icon(Icons.visibility_outlined) : null,
          prefixIcon: SvgPicture.asset(
            prefix,
            fit: BoxFit.scaleDown,
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter $labelText";
          }
          return null;
        },
      ),
    );
  }
}
