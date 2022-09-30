import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OrdersTabsWidget extends StatelessWidget {
  final String selectedTabName;
  final Function goToPageRequested;
  const OrdersTabsWidget({
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
                            color: selectedTabName == "all"
                                ? ccDanger300
                                : ccNeutral0,
                          ))),
                          child: Row(
                            children: [
                              Text(
                                "All",
                                style: selectedTabName == "all"
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
                              cshorzSpace2,
                              Container(
                                width: 3.29.sp,
                                height: 3.29.sp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0.4395),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ccNetural290,
                                    borderRadius: BorderRadius.circular(0.4395),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "9",
                                      style: selectedTabName == "all"
                                          ? GoogleFonts.sen(
                                              color: ccDanger300,
                                              fontSize: 2.63.sp,
                                              fontWeight: FontWeight.w400,
                                            )
                                          : GoogleFonts.sen(
                                              color: ccNutural550,
                                              fontSize: 2.63.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 7.sp)),
                      ],
                    ),
                    onTap: () {
                      // goToPageRequested('menu');
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
                            color: selectedTabName == "new"
                                ? ccDanger300
                                : ccNeutral0,
                          ))),
                          child: Row(
                            children: [
                              Text(
                                "New",
                                style: selectedTabName == "new"
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
                              cshorzSpace2,
                              Container(
                                width: 3.29.sp,
                                height: 3.29.sp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0.4395),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ccNetural290,
                                    borderRadius: BorderRadius.circular(0.4395),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "7",
                                      style: selectedTabName == "new"
                                          ? GoogleFonts.sen(
                                              color: ccDanger300,
                                              fontSize: 2.63.sp,
                                              fontWeight: FontWeight.w400,
                                            )
                                          : GoogleFonts.sen(
                                              color: ccNutural550,
                                              fontSize: 2.63.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 7.sp)),
                      ],
                    ),
                    onTap: () {
                      // goToPageRequested('menu_modifier');
                    },
                  ),
                ),
                SizedBox(
                    height: 5.49.sp,
                    // width: 20.sp,
                    // color: Colors.red,
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            // width: 12.sp,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 0.5,
                              color: selectedTabName == "preparing"
                                  ? ccDanger300
                                  : ccNeutral0,
                            ))),
                            child: Row(
                              children: [
                                Text(
                                  "Preparing",
                                  style: selectedTabName == "preparing"
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
                                cshorzSpace2,
                                Container(
                                  width: 3.29.sp,
                                  height: 3.29.sp,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0.4395),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ccNetural290,
                                      borderRadius:
                                          BorderRadius.circular(0.4395),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "7",
                                        style: selectedTabName == "preparing"
                                            ? GoogleFonts.sen(
                                                color: ccDanger300,
                                                fontSize: 2.63.sp,
                                                fontWeight: FontWeight.w400,
                                              )
                                            : GoogleFonts.sen(
                                                color: ccNutural550,
                                                fontSize: 2.63.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 7.sp)),
                        ],
                      ),
                      onTap: () {
                        // goToPageRequested('venus_table');
                      },
                    )),
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
                            color: selectedTabName == "ready"
                                ? ccDanger300
                                : ccNeutral0,
                          ))),
                          child: Row(
                            children: [
                              Text(
                                "Ready",
                                style: selectedTabName == "ready"
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
                              cshorzSpace2,
                              Container(
                                width: 3.29.sp,
                                height: 3.29.sp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0.4395),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ccNetural290,
                                    borderRadius: BorderRadius.circular(0.4395),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "7",
                                      style: selectedTabName == "ready"
                                          ? GoogleFonts.sen(
                                              color: ccDanger300,
                                              fontSize: 2.63.sp,
                                              fontWeight: FontWeight.w400,
                                            )
                                          : GoogleFonts.sen(
                                              color: ccNutural550,
                                              fontSize: 2.63.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Padding(padding: EdgeInsets.only(right: 7.sp)),
                      ],
                    ),
                    onTap: () {
                      // goToPageRequested('venue_staff');
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
