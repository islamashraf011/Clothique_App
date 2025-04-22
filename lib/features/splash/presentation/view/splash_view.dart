import 'package:clothique/features/splash/presentation/view/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/decorations.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: Decorations.splashLinearGradientBackground,
        child: SplashViewBody(),
      ),
    );
  }
}
