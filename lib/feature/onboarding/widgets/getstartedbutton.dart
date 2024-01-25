import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/routing/app_router.dart';
import 'package:flutter_advanced_omar_ahmed/core/routing/routes.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/styles.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/colors.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        GoRouter.of(context).push(Routes.kLoginScreen);
      },
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(ColorManger.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStatePropertyAll(Size(double.infinity, 52)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))))),
      child: Text(
        'Get Started',
        style: TextStyles.font16White600weight,
      ),
    );
  }
}
