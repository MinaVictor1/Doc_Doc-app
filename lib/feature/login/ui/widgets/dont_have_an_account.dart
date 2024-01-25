import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/routing/app_router.dart';
import 'package:flutter_advanced_omar_ahmed/core/routing/routes.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/font_weight_helper.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13DarkBlueMedium
                .copyWith(fontWeight: FontWeightHelper.regular),
          ),
          TextSpan(
              text: ' Sign Up',
              style: TextStyles.font13BlueSemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  GoRouter.of(context).push(Routes.kSignUpScreen);
                }),
        ],
      ),
    );
  }
}
