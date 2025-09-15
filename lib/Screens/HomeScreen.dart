// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';
import 'package:the_hit_times_remastered/Widgets/CustomCategroyButton.dart';
import 'package:the_hit_times_remastered/Widgets/CustomNewsTile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlack,
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: AppColors.textWhite),
            prefixIcon: Icon(Icons.search, color: AppColors.textWhite),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: AppColors.darkGray,
          ),
          style: TextStyle(color: AppColors.textWhite),
        ),
        actions: const [
          Icon(Icons.notifications, color: AppColors.textWhite),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Overall News',
                  style: TextStyle(color: AppColors.textWhite, fontSize: 24),
                ),
                Icon(Icons.arrow_forward_ios, color: AppColors.textWhite),
              ],
            ),
          ),
          Container(
            height: 150,
            color: AppColors.placeholderGray,
          ),
          const CustomNewsTile(
            title: 'Hariom joins hands with Ishan to portest with the LGBTQ+ supports',
            subtitle: 'Doraemon consuming v',
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Explore Categories',
                  style: TextStyle(color: AppColors.textWhite, fontSize: 24),
                ),
                Icon(Icons.arrow_forward_ios, color: AppColors.textWhite),
              ],
            ),
          ),
          Wrap(
            children: const [
              CustomCategoryButton(text: 'TPS'),
              CustomCategoryButton(text: 'Annexe'),
              CustomCategoryButton(text: 'P4 ke piche'),
              CustomCategoryButton(text: '10 rs biryani'),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primaryBlack,
        selectedItemColor: AppColors.accentBlue,
        unselectedItemColor: AppColors.textWhite,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Sports'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Societies'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}