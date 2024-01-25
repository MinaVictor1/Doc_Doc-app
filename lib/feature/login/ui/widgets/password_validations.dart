import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/colors.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacters,
      required this.hasNumber,
      required this.hasMinLength});
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        const SizedBox(height: 2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        const SizedBox(height: 2),
        buildValidationRow(
            'At least 1 Special Character', hasSpecialCharacters),
        const SizedBox(height: 2),
        buildValidationRow('At least 1 number', hasNumber),
        const SizedBox(height: 2),
        buildValidationRow('At least 8 characters long', hasMinLength),
        const SizedBox(height: 2),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: ColorManger.gray,
          radius: 2.5,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          text,
          style: TextStyles.font13DarkBlueMedium.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color: hasValidated ? ColorManger.gray : ColorManger.darkBlue),
        )
      ],
    );
  }
}
