import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TopLogoWidget extends StatelessWidget {
  const TopLogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.sp,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: ccNatural250,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            // width: 10.w,
            child: SvgPicture.asset(
              "../assets/imges/sidebar-logo.svg",
              // height: 20.sp,
              width: 9.7.sp,
              height: 9.7.sp,
            ),
          ),
          Text(
            "Chef n Stuff",
            style: GoogleFonts.sen(
              color: ccDanger300,
              fontSize: 5.71.sp,
            ),
          ),
        ],
      ),
    );
  }
}
