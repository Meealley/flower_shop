import 'package:flower_shop/pages/onboarding/model/onboarding_model.dart';
import 'package:flower_shop/theme/app_colors.dart';

final List<OnboardingPageModel> onboardingPages = [
  OnboardingPageModel(
    title: [
      OnboardingPageTitle(
          text: "Best collection of \n", color: AppConst.kBkDark),
      OnboardingPageTitle(text: "Outdoor and Indoor ", color: AppConst.kGreen),
      OnboardingPageTitle(text: "Plant", color: AppConst.kBkDark),
    ],
    description: "Get more beautiful and scenty flowers at your doorstep",
    image: 'assets/images/slide1.png',
  ),
  OnboardingPageModel(
    title: [
      OnboardingPageTitle(
          text: "Looking for decoration \n", color: AppConst.kBkDark),
      OnboardingPageTitle(text: "Home", color: AppConst.kGreen),
      OnboardingPageTitle(
          text: "to save the ecosystem", color: AppConst.kBkDark),
    ],
    description: "Get more beautiful and scenty flowers at your doorstep",
    image: 'assets/images/slide2.png',
  ),
  OnboardingPageModel(
    title: [
      OnboardingPageTitle(text: "Try it out \n", color: AppConst.kBkDark),
      OnboardingPageTitle(text: "For food", color: AppConst.kGreen),
      OnboardingPageTitle(text: "and the plant", color: AppConst.kBkDark),
    ],
    description: "Get more beautiful and scenty flowers at your doorstep",
    image: 'assets/images/sildethree.png',
  ),
];
