import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flower_shop/pages/home.dart';
import 'package:flower_shop/pages/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset('assets/images/splash.json'),
        splashIconSize: 250,
        duration: 1000,
        nextScreen: const OnboardingPage());
  }
}
