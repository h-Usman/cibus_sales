// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';

// Package imports:
import 'package:sizer/sizer.dart';

// Project imports:

ThemeData cibusLightTheme = ThemeData(
  // primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: cibusTextTheme,
);

TextTheme cibusTextTheme = TextTheme(
  headline1: TextStyle(
    fontFamily: 'DM Sans',
    fontWeight: FontWeight.w500,
    color: ccNeutral900,
    fontSize: 20.sp,
  ),
  headline2: TextStyle(
    fontSize: 17.sp,
    fontFamily: "DM Sans",
    fontWeight: FontWeight.w600,
    color: ccNeutral900,
  ),
  headline3: TextStyle(
    fontSize: 17.sp,
    fontFamily: "DM Sans",
    fontWeight: FontWeight.w700,
    color: ccNeutral900,
  ),
  headline4: TextStyle(
    fontSize: 15.sp,
    fontFamily: "DM Sans",
    fontWeight: FontWeight.w600,
    color: ccNeutral900,
  ),
  headline5: TextStyle(
    fontSize: 12.sp,
    fontFamily: "DM Sans",
    fontWeight: FontWeight.w600,
    color: ccNeutral900,
  ),
  headline6: TextStyle(
    fontSize: 10.sp,
    fontFamily: "DM Sans",
    fontWeight: FontWeight.w600,
    color: ccNeutral900,
  ),
  bodyText1: TextStyle(
    fontSize: 13.sp,
    fontFamily: "Mulish",
    fontWeight: FontWeight.w500,
    color: ccNeutral800,
  ),
  bodyText2: TextStyle(
    fontSize: 10.sp,
    fontFamily: "Mulish",
    fontWeight: FontWeight.w500,
    color: ccNeutral700,
  ),
  caption: TextStyle(
    fontSize: 11.sp,
    fontFamily: "Mulish",
    fontWeight: FontWeight.w400,
    color: ccNeutral700,
  ),
  subtitle1: TextStyle(
    fontSize: 12.sp,
    fontFamily: "Mulish",
    fontWeight: FontWeight.w600,
  ),
  subtitle2: TextStyle(
    fontFamily: "Mulish",
    fontWeight: FontWeight.w600,
    fontSize: 10.sp,
  ),
);
