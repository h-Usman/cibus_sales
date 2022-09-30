import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class ModifiresListWidget extends StatelessWidget {
  const ModifiresListWidget({
    Key? key,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.sp,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: ccPrimary300),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          cshorzSpace4,
          Container(
            width: 92.747.sp,
            alignment: Alignment.centerLeft,
            child: Text("Dairy",
                style: GoogleFonts.sen(
                  color: ccNutural550,
                  fontSize: 4.395.sp,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Container(
            width: 96.483.sp,
            alignment: Alignment.centerLeft,
            child: Text("Chhese, Cream",
                style: GoogleFonts.sen(
                  color: ccNutural550,
                  fontSize: 4.395.sp,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Container(
            // height: 50,
            // width:
            //     52.307.sp,
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Tooltip(
                    message: 'Edit Table',
                    textStyle: TextStyle(
                      color: ccNeutral0,
                    ),
                    child: SvgPicture.asset(
                      "../assets/imges/v-edit.svg",
                      // height: 20.sp,
                      width: 4.835.sp,
                      height: 4.395.sp,
                    ),
                  ),
                  // onTap: () {

                  // },
                  onTap: () {},
                ),
                cshorzSpace4,
                InkWell(
                  child: Tooltip(
                    message: 'Delete Table',
                    textStyle: TextStyle(
                      color: ccNeutral0,
                    ),
                    child: SvgPicture.asset(
                      "../assets/imges/delete-red.svg",
                      // height: 20.sp,
                      width: 5.351.sp,
                      height: 4.395.sp,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
