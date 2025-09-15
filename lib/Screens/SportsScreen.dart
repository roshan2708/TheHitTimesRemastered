// lib/screens/sports_screen.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';
import 'package:the_hit_times_remastered/Widgets/CustomMatchCard.dart';
import 'package:the_hit_times_remastered/Widgets/CustomTestIcon.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGray,
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'THE HIT SPORTS',
              style: TextStyle(color: AppColors.textWhite, fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'All Sports',
              style: TextStyle(color: AppColors.textWhite, fontSize: 18),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                CustomSportsLeagueIcon(color: Colors.brown),
                CustomSportsLeagueIcon(color: Colors.white),
                CustomSportsLeagueIcon(color: Colors.red),
                CustomSportsLeagueIcon(color: Colors.purple),
                CustomSportsLeagueIcon(color: Colors.yellow),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Football',
                  style: TextStyle(color: AppColors.textWhite, fontSize: 18),
                ),
                Text(
                  'VIEW ALL',
                  style: TextStyle(color: AppColors.textWhite),
                ),
              ],
            ),
          ),
          Row(
            children: const [
              CustomMatchCard(
                day: 'LIVE',
                color: AppColors.matchLiveBlue,
                team1: 'Real Madrid',
                score1: '0',
                team2: 'M. City',
                score2: '1',
                isLive: true,
              ),
              CustomMatchCard(
                day: 'TUE',
                color: AppColors.matchUpcomingGray,
                team1: 'Tottenham',
                score1: '0',
                team2: 'PSG',
                score2: '1',
              ),
              CustomMatchCard(
                day: 'SUN',
                color: AppColors.matchPastPink,
                team1: 'Liverpool',
                score1: '',
                team2: 'Chelsea',
                score2: '',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Cirket',
                  style: TextStyle(color: AppColors.textWhite, fontSize: 18),
                ),
                Text(
                  'VIEW ALL',
                  style: TextStyle(color: AppColors.textWhite),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(child: Container(height: 100, color: AppColors.matchLiveBlue)),
              Expanded(child: Container(height: 100, color: AppColors.matchUpcomingGray)),
              Expanded(child: Container(height: 100, color: AppColors.matchPastPink)),
            ],
          ),
        ],
      ),
    );
  }
}