import 'package:flower_shop/pages/onboarding/model/onboarding_model.dart';
import 'package:flower_shop/theme/app_colors.dart';

final List<OnboardingPageModel> onboardingPages = [
  OnboardingPageModel(
    title: [
      OnboardingPageTitle(text: "Welcome to \n", color: AppConst.kBkDark),
      OnboardingPageTitle(text: "Green ", color: AppConst.kGreen),
      OnboardingPageTitle(text: "Petals Floral", color: AppConst.kBkDark),
    ],
    description: "Keeping the planet clean, one Flower per day",
    image: 'assets/images/slide1.png',
  ),
  OnboardingPageModel(
    title: [
      OnboardingPageTitle(text: "Flower ", color: AppConst.kGreen),
      OnboardingPageTitle(text: "Arrangements", color: AppConst.kBkDark),
    ],
    description:
        "Make any moment extraordinary with our exquisite floral arrangements",
    image: 'assets/images/slide2.png',
  ),
  OnboardingPageModel(
    title: [
      OnboardingPageTitle(text: "Bouquet   \n", color: AppConst.kGreen),
      OnboardingPageTitle(text: "For Someone ", color: AppConst.kBkDark),
      OnboardingPageTitle(text: "Special", color: AppConst.kBkDark),
    ],
    description:
        "Discover the joy and beauty that blooms can bring into your life by bringing home one of our stunning bouquets.",
    image: 'assets/images/sildethree.png',
  ),
];
