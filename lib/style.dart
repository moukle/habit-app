import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme sourceSerif() {
  return TextTheme(
    headline1: GoogleFonts.sourceSerifPro(
        fontSize: 107, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.sourceSerifPro(
        fontSize: 67, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3:
        GoogleFonts.sourceSerifPro(fontSize: 54, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.sourceSerifPro(
        fontSize: 38, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5:
        GoogleFonts.sourceSerifPro(fontSize: 27, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.sourceSerifPro(
        fontSize: 22, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.sourceSerifPro(
        fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.sourceSerifPro(
        fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.sourceSansPro(
        fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.sourceSansPro(
        fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.sourceSansPro(
        fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.sourceSansPro(
        fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.sourceSansPro(
        fontSize: 11, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}
