import 'package:clothique/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';

// This widget is used to display the onboarding screens in a PageView.
// It takes a PageController as a parameter to control the page view.

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const BouncingScrollPhysics(),
      children: [
        SplashView(),
        Image.asset(AssetsManager.onboardingFirstScreen, fit: BoxFit.fill),
        Image.asset(AssetsManager.onboardingSecondScreen, fit: BoxFit.fill),
      ],
    );
  }
}
