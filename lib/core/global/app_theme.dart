import 'package:chatgpt_flutter_app/core/global/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData appTheme() => ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.cardColor,
          elevation: 2,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: AppColors.scaffoldBackgroundColor,
            statusBarBrightness: Brightness.light,
          ),
        ),
      );
}
