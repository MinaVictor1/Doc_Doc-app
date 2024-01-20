import 'package:flutter_advanced_omar_ahmed/feature/login/ui/login.dart';
import 'package:flutter_advanced_omar_ahmed/feature/onboarding/onboarding.dart';
import 'package:go_router/go_router.dart';

abstract class Approute {
  static const kHomeview = '/HomePage';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchPage = '/SearchPage';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: kHomeview,
        builder: (context, state) => const LoginScreen(),
      ),
      // GoRoute(
      //   path: kBookDetailsView,
      //   builder: (context, state) => const BookDetailsView(),
      // ),
      // GoRoute(
      //   path: kSearchPage,
      //   builder: (context, state) => const SearchPage(),
      // ),
    ],
  );
}
