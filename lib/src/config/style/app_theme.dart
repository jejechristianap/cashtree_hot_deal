import 'package:cashtree_hot_deal/src/domain/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppTheme {
  static final main = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: AppColors.primary,
    canvasColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[50],
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeConstant.radiusCornerSize),
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeConstant.radiusCornerSize),
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeConstant.radiusCornerSize),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
      height: 54.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConstant.radiusCornerSize)),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      primary: AppColors.primary,
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 14.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConstant.radiusCornerSize),
      ),
      side: BorderSide(color: AppColors.primary),
    )),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.primary,
        onPrimary: Colors.white,
        textStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConstant.radiusCornerSize),
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.primary,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      centerTitle: true,
    ),
    dividerColor: Colors.grey[100],
  );
}
