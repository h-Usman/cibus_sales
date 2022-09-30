import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class TextFeildWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  final String lebel;
  final String hint;

  const TextFeildWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    required this.lebel,
    required this.hint,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 5.912.sp),
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
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 5.054.sp, vertical: 0),
                child: TextField(
                  style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                  // controller: TextEditingController(
                  //   text: value,
                  // ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 2.63.sp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.296.sp),
                        borderSide: BorderSide(
                          color: ccPrimary300,
                          width: 0.2197.sp,
                        )),
                    hintText: hint,
                    hintStyle: TextStyle(
                      color: ccPrimary300,
                      fontSize: 3.956.sp,
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
          ],
        ),
      ),
    );
  }
}
