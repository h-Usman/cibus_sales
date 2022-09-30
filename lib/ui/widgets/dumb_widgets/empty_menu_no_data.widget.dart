import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class NoMenuWidget extends StatelessWidget {
  const NoMenuWidget({
    Key? key,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ccNeutral0,
      child: Container(
        height: 100.h - 240,
        width: 100.w,
        margin: EdgeInsets.only(
            top: 3.29.sp, left: 3.29.sp, right: 3.29.sp, bottom: 11.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.29.sp),
          border: Border.all(
            color: ccNatural250,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "../assets/imges/data.svg",
                // height: 20.sp,
                width: 19.12.sp,
                height: 12.747.sp,
              ),
              csvertSpace4,
              Text("No Data",
                  style: GoogleFonts.sen(
                    color: ccNutural550,
                    fontSize: 4.395.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
