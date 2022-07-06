import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

Color backgroundColor = '#F5F8F7'.toColor();
Color greyColor = '#A2A2A2'.toColor();
Color orangeColor = '#EB7430'.toColor();
Color pinkColor = '#FF6363'.toColor();
Color lightGreyColor = '#F7F7F7'.toColor();
Color softGreyColor = '#C4C4C4'.toColor();
Color blackColor = '#1C1C27'.toColor();
Color greyBorderColor = '#EEEEEE'.toColor();

ThemeData lightTheme = ThemeData(
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.robotoSlab()
        .copyWith(fontSize: 22, fontWeight: FontWeight.bold, color: blackColor),
    bodySmall: GoogleFonts.poppins().copyWith(fontSize: 12, color: greyColor),
    labelMedium: GoogleFonts.poppins()
        .copyWith(fontWeight: FontWeight.w600, fontSize: 14, color: blackColor),
    labelLarge: GoogleFonts.poppins()
        .copyWith(fontWeight: FontWeight.w600, fontSize: 16, color: blackColor),
    labelSmall: GoogleFonts.poppins().copyWith(fontSize: 10, color: greyColor),
    titleSmall: GoogleFonts.poppins()
        .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
    displaySmall: GoogleFonts.poppins().copyWith(
        fontWeight: FontWeight.w600, fontSize: 12, color: Colors.white),
  ),
  scaffoldBackgroundColor: backgroundColor,
);
