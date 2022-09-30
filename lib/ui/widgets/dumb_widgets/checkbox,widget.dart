// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class CheckBoxTextWidget extends StatelessWidget {
  final String text;
  final bool check;
  const CheckBoxTextWidget({
    Key? key,
    required this.text,
    required this.check,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3.5.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 5.sp,
            height: 5.sp,
            decoration: BoxDecoration(
                border: Border.all(
                  color: ccNeutral0,
                  //  check == true ? ccDanger300 :
                ),
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Checkbox(
              // shape: CircleBorder(),
              activeColor: ccDanger300,
              checkColor: ccNeutral0,
              value: check,
              onChanged: (value) {
                // setState(() {
                //   _myBoolean = value; // rebuilds with new value
                // });
              },
            ),
          ),
          cshorzSpace4,
          Text(
            text,
            style: GoogleFonts.sen(
              fontSize: 4.395.sp,
              fontWeight: FontWeight.w400,
              color: ccNutural550,
            ),
          ),
        ],
      ),
    );
  }
}
