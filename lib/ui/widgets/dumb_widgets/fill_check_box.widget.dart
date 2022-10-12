import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class FillCheckBoxCircleWidget extends StatelessWidget {
  final String text;
  final bool check;
  const FillCheckBoxCircleWidget({
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Radio(
                value: check,
                groupValue: true,
                activeColor: ccDanger300,
                onChanged:
                    // ignore: non_constant_identifier_names
                    (Myvalue) {
                  // setState(() {
                  //   Myvalue = Myvalue;
                  // });
                },
              ),
              cshorzSpace2,
              Text(
                text,
                style: GoogleFonts.sen(
                  fontSize: 4.3956.sp,
                  fontWeight: FontWeight.w400,
                  color: ccDanger300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
