// lib/main.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';
import 'package:the_hit_times_remastered/Screens/ArticleScreen.dart';
import 'package:the_hit_times_remastered/Screens/HomeScreen.dart';
import 'package:the_hit_times_remastered/Screens/LoginScreen.dart';
import 'package:the_hit_times_remastered/Screens/MatchDetailsScreen.dart';
import 'package:the_hit_times_remastered/Screens/SignUpScreen.dart';
import 'package:the_hit_times_remastered/Screens/SportsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aaj Tak App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColors.primaryBlack,
      ),
      home: const MatchDetailScreen(), 
    );
  }
}