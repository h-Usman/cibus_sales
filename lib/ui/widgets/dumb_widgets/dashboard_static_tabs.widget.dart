import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class DashboardTabsWidget extends StatelessWidget {
  const DashboardTabsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 3.076923.sp,
        right: 3.076923.sp,
        top: 5.27472.sp,
        bottom: 5.27472.sp,
      ),
      width: 78.sp,
      height: 41.7582.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.5164835.sp),
        border: Border.all(color: ccNutural550, width: 0.5),
        color: ccNeutral0,
        boxShadow: cbssShadowBase,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 5.27472.sp,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: ccNeutral190),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "../assets/imges/dollar-circle.svg",
                  width: 5.27472.sp,
                  height: 5.27472.sp,
                ),
                Padding(padding: EdgeInsets.only(right: 2.637.sp)),
                Text(
                  "Net Commisiion",
                  style: GoogleFonts.sen(
                    color: ccNetural1000,
                    fontSize: 3.5164835.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5.7142857.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RM8,245.00",
                      style: GoogleFonts.sen(
                        color: ccNetural950,
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    csvertSpace2,
                    Row(
                      children: [
                        Text(
                          "- 0,5% ",
                          style: GoogleFonts.sen(
                            color: ccDanger300,
                            fontSize: 3.076923.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        cshorzSpace1,
                        Text(
                          "from last week",
                          style: GoogleFonts.sen(
                            color: ccNutural580,
                            fontSize: 3.076923.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(right: 2.637.sp)),
                SvgPicture.asset(
                  "../assets/imges/bar.svg",
                  width: 21.sp,
                  height: 10.989.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
