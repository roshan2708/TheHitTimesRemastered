// lib/widgets/custom_news_tile.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';

class CustomNewsTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomNewsTile({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: AppColors.textWhite, fontSize: 18),
          ),
          Text(
            subtitle,
            style: const TextStyle(color: AppColors.textWhite, fontSize: 14),
          ),
          const Text(
            'Read more',
            style: TextStyle(color: AppColors.accentBlue),
          ),
        ],
      ),
    );
  }
}