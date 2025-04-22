import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/text_styles.dart';

class LogoAndAnimatedName extends StatelessWidget {
  const LogoAndAnimatedName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsManager.splashLogo, width: 80.w, height: 80.h),
        AnimatedTextKit(
          totalRepeatCount: 2,
          animatedTexts: [
            WavyAnimatedText(
              'CLOTHIQUE',
              textStyle: TextStyles.splashFont40BlackCinzel,
            ),
          ],
        ),
      ],
    );
  }
}
