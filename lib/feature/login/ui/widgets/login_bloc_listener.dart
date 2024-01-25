import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/routing/routes.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/colors.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/styles.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManger.mainBlue,
                ),
              ),
            );
          },
          error: (error) {
            GoRouter.of(context).pop();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 32,
                ),
                content: Text(
                  error,
                  style: TextStyles.font15DarkBlueMedium,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    child: Text(
                      'Got it',
                      style: TextStyles.font14BlueSemiBold,
                    ),
                  ),
                ],
              ),
            );
          },
          success: (loginResponse) {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.kHomeScreen);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
