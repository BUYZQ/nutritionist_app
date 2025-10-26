import 'package:flutter/material.dart';
import 'package:nutritionist_app/onboarding/welcome_screen.dart';

class NutritionistApp extends StatelessWidget {
  const NutritionistApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
