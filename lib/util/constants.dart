import 'package:flutter/material.dart';

class CColors {
  static const COLOR_WHITE = Colors.white;
  static const COLOR_BLACK = Colors.black;
  static const COLOR_GREY_DARK = Color.fromRGBO(29, 29, 29, 1.0);
  static const COLOR_GREY_MEDIUM = Color.fromRGBO(141, 141, 141, 1.0);
  static const COLOR_GREY_LIGHT = Color.fromRGBO(220, 220, 220, 1.0);
  static const COLOR_GREEN = Color.fromRGBO(53, 232, 124, 1.0);
}

class CPadding {
  static const double DEFAULT_PADDING_SIDES = 36.0;
  static const double DEFAULT_PADDING_SIDES_SMALL = 24.0;
  static const double DEFAULT_PADDING = 27.0;
  static const double DEFAULT_PADDING_SMALL = 13.0;
}

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
    headline1: TextStyle(
        color: CColors.COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 36),
    headline2: TextStyle(
        color: CColors.COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 24),
    headline3: TextStyle(
        color: CColors.COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 18),
    headline4: TextStyle(
        color: CColors.COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 15),
    headline5: TextStyle(
        color: CColors.COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 12),
    headline6: TextStyle(
      color: CColors.COLOR_WHITE,
      fontWeight: FontWeight.w700,
      fontSize: 12,
    ),
    bodyText1: TextStyle(
        color: CColors.COLOR_GREY_MEDIUM,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 1.5),
    bodyText2: TextStyle(
        color: CColors.COLOR_GREY_MEDIUM,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5),
    subtitle1: TextStyle(
        color: CColors.COLOR_GREY_MEDIUM,
        fontSize: 16,
        fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: CColors.COLOR_GREY_MEDIUM,
        fontSize: 12,
        fontWeight: FontWeight.w400));