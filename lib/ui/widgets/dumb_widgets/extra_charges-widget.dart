// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class ExtraChargesDetailsWidget extends StatelessWidget {
  // final Function goToPageRequested;
  final String name;
  const ExtraChargesDetailsWidget({
    Key? key,
    required this.name,

    // required this.goToPageRequested,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: ccPrimary300),
        ),
      ),
      width: 150.10.sp,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: 100.h - 380,
            // width: 150.10.sp,
            padding: EdgeInsets.only(
                left: 7.5.sp, top: 7.5.sp, right: 7.5.sp, bottom: 6.sp),
            child: Text(name,
                style: GoogleFonts.sen(
                  color: ccDanger300,
                  fontSize: 5.714.sp,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Container(
            // height: 100.h - 380,
            // width: 150.10.sp,
            padding: EdgeInsets.all(7.5.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 91.538.sp,
                  child: Text("Name",
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 4.395.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                Text("Rate",
                    style: GoogleFonts.sen(
                      color: ccNutural550,
                      fontSize: 4.395.sp,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(7.5.sp),
            child: InkWell(
              child: Row(
                children: [
                  Text(
                    'Add ',
                    style: GoogleFonts.sen(
                      color: ccDanger300,
                      fontSize: 4.395.sp,
                    ),
                  ),
                  Text(
                    name,
                    style: GoogleFonts.sen(
                      color: ccDanger300,
                      fontSize: 4.395.sp,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 3.29.sp)),
                  SvgPicture.asset(
                    "../assets/imges/plus.svg",
                    // height: 20.sp,
                    width: 3.sp,
                    height: 3.sp,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
