// lib/widgets/custom_match_card.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';
class CustomMatchCard extends StatelessWidget {
  final String day;
  final Color color;
  final String team1;
  final String score1;
  final String team2;
  final String score2;
  final bool isLive;

  const CustomMatchCard({
    super.key,
    required this.day,
    required this.color,
    required this.team1,
    required this.score1,
    required this.team2,
    required this.score2,
    this.isLive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        color: color,
        child: Column(
          children: [
            if (isLive)
              const Text('LIVE', style: TextStyle(color: Colors.green))
            else
              Text(day, style: const TextStyle(color: AppColors.textWhite)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.sports_soccer, color: AppColors.textWhite),
                Text(' $score1 ', style: const TextStyle(color: AppColors.textWhite)),
              ],
            ),
            Text(team1, style: const TextStyle(color: AppColors.textWhite)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.sports_soccer, color: AppColors.textWhite),
                Text(' $score2 ', style: const TextStyle(color: AppColors.textWhite)),
              ],
            ),
            Text(team2, style: const TextStyle(color: AppColors.textWhite)),
          ],
        ),
      ),
    );
  }
}