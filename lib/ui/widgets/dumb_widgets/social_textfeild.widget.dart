import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class SocialMediaWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  final String lebel;
  // final String value;
  final String hint;
  final String icon;

  const SocialMediaWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    // required this.value,
    required this.lebel,
    required this.hint,
    required this.icon,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 4.153.sp, right: 4.65.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              lebel,
              style: GoogleFonts.sen(
                fontSize: 4.395.sp,
                fontWeight: FontWeight.w400,
                color: ccDanger300,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
          TextField(
            style: const TextStyle(color: ccNutural550),
            // controller: TextEditingController(text: value),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(2.63.sp),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.296.sp),
                borderSide: const BorderSide(
                  color: ccPrimary300,
                  width: 1,
                ),
              ),
              prefixIcon: Container(
                  margin: EdgeInsets.only(right: 1.296.sp),
                  child: Container(
                    padding: EdgeInsets.all(3.0.sp),
                    child: SvgPicture.asset(
                      "../assets/imges/${icon.toLowerCase()}.svg",
                      width: 4.808.sp,
                      height: 4.808.sp,
                    ),
                  )),
              hintText: hint,
              hintStyle: const TextStyle(
                color: ccNutural550,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
        ],
      ),
    );
  }
}
