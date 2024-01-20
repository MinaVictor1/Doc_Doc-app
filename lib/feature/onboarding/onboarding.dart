import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/styles.dart';
import 'package:flutter_advanced_omar_ahmed/feature/onboarding/widgets/getstartedbutton.dart';
import 'package:flutter_advanced_omar_ahmed/feature/onboarding/widgets/logosection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/image_backgrund.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children: [
                const LogoSection(),
                const ImageBackgroung(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font13grayRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const GetStartedButton()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
