import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/text_styles.dart';

class FadingSubtitleAndDivider extends StatelessWidget {
  const FadingSubtitleAndDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(seconds: 4),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Column(
            spacing: 15.h,
            children: [
              Divider(
                color: Colors.black,
                thickness: 2,
                indent: 15.w,
                endIndent: 15.w,
              ),

              Text(
                'Where Fashion Finds You',
                style: TextStyles.splashFont18BlackCinzel,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
