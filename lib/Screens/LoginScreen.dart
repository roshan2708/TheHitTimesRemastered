// lib/screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';
import 'package:the_hit_times_remastered/Widgets/CustomButton.dart';
import 'package:the_hit_times_remastered/Widgets/CustomTextField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.redLogo,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'अाज तक',
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 100),
            const CustomTextField(icon: Icons.person, hintText: 'User Name'),
            const CustomTextField(icon: Icons.lock, hintText: 'Password', isPassword: true),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: AppColors.textWhite),
                  ),
                ),
              ),
            ),
            CustomButton(text: 'Login', onPressed: () {}),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Don't have an account? SignUp",
                style: TextStyle(color: AppColors.accentBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}