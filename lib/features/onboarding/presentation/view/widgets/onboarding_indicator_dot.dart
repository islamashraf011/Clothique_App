import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// This widget is used to show the indicator dots in the onboarding screen
class OnboardingIndicatorDot extends StatelessWidget {
  const OnboardingIndicatorDot({
    super.key,
    required this.currentIndex,
    required this.index,
  });

  final int currentIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      width: 10.w,
      height: 10.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            currentIndex == index
                ? const Color.fromARGB(255, 107, 163, 241)
                : Colors.grey[50],
      ),
    );
  }
}
