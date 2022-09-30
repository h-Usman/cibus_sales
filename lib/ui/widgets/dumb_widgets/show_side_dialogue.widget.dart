import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/theme/text.styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

showSideDialogue({
  required BuildContext context,
  required String title,
  required Widget child,
  required Function saveButtonPressed,
  required String saveButtonText,
  required String cancelButtonText,
}) {
  return showGeneralDialog(
      context: context,
      // barrierColor: Colors.black12.withOpacity(0.6), // Background color
      barrierDismissible: false,
      // barrierLabel: 'Dialog',
      transitionDuration: Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return Row(
          children: [
            SizedBox(
              width: 50.w,
              // width: 136.263.sp,
            ),
            Material(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.sp),
                  bottomLeft: Radius.circular(8.sp),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: ccLightBackground,
                ),
                // width: 136.263.sp,
                width: 50.w,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          csvertSpace12,
                          child,
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(2.sp, 2.sp, 4.sp, 2.sp),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () => showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(2.197.sp))),
                                  content: Container(
                                    // color: Colors.white,
                                    width: 183.076.sp,
                                    height: 78.68.sp,
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                      width: 0.5,
                                      color: ccNatural250,
                                    ))),
                                    child: SizedBox(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                              width: 0.5,
                                              color: ccNatural250,
                                            ))),
                                            height: 14.62.sp,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    height: 10.62.sp,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          // color: Colors.red,
                                                          child:
                                                              SvgPicture.asset(
                                                            "../assets/imges/warning-icon.svg",
                                                            height: 6.153.sp,
                                                            width: 6.153.sp,
                                                          ),
                                                        ),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                          left: 4.175.sp,
                                                        )),
                                                        Text(
                                                          'Are You Sure?',
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 5.714.sp,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.62.sp,
                                                  width: 10.sp,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          ccNeutral0,
                                                      elevation: 0,
                                                      shadowColor:
                                                          Colors.transparent,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      "../assets/imges/close.svg",
                                                      height: 4.615.sp,
                                                      width: 4.615.sp,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 4.83.sp),
                                          ),
                                          // SizedBox
                                          Text(
                                            'You have unsaved changes. Do you want to continue?',
                                            style: GoogleFonts.sen(
                                              color: ccNutural550,
                                              fontSize: 4.395.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    Container(
                                      height: 7.25.sp,
                                      width: 29.23.sp,
                                      margin: EdgeInsets.only(
                                        bottom: 4.39.sp,
                                      ),
                                      // color: Colors.green,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(1.098.sp),
                                        border: Border.all(color: ccNutural550),
                                      ),
                                      child: ElevatedButton.icon(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: ccNeutral0,
                                        ),
                                        icon: SvgPicture.asset(
                                          "../assets/imges/close.svg",
                                          width: 2.85.sp,
                                          height: 2.85.sp,
                                        ),
                                        label: Text(
                                          'NO',
                                          style: GoogleFonts.sen(
                                            color: ccNutural550,
                                            fontSize: 4.39.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ), // <-- Text
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                      left: 7.25.sp,
                                    )),
                                    Container(
                                      height: 7.25.sp,
                                      width: 29.23.sp,
                                      margin: EdgeInsets.only(
                                        bottom: 4.39.sp,
                                      ),
                                      // color: Colors.green,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(1.098.sp),
                                        border: Border.all(color: ccDanger300),
                                      ),
                                      child: ElevatedButton.icon(
                                        onPressed: () =>
                                            saveButtonPressed("Great"),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: ccDanger300,
                                          elevation: 0,
                                          shadowColor: Colors.transparent,
                                        ),
                                        icon: SvgPicture.asset(
                                          "../assets/imges/check-white.svg",
                                          width: 4.17.sp,
                                          height: 3.07.sp,
                                        ),
                                        label: Text(
                                          'Yes',
                                          style: GoogleFonts.sen(
                                            color: ccNeutral0,
                                            fontSize: 4.39.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ), // <-- Text
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                      left: 5.25.sp,
                                    )),
                                  ],
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(2.sp),
                                decoration: BoxDecoration(
                                  // color: ccNeutral0,
                                  borderRadius: BorderRadius.circular(2.sp),
                                  // boxShadow: cbssShadowMedium,
                                ),
                                child: Icon(
                                  Icons.close_rounded,
                                  color: ccDanger300,
                                  size: 4.sp,
                                ),
                              ),
                            ),
                            cshorzSpace8,
                            Text(
                              title,
                              style: ctsHeading4.copyWith(
                                color: ccDanger300,
                                fontSize: 5.714.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.all(2.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // TextButton(
                            //   onPressed: () {
                            //     Navigator.pop(context);
                            //   },
                            //   child: Text(
                            //     cancelButtonText,
                            //     style: TextStyle(
                            //       color: ccDanger700,
                            //       // fontSize: 4.sp,
                            //     ),
                            //   ),
                            // ),
                            // cshorzSpace8,
                            ElevatedButton(
                              onPressed: () => showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(2.197.sp))),
                                  content: Container(
                                    // color: Colors.white,
                                    width: 183.076.sp,
                                    height: 78.68.sp,
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                      width: 0.5,
                                      color: ccNatural250,
                                    ))),
                                    child: SizedBox(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                              width: 0.5,
                                              color: ccNatural250,
                                            ))),
                                            height: 14.62.sp,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    height: 10.62.sp,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          // color: Colors.red,
                                                          child:
                                                              SvgPicture.asset(
                                                            "../assets/imges/warning-icon.svg",
                                                            height: 6.153.sp,
                                                            width: 6.153.sp,
                                                          ),
                                                        ),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                          left: 4.175.sp,
                                                        )),
                                                        Text(
                                                          'Are You Sure?',
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 5.714.sp,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.62.sp,
                                                  width: 10.sp,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          ccNeutral0,
                                                      elevation: 0,
                                                      shadowColor:
                                                          Colors.transparent,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      "../assets/imges/close.svg",
                                                      height: 4.615.sp,
                                                      width: 4.615.sp,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 4.83.sp),
                                          ),
                                          // SizedBox
                                          Text(
                                            'You have unsaved changes. Do you want to continue?',
                                            style: GoogleFonts.sen(
                                              color: ccNutural550,
                                              fontSize: 4.395.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    Container(
                                      height: 7.25.sp,
                                      width: 29.23.sp,
                                      margin: EdgeInsets.only(
                                        bottom: 4.39.sp,
                                      ),
                                      // color: Colors.green,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(1.098.sp),
                                        border: Border.all(color: ccNutural550),
                                      ),
                                      child: ElevatedButton.icon(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: ccNeutral0,
                                        ),
                                        icon: SvgPicture.asset(
                                          "../assets/imges/close.svg",
                                          width: 2.85.sp,
                                          height: 2.85.sp,
                                        ),
                                        label: Text(
                                          'NO',
                                          style: GoogleFonts.sen(
                                            color: ccNutural550,
                                            fontSize: 4.39.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ), // <-- Text
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                      left: 7.25.sp,
                                    )),
                                    Container(
                                      height: 7.25.sp,
                                      width: 29.23.sp,
                                      margin: EdgeInsets.only(
                                        bottom: 4.39.sp,
                                      ),
                                      // color: Colors.green,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(1.098.sp),
                                        border: Border.all(color: ccDanger300),
                                      ),
                                      child: ElevatedButton.icon(
                                        onPressed: () =>
                                            saveButtonPressed("Great"),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: ccDanger300,
                                          elevation: 0,
                                          shadowColor: Colors.transparent,
                                        ),
                                        icon: SvgPicture.asset(
                                          "../assets/imges/check-white.svg",
                                          width: 4.17.sp,
                                          height: 3.07.sp,
                                        ),
                                        label: Text(
                                          'Yes',
                                          style: GoogleFonts.sen(
                                            color: ccNeutral0,
                                            fontSize: 4.39.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ), // <-- Text
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                      left: 5.25.sp,
                                    )),
                                  ],
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ccNeutral0,
                                elevation: 0.0,
                                side: BorderSide(
                                  width: 0.5,
                                  color: ccNutural550,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.close_rounded,
                                    color: ccNutural550,
                                  ),
                                  cshorzSpace1,
                                  Text(
                                    cancelButtonText,
                                    style: TextStyle(
                                      color: ccNutural550,
                                      // fontSize: 3.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            cshorzSpace8,
                            ElevatedButton(
                              onPressed: () => saveButtonPressed("Great"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ccDanger700,
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.check_rounded),
                                  cshorzSpace1,
                                  SizedBox(
                                    width: 50,
                                    child: Text(
                                      saveButtonText,
                                      style: TextStyle(
                                        color: ccNeutral0,
                                        // fontSize: 3.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            cshorzSpace4,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      });
}
