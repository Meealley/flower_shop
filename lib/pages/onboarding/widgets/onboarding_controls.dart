import 'package:flower_shop/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingControls extends StatelessWidget {
  final bool isLastPage;
  final Function() onSkipPressed;
  final Function() onNextPressed;

  const OnboardingControls(
      {super.key,
      required this.onSkipPressed,
      required this.onNextPressed,
      required this.isLastPage});

  @override
  Widget build(BuildContext context) {
    // This is the validity check for the last page
    if (isLastPage) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: SizedBox(
            width: double.infinity,
            height: 50,
            child: CustomButton(
              title: "Get Started",
              onPressed: onNextPressed,
            )),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [buttonSkip(), buttonNext()],
      ),
    );
  }

  Widget buttonSkip() {
    return TextButton(
      onPressed: onSkipPressed,
      child: Text(
        'Skip',
        style: GoogleFonts.epilogue(
            textStyle: const TextStyle(fontSize: 17, color: AppConst.kGreyBk)),
      ),
    );
  }

  Widget buttonNext() {
    return CustomButton(
      onPressed: onNextPressed,
      title: 'Next',
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          minimumSize: const Size(50, 50),
          backgroundColor: AppConst.kGreen,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12)),
      child: Text(
        title,
        style: GoogleFonts.epilogue(
            textStyle: const TextStyle(fontSize: 18, color: AppConst.kLight)),
      ),
    );
  }
}
