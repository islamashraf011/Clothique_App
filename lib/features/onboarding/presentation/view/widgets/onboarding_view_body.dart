import 'package:clothique/core/helper/extension.dart';
import 'package:clothique/core/routing/routes.dart';
import 'package:clothique/features/onboarding/presentation/view/widgets/onboarding_indicator_dot.dart';
import 'package:clothique/features/onboarding/presentation/view/widgets/onboarding_page_view.dart';
import 'package:clothique/features/onboarding/presentation/view/widgets/onboarding_next_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  int pageCount = 3;
  @override
  void initState() {
    super.initState();
    listenToPageChange();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardingPageView(pageController: pageController),
        Positioned(
          bottom: 75.h,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(pageCount, buildIndicatorDot),
          ),
        ),
        Positioned(
          bottom: 45.h,
          right: 33.w,
          child: OnboardingNextButton(
            textButton: currentIndex == 2 ? 'Start' : 'Next',
            onPressed: () {
              if (currentIndex == 2) {
                context.pushReplacementNamed(Routes.loginScreen);
              }
              nextPageAction();
            },
          ),
        ),
        Positioned(
          bottom: 45.h,
          left: 33.w,
          child:
              currentIndex == 0
                  ? OnboardingNextButton(
                    textButton: 'Skip',
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      context.pushReplacementNamed(Routes.loginScreen);
                    },
                  )
                  : const SizedBox(),
        ),
      ],
    );
  }

  // This function is used to navigate to the next page in the onboarding process.
  // It checks if the current index is less than the total number of pages minus one.
  void nextPageAction() {
    if (currentIndex < pageCount - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    }
  }

  // This function listens to the page changes in the PageController and updates the current index accordingly.
  void listenToPageChange() {
    pageController.addListener(() {
      int newIndex = pageController.page?.round() ?? 0;
      if (newIndex != currentIndex) {
        setState(() {
          currentIndex = newIndex;
        });
      }
    });
  }

  // This function builds the indicator dot for the onboarding pages.
  Widget buildIndicatorDot(int index) {
    return OnboardingIndicatorDot(currentIndex: currentIndex, index: index);
  }
}
