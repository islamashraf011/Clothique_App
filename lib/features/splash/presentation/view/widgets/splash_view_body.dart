import 'package:clothique/core/helper/extension.dart';
import 'package:clothique/features/splash/presentation/view/widgets/fading_subtitle_and_divider.dart';
import 'package:clothique/features/splash/presentation/view/widgets/fashion_animation.dart';
import 'package:clothique/features/splash/presentation/view/widgets/logo_and_animated_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/routing/routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigateAfterThreeSec();
  }

  void navigateAfterThreeSec() {
    Future.delayed(const Duration(milliseconds: 3500), () {
      if (mounted) {
        context.pushNamed(Routes.homeScreen);
      }
    });
  }

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
