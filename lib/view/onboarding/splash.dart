import 'package:agro_hamkor/view/onboarding/onboarding_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splashIconSize: 300,
        splash: "assets/logo.png",
        nextScreen: const OnboardingScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: const Color(0xffDCF6E6));
  }
}
