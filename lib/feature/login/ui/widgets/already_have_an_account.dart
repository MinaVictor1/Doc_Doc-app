import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/font_weight_helper.dart';

import '../../../../core/theme/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: TextStyles.font13DarkBlueMedium
                .copyWith(fontWeight: FontWeightHelper.regular),
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
