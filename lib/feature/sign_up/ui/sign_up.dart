import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/styles.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_advanced_omar_ahmed/feature/sign_up/logic/cubit/signup_cubit.dart';
import 'package:flutter_advanced_omar_ahmed/feature/sign_up/ui/alreadyhaveaccounttext.dart';
import 'package:flutter_advanced_omar_ahmed/feature/sign_up/ui/sign_up_bloc_listener.dart';
import 'package:flutter_advanced_omar_ahmed/feature/sign_up/ui/sign_up_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/app_text_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                  'Create Account',
                  style: TextStyles.font24BlueBold,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayRegular,
                ),
                const SizedBox(
                  height: 36,
                ),
                Column(
                  children: [
                    const SignupForm(),
                    const SizedBox(
                      height: 40,
                    ),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const TermsAndConditionsText(),
                    const SizedBox(
                      height: 30,
                    ),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
