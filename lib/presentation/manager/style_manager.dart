import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hand_cricket/presentation/manager/color_manager.dart';

class StyleManager {
  static TextStyle baseStyle = GoogleFonts.poppins();

  ///Header styles
  static TextStyle headerOne = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 39,
    height: 2,
    letterSpacing: 0,
    color: ColorManager.black,
  );

  static TextStyle headerTwo = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 31,
    height: 1.9,
    letterSpacing: 0,
    color: ColorManager.black,
  );

  static TextStyle headerThree = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 25,
    height: 1.4,
    letterSpacing: 0,
    color: ColorManager.black,
  );

  //title styles
  static TextStyle titleRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    height: 1.4,
    letterSpacing: 0,
    color: ColorManager.black,
  );

  static TextStyle titleSemibold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 1.4,
    letterSpacing: 0,
    color: ColorManager.black,
  );

  //body styles
  static TextStyle bodyRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.4,
    letterSpacing: 0,
    color: ColorManager.black,
  );

  static TextStyle bodySemibold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 1.4,
    letterSpacing: 0,
    color: ColorManager.black,
  );

  static TextStyle bodySmallRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.4,
    letterSpacing: 0,
    color: ColorManager.black,
  );

  static TextStyle bodySmallSemibold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    height: 1.4,
    letterSpacing: 0,
    color: ColorManager.black,
  );
}
