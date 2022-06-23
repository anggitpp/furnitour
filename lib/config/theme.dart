import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class AppColors {
  static Color backgroundColor = '#F5F8F7'.toColor();
  static Color greyColor = '#A2A2A2'.toColor();
  static Color orangeColor = '#EB7430'.toColor();
  static Color pinkColor = '#FF6363'.toColor();
  static Color lightGreyColor = '#F7F7F7'.toColor();
  static Color blackColor = '#1C1C27'.toColor();
}

ThemeData lightTheme = ThemeData(
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.robotoSlab().copyWith(
        fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.blackColor),
    bodySmall: GoogleFonts.poppins()
        .copyWith(fontSize: 12, color: AppColors.greyColor),
    labelMedium: GoogleFonts.poppins().copyWith(
        fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.blackColor),
    labelLarge: GoogleFonts.poppins().copyWith(
        fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.blackColor),
    caption: GoogleFonts.poppins()
        .copyWith(fontSize: 10, color: AppColors.greyColor),
    titleMedium: GoogleFonts.poppins().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.blackColor),
    titleSmall: GoogleFonts.poppins()
        .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
    button: GoogleFonts.poppins().copyWith(
        fontWeight: FontWeight.w600, fontSize: 12, color: Colors.white),
  ),
  scaffoldBackgroundColor: AppColors.backgroundColor,
);
