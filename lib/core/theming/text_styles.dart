import 'package:clothique/core/helper/constants.dart';
import 'package:clothique/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font32BlackBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle font24BlackW600 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.textBlackColor,
  );

  static TextStyle font16BlackNormal = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: ColorsManager.textBlackColor,
  );

  static TextStyle font14BlackNormal = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: ColorsManager.textBlackColor,
  );

  static TextStyle font12GreyW400 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.textGreyColor,
  );

  static TextStyle splashFont40BlackCinzel = TextStyle(
    fontSize: 40.sp,
    fontFamily: Constants.splashCinzelFont,
    color: ColorsManager.textBlackColor,
  );
  static TextStyle splashFont18BlackCinzel = TextStyle(
    fontSize: 18.sp,
    letterSpacing: 5,
    fontFamily: Constants.splashCinzelFont,
    color: ColorsManager.textBlackColor,
  );
}
