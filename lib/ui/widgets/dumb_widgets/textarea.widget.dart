import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class TextAreaWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  final String lebel;
  final String hint;

  const TextAreaWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    // required this.value,
    required this.lebel,
    required this.hint,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3.sp, right: 3.sp, top: 4.sp),
      width: double.infinity,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                lebel,
                style: GoogleFonts.sen(
                  fontSize: 3.956.sp,
                  fontWeight: FontWeight.w400,
                  color: ccNutural550,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
            TextField(
              maxLines: 4,
              style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
              // controller:
              //     TextEditingController(
              //         text:
              //             "36, Jalan Perdana 6/6, Pandan Perdana, 55300 Kuala Lumpur, Selangor, Malaysia"),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(2.63.sp),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.296.sp),
                    borderSide: const BorderSide(
                      color: ccPrimary300,
                      width: 1,
                    )),
                hintText: hint,
                hintStyle: TextStyle(
                  color: ccPrimary300,
                  fontSize: 3.956.sp,
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
