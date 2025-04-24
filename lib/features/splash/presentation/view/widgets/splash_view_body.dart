import 'package:clothique/features/splash/presentation/view/widgets/fading_subtitle_and_divider.dart';
import 'package:clothique/features/splash/presentation/view/widgets/fashion_animation.dart';
import 'package:clothique/features/splash/presentation/view/widgets/logo_and_animated_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20.h,
      children: [
        FashionAnimation(),
        LogoAndAnimatedName(),
        FadingSubtitleAndDivider(),
      ],
    );
  }
}
