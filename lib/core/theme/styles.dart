import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font32BlackBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorManger.mainBlue,
  );

  static TextStyle font13grayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorManger.gray,
  );

  static TextStyle font16White600weight = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
