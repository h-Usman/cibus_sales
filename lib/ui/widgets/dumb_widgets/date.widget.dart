import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      height: 7.47.sp,
      width: 69.sp,
      padding: EdgeInsets.only(left: 2.197.sp, right: 2.197.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1.098.sp),
        border: Border.all(
          color: ccNutural550,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Start Date',
            style: GoogleFonts.sen(
              color: ccPrimary300,
              fontSize: 3.07.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 13.62.sp)),
          SvgPicture.asset(
            "../assets/imges/right-arrow.svg",
            width: 3.51.sp,
            height: 1.75.sp,
          ),
          Padding(padding: EdgeInsets.only(right: 2.41.sp)),
          Text(
            'End Date',
            style: GoogleFonts.sen(
              color: ccPrimary300,
              fontSize: 3.07.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 11.sp)),
          SvgPicture.asset(
            "../assets/imges/calender.svg",
            width: 3.296.sp,
            height: 3.736.sp,
          ),
        ],
      ),
    );
  }
}
