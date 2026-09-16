import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/utils/app_routes.dart';
import 'package:islami_app/utils/app_text_style.dart';

import '../../utils/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showBackButton: true,
      back: Text("Back", style: AppTextStyle.onBoardingButtonsStyle),
      next: Text("Next", style: AppTextStyle.onBoardingButtonsStyle),
      done: Text("Finish", style: AppTextStyle.onBoardingButtonsStyle),
      onDone: () {
        Navigator.pushReplacementNamed(context, AppRoutes.homeScreenRoute);
      },

      dotsFlex: 3,
      dotsContainerDecorator: BoxDecoration(color: AppColors.blackColor),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        // Size of unactive dot
        activeSize: const Size(18.0, 7.0),
        // EL Dot el wa2ef feha
        activeColor: AppColors.dotColor,
        color: AppColors.disabledDotColor,
        spacing: const EdgeInsets.symmetric(horizontal: 4.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27.0),
        ),
      ),
      pages: [
        PageViewModel(
          decoration: PageDecoration(
            pageColor: AppColors.blackColor,
            bodyAlignment: Alignment.center,
            // titlePadding: EdgeInsets.only(bottom: 80)
          ),

          /// Lw el title widget m7tota lw7dha tmam htob2a hya fo2
          /// laken lw 7tet image m3aha sa3tha automatic image httl3 fo2
          /// w title widget htla2eha fel nos.
          titleWidget: SafeArea(
            child: Image.asset(
              'assets/images/appbar_intro.png',
              width: 290,
              height: 170,
            ),
          ),
          bodyWidget: Column(
            spacing: 30,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('assets/images/intro1.png'),
              ),
              SizedBox(height: 10),
              Text(
                'Welcome To Islami App',
                style: AppTextStyle.onBoardingFooterStyle,
              ),
            ],
          ),
        ),

        PageViewModel(
          decoration: PageDecoration(
            pageColor: AppColors.blackColor,
            bodyAlignment: Alignment.center,
          ),

          /// Lw el title widget m7tota lw7dha tmam htob2a hya fo2
          /// laken lw 7tet image m3aha sa3tha automatic image httl3 fo2
          /// w title widget htla2eha fel nos.
          titleWidget: SafeArea(
            child: Image.asset(
              'assets/images/appbar_intro.png',
              width: 290,
              height: 170,
            ),
          ),
          bodyWidget: Column(
            spacing: 30,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Image.asset('assets/images/intro2.png'),
              ),
              SizedBox(height: 10),
              Text(
                'Welcome To Islami',
                style: AppTextStyle.onBoardingFooterStyle,
              ),

              Text(
                'We Are Very Excited To Have You In Our Community',
                style: AppTextStyle.onBoardingDescFooterStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        PageViewModel(
          decoration: PageDecoration(
            pageColor: AppColors.blackColor,
            bodyAlignment: Alignment.center,
          ),

          /// Lw el title widget m7tota lw7dha tmam htob2a hya fo2
          /// laken lw 7tet image m3aha sa3tha automatic image httl3 fo2
          /// w title widget htla2eha fel nos.
          titleWidget: SafeArea(
            child: Image.asset(
              'assets/images/appbar_intro.png',
              width: 290,
              height: 170,
            ),
          ),
          bodyWidget: Column(
            spacing: 30,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Image.asset('assets/images/intro3.png'),
              ),
              SizedBox(height: 10),
              Text(
                'Reading The Quran',
                style: AppTextStyle.onBoardingFooterStyle,
              ),

              Text(
                'Read, and your Lord is the Most Generous',
                style: AppTextStyle.onBoardingDescFooterStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        PageViewModel(
          decoration: PageDecoration(
            pageColor: AppColors.blackColor,
            bodyAlignment: Alignment.center,
          ),

          /// Lw el title widget m7tota lw7dha tmam htob2a hya fo2
          /// laken lw 7tet image m3aha sa3tha automatic image httl3 fo2
          /// w title widget htla2eha fel nos.
          titleWidget: SafeArea(
            child: Image.asset(
              'assets/images/appbar_intro.png',
              width: 290,
              height: 170,
            ),
          ),
          bodyWidget: Column(
            spacing: 30,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Image.asset('assets/images/intro4.png'),
              ),
              SizedBox(height: 10),
              Text(
                'Welcome To Islami',
                style: AppTextStyle.onBoardingFooterStyle,
              ),

              Text(
                'We Are Very Excited To Have You In Our Community',
                style: AppTextStyle.onBoardingDescFooterStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        PageViewModel(
          decoration: PageDecoration(
            pageColor: AppColors.blackColor,
            bodyAlignment: Alignment.center,
          ),

          /// Lw el title widget m7tota lw7dha tmam htob2a hya fo2
          /// laken lw 7tet image m3aha sa3tha automatic image httl3 fo2
          /// w title widget htla2eha fel nos.
          titleWidget: SafeArea(
            child: Image.asset(
              'assets/images/appbar_intro.png',
              width: 290,
              height: 170,
            ),
          ),
          bodyWidget: Column(
            spacing: 20,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Image.asset('assets/images/intro5.png'),
              ),
              SizedBox(height: 10),
              Text(
                'Reading The Quran',
                style: AppTextStyle.onBoardingFooterStyle,
              ),

              Text(
                'You can listen to the Holy Quran Radio through the application for free and easily',
                style: AppTextStyle.onBoardingDescFooterStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
