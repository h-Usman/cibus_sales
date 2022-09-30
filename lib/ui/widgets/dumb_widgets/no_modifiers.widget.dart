import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class NoModifiresWidget extends StatelessWidget {
  const NoModifiresWidget({
    Key? key,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h - 453,
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
    );
  }
}
