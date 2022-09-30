import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ccNetural350,
      child: Container(
        // width: double.infinity,
        // height: double.infinity,
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(
          width: 1.0,
          color: ccNatural250,
        ))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 6.6.sp,
              // width: 50,
              // color: Colors.red,
              child: SvgPicture.asset(
                "../assets/imges/copyright.svg",
                height: 5.323.sp,
                width: 5.323.sp,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 3.29.sp)),
            Container(
                height: 6.6.sp,
                // width: 50,
                // color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  "2022, Cibus Sdn Bhd. All Rights Reserved.",
                  style: GoogleFonts.sen(
                    color: ccNutural550,
                    fontSize: 3.956.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            Container(
              height: 10.98.sp,
              width: 10.98.sp,
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
