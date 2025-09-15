// lib/screens/article_screen.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlack,
        leading: const Icon(Icons.arrow_back, color: AppColors.textWhite),
        actions: const [
          Icon(Icons.bookmark_border, color: AppColors.textWhite),
          Icon(Icons.more_vert, color: AppColors.textWhite),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hariom joins hands with Ishan to portest with the LGBTQ+ supports . Sher',
                style: TextStyle(color: AppColors.textWhite, fontSize: 22),
              ),
            ),
            Container(
              height: 200,
              color: AppColors.placeholderGray,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hariom has joined hands with Ishan to protest in solidarity with LGBTQ+ supporters, highlighting the urgent need for equality and acceptance. Their collaboration reflects a strong message of unity and courage, amplifying the voices of marginalized communities. Together, they called for dignity, freedom, and respect for every individual, regardless of gender identity or sexual orientation. The movement has gained attention for its inclusivity, urging society to embrace diversity and work towards a more compassionate world.',
                style: TextStyle(color: AppColors.textWhite, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}