import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/styles.dart';
import 'package:flutter_advanced_omar_ahmed/core/widgets/app_text_button.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/ui/widgets/already_have_an_account.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/ui/widgets/email_and_password.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24blue700weight,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14gray400weight,
                ),
                const SizedBox(
                  height: 17,
                ),
                Column(
                  children: [
                    const EmailAndPassword(),
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forget Password',
                          style: TextStyles.font14MainBlueMedium,
                        )),
                    const SizedBox(
                      height: 41,
                    ),
                    AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          validateThenDoLogin(context);
                        }),
                    const SizedBox(height: 32),
                    const TermsAndConditionsText(),
                    const SizedBox(height: 24),
                    const AlreadyHaveAccountText(),
                    const LoginBlocListener()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
              email: context.read<LoginCubit>().mailcontroller.text,
              password: context.read<LoginCubit>().passcontroller.text,
            ),
          );
    }
  }
}
