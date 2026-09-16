import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_colors.dart';

import 'app_text_style.dart';

class AppTheme {
  static final ThemeData transparentScaffold = ThemeData(
    scaffoldBackgroundColor: AppColors.transparentColor,

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: AppTextStyle.labelStyle,
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
    ),
  );
}
