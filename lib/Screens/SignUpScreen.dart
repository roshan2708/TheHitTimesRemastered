// lib/screens/signup_screen.dart
import 'package:flutter/material.dart';
import 'package:the_hit_times_remastered/Constants/Colors.dart';
import 'package:the_hit_times_remastered/Widgets/CustomButton.dart';
import 'package:the_hit_times_remastered/Widgets/CustomTextField.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
            const SizedBox(height: 50),
            const CustomTextField(icon: Icons.mail, hintText: 'Email'),
            const CustomTextField(icon: Icons.person, hintText: 'First Name'),
            const CustomTextField(icon: Icons.person, hintText: 'Last Name'),
            const CustomTextField(icon: Icons.phone, hintText: 'Phone number'),
            const CustomTextField(icon: Icons.lock, hintText: 'Password', isPassword: true),
            const CustomTextField(icon: Icons.lock, hintText: 'Confirm Password', isPassword: true),
            CustomButton(text: 'SignUp', onPressed: () {}),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Already have an account? Login',
                style: TextStyle(color: AppColors.accentBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}