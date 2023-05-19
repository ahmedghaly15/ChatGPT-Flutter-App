import 'package:chatgpt_flutter_app/core/global/app_colors.dart';
import 'package:chatgpt_flutter_app/core/global/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData appTheme() => ThemeData.dark().copyWith(
        textTheme: ThemeData.dark().textTheme,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        appBarTheme: const AppBarTheme(
          titleTextStyle: AppStyles.textStyle23,
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
