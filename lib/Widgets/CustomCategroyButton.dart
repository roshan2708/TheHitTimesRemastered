// lib/widgets/custom_category_button.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';

class CustomCategoryButton extends StatelessWidget {
  final String text;

  const CustomCategoryButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: AppColors.accentBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(color: AppColors.textWhite),
      ),
    );
  }
}