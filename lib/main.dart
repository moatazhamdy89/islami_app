import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/onboarding/onboarding_screen.dart';
import 'package:islami_app/utils/app_routes.dart';
import 'package:islami_app/utils/app_theme.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onBoardingScreenRoute,
      routes:
      {
        AppRoutes.homeScreenRoute : (context) => HomeScreen(),
        AppRoutes.onBoardingScreenRoute: (context) => OnboardingScreen()
      },
      darkTheme: AppTheme.transparentScaffold,
      themeMode: ThemeMode.dark,
    );
  }
}
