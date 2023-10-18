import 'package:flower_shop/data/onboarding_data.dart';
import 'package:flower_shop/pages/onboarding/model/onboarding_model.dart';
import 'package:flower_shop/pages/onboarding/widgets/onboarding_controls.dart';
import 'package:flower_shop/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController pageController = PageController();
  int _indexSelected = 0;
  bool get isLastPage => _indexSelected == onboardingPages.length - 1;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  _onPageChanged(index) {
    setState(() {
      _indexSelected = index;
    });
  }

  _onDotPressed(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
  }

  _onNexted() {
    setState(() {
      if (_indexSelected + 1 < onboardingPages.length) {
        _indexSelected = _indexSelected + 1;
      }
    });
    pageController.animateToPage(_indexSelected,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  _onskipped() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: OnboardingPages(
                controller: pageController,
                pages: onboardingPages,
                onPageChanged: _onPageChanged),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                OnboadingDots(
                  dotsLength: onboardingPages.length,
                  indexSelected: _indexSelected,
                  onDotPressed: _onDotPressed,
                ),
                SizedBox(
                  height: 70,
                ),
                OnboardingControls(
                  isLastPage: isLastPage,
                  onSkipPressed: _onskipped,
                  onNextPressed: _onNexted,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// this is a widget extracted from the row that houses the onboarding dots
class OnboadingDots extends StatelessWidget {
  final int dotsLength;
  final double size;
  final int indexSelected;
  final Function(int) onDotPressed;

  const OnboadingDots({
    super.key,
    required this.dotsLength,
    this.size = 12,
    required this.indexSelected,
    required this.onDotPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(dotsLength, (index) => buildDot(index)),
    );
  }

  Widget buildDot(int index) {
    return GestureDetector(
      onTap: () => onDotPressed(index),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            color:
                indexSelected == index ? AppConst.kGreen : AppConst.kGreyLight,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

//  This is the OnboardingPages that was initially extracted from the PageView widget then converted to stateful widget
class OnboardingPages extends StatelessWidget {
  final PageController controller;
  final List<OnboardingPageModel> pages;
  final Function(int) onPageChanged;

  const OnboardingPages({
    super.key,
    required this.controller,
    required this.pages,
    required this.onPageChanged,
  });
  // PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: pages.map((page) => OnboardingPage(page: page)).toList(),
    );
  }
}

//this is another class of the Onboarding page to map out throught the onboardingPages in data.dart
class OnboardingPage extends StatelessWidget {
  final OnboardingPageModel page;

  const OnboardingPage({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Image.asset(
            page.image,
            height: 350,
          ),
          const SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
                children: page.title
                    .map(
                      (text) => TextSpan(
                        text: text.text,
                        style: GoogleFonts.epilogue(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: text.color,
                              fontSize: 24),
                        ),
                      ),
                    )
                    .toList()),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            page.description,
            style: GoogleFonts.epilogue(
                textStyle: const TextStyle(fontSize: 16, height: 1.5)),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
