import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TranslationTabsWidget extends StatelessWidget {
  final String selectedTabName;
  final Function goToPageRequested;
  const TranslationTabsWidget({
    Key? key,
    required this.selectedTabName,
    required this.goToPageRequested,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 1.29.sp,
      ),
      color: ccNeutral0,
      // width: double.infinity,
      // height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.98.sp,
            // width: 93.40.sp,
            // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5.49.sp,
                  // width: 26.37.sp,
                  // color: Colors.red,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          // width: 12.sp,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            width: 0.5,
                            color: selectedTabName == "menu"
                                ? ccDanger300
                                : ccNeutral0,
                          ))),
                          child: Row(
                            children: [
                              Text(
                                "Menus",
                                style: selectedTabName == "menu"
                                    ? GoogleFonts.sen(
                                        color: ccDanger300,
                                        fontSize: 4.395.sp,
                                        fontWeight: FontWeight.w400,
                                      )
                                    : GoogleFonts.sen(
                                        color: ccNutural550,
                                        fontSize: 4.395.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 7.sp)),
                      ],
                    ),
                    onTap: () {
                      goToPageRequested('translation');
                    },
                  ),
                ),
                SizedBox(
                  height: 5.49.sp,
                  // color: Colors.red,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          // width: 12.sp,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            width: 0.5,
                            color: selectedTabName == "modifire"
                                ? ccDanger300
                                : ccNeutral0,
                          ))),
                          child: Row(
                            children: [
                              Text(
                                "Modifiers",
                                style: selectedTabName == "modifire"
                                    ? GoogleFonts.sen(
                                        color: ccDanger300,
                                        fontSize: 4.395.sp,
                                        fontWeight: FontWeight.w400,
                                      )
                                    : GoogleFonts.sen(
                                        color: ccNutural550,
                                        fontSize: 4.395.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 7.sp)),
                      ],
                    ),
                    onTap: () {
                      goToPageRequested('translation_modifires');
                    },
                  ),
                ),
                SizedBox(
                  height: 5.49.sp,
                  // color: Colors.red,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          // width: 12.sp,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            width: 0.5,
                            color: selectedTabName == "survey"
                                ? ccDanger300
                                : ccNeutral0,
                          ))),
                          child: Row(
                            children: [
                              Text(
                                "Surveys",
                                style: selectedTabName == "survey"
                                    ? GoogleFonts.sen(
                                        color: ccDanger300,
                                        fontSize: 4.395.sp,
                                        fontWeight: FontWeight.w400,
                                      )
                                    : GoogleFonts.sen(
                                        color: ccNutural550,
                                        fontSize: 4.395.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 7.sp)),
                      ],
                    ),
                    onTap: () {
                      goToPageRequested('translate_survey');
                    },
                  ),
                ),
                SizedBox(
                  height: 5.49.sp,
                  // color: Colors.red,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          // width: 12.sp,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            width: 0.5,
                            color: selectedTabName == "other"
                                ? ccDanger300
                                : ccNeutral0,
                          ))),
                          child: Row(
                            children: [
                              Text(
                                "Others",
                                style: selectedTabName == "other"
                                    ? GoogleFonts.sen(
                                        color: ccDanger300,
                                        fontSize: 4.395.sp,
                                        fontWeight: FontWeight.w400,
                                      )
                                    : GoogleFonts.sen(
                                        color: ccNutural550,
                                        fontSize: 4.395.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 7.sp)),
                      ],
                    ),
                    onTap: () {
                      // goToPageRequested('fb_form');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
