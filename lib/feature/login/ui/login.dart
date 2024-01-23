import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/styles.dart';
import 'package:flutter_advanced_omar_ahmed/core/widgets/app_text_button.dart';
import 'package:flutter_advanced_omar_ahmed/core/widgets/app_text_form_fiels.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/ui/widgets/already_have_an_account.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Key formKey = GlobalKey<FormState>();
  bool isObscureText = true;
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
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppTextFormField(hintText: 'Email'),
                        const SizedBox(height: 16),
                        AppTextFormField(
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                            onTap: () => setState(() {
                              isObscureText = !isObscureText;
                            }),
                            child: Icon(isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
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
                            onPressed: () {}),
                        const SizedBox(height: 32),
                        const TermsAndConditionsText(),
                        const SizedBox(height: 24),
                        const AlreadyHaveAccountText()
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
