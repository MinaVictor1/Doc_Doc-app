import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/helpers/paths.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Paths.logoSvg),
        SizedBox(
          width: 10.w,
        ),
        Text(
          'Docdoc',
          style: TextStyles.font24Black700Weight,
        )
      ],
    );
  }
}
