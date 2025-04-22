import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../../../../core/theming/assets.dart';

class FashionAnimation extends StatelessWidget {
  const FashionAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      AssetsManager.splashAnimation,
      height: 300.h,
      width: 300.w,
    );
  }
}
