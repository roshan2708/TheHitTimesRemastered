// lib/widgets/custom_sports_league_icon.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';

class CustomSportsLeagueIcon extends StatelessWidget {
  final Color color;

  const CustomSportsLeagueIcon({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: color,
        child: const Icon(Icons.sports_soccer, color: AppColors.textWhite),
      ),
    );
  }
}