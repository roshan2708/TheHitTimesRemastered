// lib/widgets/custom_text_field.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';
class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.icon,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        obscureText: isPassword,
        style: const TextStyle(color: AppColors.textWhite),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: AppColors.textWhite),
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.textWhite),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.textWhite),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.accentBlue),
          ),
        ),
      ),
    );
  }
}