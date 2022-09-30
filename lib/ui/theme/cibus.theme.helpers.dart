// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';

// Package imports:
import 'package:sizer/sizer.dart';

// Project imports:

Widget cshorzSpace1 = SizedBox(width: 1.sp);
Widget cshorzSpace2 = SizedBox(width: 2.sp);
Widget cshorzSpace4 = SizedBox(width: 4.sp);
Widget cshorzSpace5 = SizedBox(width: 5.sp);
Widget cshorzSpace7 = SizedBox(width: 7.sp);
Widget cshorzSpace8 = SizedBox(width: 8.sp);
Widget cshorzSpace9 = SizedBox(width: 9.sp);
Widget cshorzSpace10 = SizedBox(width: 10.sp);
Widget cshorzSpace12 = SizedBox(width: 12.sp);
Widget cshorzSpace16 = SizedBox(width: 16.sp);
Widget cshorzSpace20 = SizedBox(width: 20.sp);
Widget cshorzSpace24 = SizedBox(width: 24.sp);
Widget cshorzSpace32 = SizedBox(width: 32.sp);
Widget cshorzSpace40 = SizedBox(width: 40.sp);
Widget cshorzSpace48 = SizedBox(width: 48.sp);
Widget cshorzSpace56 = SizedBox(width: 56.sp);
Widget cshorzSpace64 = SizedBox(width: 64.sp);

Widget csvertSpace1 = SizedBox(height: 1.sp);
Widget csvertSpace2 = SizedBox(height: 2.sp);
Widget csvertSpace3 = SizedBox(height: 3.sp);
Widget csvertSpace4 = SizedBox(height: 4.sp);
Widget csvertSpace8 = SizedBox(height: 8.sp);
Widget csvertSpace12 = SizedBox(height: 12.sp);
Widget csvertSpace14 = SizedBox(height: 14.sp);
Widget csvertSpace16 = SizedBox(height: 16.sp);
Widget csvertSpace20 = SizedBox(height: 20.sp);
Widget csvertSpace24 = SizedBox(height: 24.sp);
Widget csvertSpace32 = SizedBox(height: 32.sp);
Widget csvertSpace40 = SizedBox(height: 40.sp);
Widget csvertSpace48 = SizedBox(height: 48.sp);
Widget csvertSpace56 = SizedBox(height: 56.sp);
Widget csvertSpace64 = SizedBox(height: 64.sp);

// #region Drop Shadow Styles
const List<BoxShadow> cbssShadowSmall = [
  BoxShadow(
    offset: Offset(0, 0),
    blurRadius: 1,
    color: Color.fromRGBO(12, 26, 75, 0.24),
  ),
  BoxShadow(
    offset: Offset(0, 3),
    blurRadius: 8,
    spreadRadius: -1,
    color: Color.fromRGBO(50, 50, 71, 0.05),
  ),
];

const List<BoxShadow> cbssShadowBase = [
  BoxShadow(
    offset: Offset(0, 0),
    blurRadius: 1,
    color: Color.fromRGBO(12, 26, 75, 0.1),
  ),
  BoxShadow(
    offset: Offset(0, 4),
    blurRadius: 20,
    spreadRadius: -2,
    color: Color.fromRGBO(50, 50, 71, 0.08),
  ),
];

const List<BoxShadow> cbssShadowMedium = [
  BoxShadow(
    offset: Offset(0, 0),
    blurRadius: 1,
    color: Color.fromRGBO(12, 26, 75, 0.1),
  ),
  BoxShadow(
    offset: Offset(0, 10),
    blurRadius: 16,
    color: Color.fromRGBO(20, 37, 63, 0.06),
  ),
];

const List<BoxShadow> cbssShadowLarge = [
  BoxShadow(
    offset: Offset(0, 0),
    blurRadius: 1,
    color: Color.fromRGBO(12, 26, 75, 0.1),
  ),
  BoxShadow(
    offset: Offset(0, 20),
    blurRadius: 24,
    color: Color.fromRGBO(20, 37, 63, 0.06),
  ),
];

const List<BoxShadow> cbssShadowExtraLarge = [
  BoxShadow(
    offset: Offset(0, 0),
    blurRadius: 1,
    color: Color.fromRGBO(12, 26, 75, 0.1),
  ),
  BoxShadow(
    offset: Offset(0, 30),
    blurRadius: 40,
    color: Color.fromRGBO(20, 37, 63, 0.08),
  ),
];

const List<BoxShadow> cbssShadowBottomSheet = [
  BoxShadow(
      offset: Offset(0, -4),
      blurRadius: 4,
      color: Color.fromRGBO(0, 0, 0, 0.15))
];

const List<BoxShadow> cbssShadowMenuHeaderText = [
  BoxShadow(
    offset: Offset(1, 1),
    blurRadius: 40,
    color: Colors.white,
  )
];

const List<BoxShadow> cbssShadowDetailImage = [
  BoxShadow(
      offset: Offset(0, 0),
      blurRadius: 8,
      color: Color.fromRGBO(255, 255, 255, 0.7))
];

// #endregion

// #region Widget Box Decorations

const BoxDecoration cbdsFoodImageLightBoxDecoration = BoxDecoration(
  color: ccNeutral0,
  boxShadow: [
    BoxShadow(
      offset: Offset(0, 0),
      blurRadius: 8,
      color: Color.fromRGBO(255, 255, 255, 0.7),
    ),
  ],
  borderRadius: BorderRadius.all(Radius.circular(16)),
);

const BoxDecoration cbdsLocationCardLightBoxDecoration = BoxDecoration(
  color: ccNeutral0,
  boxShadow: cbssShadowSmall,
  borderRadius: BorderRadius.all(Radius.circular(16)),
);

const BoxDecoration cbdsFloatingButtonLightBoxDecoration = BoxDecoration(
  color: ccNeutral0,
  boxShadow: [
    BoxShadow(
      offset: Offset(0, 0),
      blurRadius: 5,
      color: Color.fromRGBO(12, 26, 75, 0.02),
    ),
    BoxShadow(
      offset: Offset(0, -10),
      blurRadius: 20,
      color: Color.fromRGBO(220, 220, 228, 0.3),
    ),
  ],
  borderRadius: BorderRadius.all(Radius.circular(16)),
);

const BoxDecoration cbdsOnboardingCardLightBoxDecoration = BoxDecoration(
  color: ccNeutral0,
  boxShadow: [
    BoxShadow(
      offset: Offset(0, 0),
      blurRadius: 1,
      color: Color.fromRGBO(12, 26, 75, 0.04),
    ),
    BoxShadow(
      offset: Offset(0, 4),
      blurRadius: 20,
      color: Color.fromRGBO(50, 50, 71, 0.05),
    ),
  ],
  borderRadius: BorderRadius.all(Radius.circular(16)),
);

const BoxDecoration cbdsBackButtonLightBoxDecoration = BoxDecoration(
  color: ccNeutral0,
  boxShadow: [
    BoxShadow(
      offset: Offset(0, 0),
      blurRadius: 2,
      color: Color.fromRGBO(12, 26, 75, 0.05),
    ),
    BoxShadow(
      offset: Offset(0, 4),
      blurRadius: 20,
      color: Color.fromRGBO(50, 50, 71, 0.02),
    ),
  ],
  borderRadius: BorderRadius.all(Radius.circular(16)),
);

// #endregion
