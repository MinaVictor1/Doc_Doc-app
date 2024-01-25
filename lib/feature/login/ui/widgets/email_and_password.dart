import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/helpers/app_regex.dart';
import 'package:flutter_advanced_omar_ahmed/core/widgets/app_text_form_fiels.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/ui/widgets/password_validations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  bool isObscureText = true;
  late TextEditingController passcontroller;

  @override
  void initState() {
    super.initState();
    passcontroller = context.read<LoginCubit>().passcontroller;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passcontroller.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passcontroller.text);
        hasUpperCase = AppRegex.hasUpperCase(passcontroller.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passcontroller.text);
        hasNumber = AppRegex.hasNumber(passcontroller.text);
        hasMinLength = AppRegex.hasMinLength(passcontroller.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter valed email';
              }
            },
            controller: context.read<LoginCubit>().mailcontroller,
          ),
          const SizedBox(height: 16),
          AppTextFormField(
            controller: context.read<LoginCubit>().passcontroller,
            hintText: 'Password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () => setState(
                () {
                  isObscureText = !isObscureText;
                },
              ),
              child:
                  Icon(isObscureText ? Icons.visibility_off : Icons.visibility),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter valed password';
              }
            },
          ),
          const SizedBox(height: 25),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    passcontroller.dispose();
    super.dispose();
  }
}
