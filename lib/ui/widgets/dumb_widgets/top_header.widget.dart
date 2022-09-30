import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class TopHeaderWidget extends StatelessWidget {
  const TopHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.sp,
      padding: EdgeInsets.only(left: 3.29.sp, right: 3.29.sp),
      decoration: BoxDecoration(
        boxShadow: cbssShadowBase,
        color: ccBakground,
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: ccNatural250,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.center,
              // width: 10.w,
              children: [
                SizedBox(
                  child: InkWell(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "../assets/imges/add-new.svg",
                          // height: 20.sp,
                          width: 4.8.sp,
                        ),
                        Padding(padding: EdgeInsets.only(left: 3.29.sp)),
                        Text(
                          "Add venue",
                          style: GoogleFonts.sen(
                            color: ccDanger300,
                            fontSize: 3.95.sp,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
              ]),
          Text(
            "Chef n Stuff, Welcome!",
            style: GoogleFonts.sen(
              color: ccDanger300,
              fontSize: 5.sp,
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
              // width: 10.w,
              children: [
                Row(
                  children: [
                    Text(
                      "Abbas Ali",
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.95.sp,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 3.29.sp)),
                    Stack(
                      children: [
                        SvgPicture.asset(
                          "../assets/imges/notification.svg",
                          // height: 20.sp,
                          width: 5.sp,
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 3.29.sp)),
                    SvgPicture.asset(
                      "../assets/imges/settings.svg",
                      // height: 20.sp,
                      width: 5.sp,
                    ),
                    Padding(padding: EdgeInsets.only(left: 3.29.sp)),
                    SvgPicture.asset(
                      "../assets/imges/profile.svg",
                      // height: 20.sp,
                      width: 7.sp,
                    ),
                  ],
                ),
              ]),
        ],
      ),
    );
  }
}
