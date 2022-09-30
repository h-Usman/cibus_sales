import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
// ignore: unused_import
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class DisablePrefixTextFeildWidget extends StatelessWidget {
  final String hint;
  final String preVal;
  const DisablePrefixTextFeildWidget({
    Key? key,
    required this.hint,
    required this.preVal,
  }) : super(key: key);

  get model => null;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 38.sp,
      height: 8.791.sp,
      child: Padding(
        padding: EdgeInsets.symmetric(
            // horizontal: 5.054.sp,
            horizontal: 0,
            vertical: 0),
        child: TextField(
          enabled: false,
          style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
          // controller: TextEditingController(
          //   text: value,
          // ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 1.sp),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1.098.sp),
                borderSide: BorderSide(
                  color: ccPrimary300,
                  width: 0.2197.sp,
                )),
            prefixIcon: Container(
                decoration:
                    // ignore: prefer_const_constructors
                    BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(1.758.sp),
                    bottomLeft: Radius.circular(1.758.sp),
                  ),
                  border: Border.all(
                    color: ccPrimary300,
                    width: 1,
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                // color:
                //     ccNetural350,
                height: 10.109.sp,
                width: 11.86.sp,
                margin: EdgeInsets.only(right: 2.099.sp),
                // color:
                //     ccNeutral0, // background color
                child: Container(
                  color: ccDanger50,
                  margin: EdgeInsets.only(left: 1),
                  child: Center(
                    child: Text(
                      preVal,
                      style: GoogleFonts.sen(
                        fontSize: 4.395.sp,
                        fontWeight: FontWeight.w400,
                        color: ccNeutral180,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
                // icon
                ),
            hintText: hint,
            hintStyle: TextStyle(
              color: ccPrimary300,
              fontSize: 3.956.sp,
            ),
          ),
        ),
      ),
    );
  }
}
