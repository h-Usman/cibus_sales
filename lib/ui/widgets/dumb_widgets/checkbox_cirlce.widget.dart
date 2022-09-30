import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class CheckBoxCircleWidget extends StatelessWidget {
  final String text;
  final bool check;
  const CheckBoxCircleWidget({
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
                  color: check == true ? ccDanger300 : ccNeutral0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Checkbox(
              shape: CircleBorder(),
              activeColor: ccNeutral0,
              checkColor: ccDanger300,
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
