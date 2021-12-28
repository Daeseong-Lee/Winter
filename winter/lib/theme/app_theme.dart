import 'package:flutter/material.dart';
import 'app_color.dart';
import 'app_textstyle.dart';

class AppTheme {
  static final ThemeData regularTheme = ThemeData(
      colorScheme: const ColorScheme.light().copyWith(
        primary: AppColor.primary,
        secondary: AppColor.secondary,
      ),
      /* Text Theme */
      textTheme: TextTheme(
        button: AppTextStlye.buttonText,
        bodyText1: AppTextStlye.buttonText,
      ),
      /* Button Theme */
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColor.eButtonTextColor;
              }
              return AppColor.tButtonTextColor;
            }),
            minimumSize: MaterialStateProperty.all(const Size(343, 56)),
            textStyle: MaterialStateProperty.all(AppTextStlye.buttonText),
            foregroundColor: MaterialStateProperty.all(AppColor.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(64.0),
            ))),
      ),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColor.buttonTextDisabled;
          }
          return AppColor.tButtonTextColor;
        }),
        minimumSize: MaterialStateProperty.all(const Size(343, 56)),
      )),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(AppColor.tButtonTextColor),
        textStyle: MaterialStateProperty.all(AppTextStlye.buttonText),
        minimumSize: MaterialStateProperty.all(const Size(84, 30)),
        side: MaterialStateProperty.all(
            const BorderSide(color: AppColor.primary)),
      )));
}
