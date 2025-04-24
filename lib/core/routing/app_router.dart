import 'package:clothique/core/routing/routes.dart';
import 'package:clothique/features/auth/login/presentation/view/login_view.dart';
import 'package:clothique/features/home/presentation/view/home_view.dart';
import 'package:clothique/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      // The initial route is the splash screen
      case ('/'):
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return null;
    }
  }
}
