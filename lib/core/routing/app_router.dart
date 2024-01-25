import 'package:flutter_advanced_omar_ahmed/core/di/dependency_injection.dart';
import 'package:flutter_advanced_omar_ahmed/core/routing/routes.dart';
import 'package:flutter_advanced_omar_ahmed/feature/home/ui/home_screen.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_omar_ahmed/feature/login/ui/login.dart';
import 'package:flutter_advanced_omar_ahmed/feature/onboarding/onboarding.dart';
import 'package:flutter_advanced_omar_ahmed/feature/sign_up/logic/cubit/signup_cubit.dart';
import 'package:flutter_advanced_omar_ahmed/feature/sign_up/ui/sign_up.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class Approute {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: Routes.kLoginScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: Routes.kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.kSignUpScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<SignupCubit>(),
          child: const SignupScreen(),
        ),
      ),
    ],
  );
}
