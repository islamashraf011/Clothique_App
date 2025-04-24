import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/text_styles.dart';

// A custom text button for the onboarding screen.
// It displays a text and an arrow icon to indicate the next action.

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
    this.onPressed,
    this.textButton = 'Next',
    this.backgroundColor = ColorsManager.onBoardingButtonColor,
  });
  final String textButton;
  final Function()? onPressed;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
      ),
      child: Row(
        spacing: 7.w,
        children: [
          Text(textButton, style: TextStyles.font16BlackNormal),
          Icon(Icons.arrow_circle_right_outlined, size: 16.sp),
        ],
      ),
    );
  }
}
