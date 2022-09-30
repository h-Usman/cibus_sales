import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/svg.dart';
// ignore: unused_import
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ItemsPricesWidget extends StatelessWidget {
  ItemsPricesWidget({
    Key? key,
  }) : super(key: key);

  List<bool> isSelected = [false, false, true, false];
  List<bool> isSorted = [true, false];
  bool isPopOpen = false;

  get model => null;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 4.sp)),
                Text("Name",
                    style: GoogleFonts.sen(
                      color: ccDanger300,
                      fontSize: 4.395.sp,
                      fontWeight: FontWeight.w400,
                    )),
                Padding(padding: EdgeInsets.only(bottom: 2.sp)),
                SizedBox(
                  width: 45.sp,
                  height: 8.791.sp,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        // horizontal: 5.054.sp,
                        horizontal: 0,
                        vertical: 0),
                    child: TextField(
                      style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                      // controller: TextEditingController(
                      //   text: value,
                      // ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 2.63.sp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.098.sp),
                            borderSide: BorderSide(
                              color: ccPrimary300,
                              width: 0.2197.sp,
                            )),
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          color: ccPrimary300,
                          fontSize: 3.956.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            cshorzSpace4,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 4.sp)),
                Text("Price",
                    style: GoogleFonts.sen(
                      color: ccDanger300,
                      fontSize: 4.395.sp,
                      fontWeight: FontWeight.w400,
                    )),
                Padding(padding: EdgeInsets.only(bottom: 2.sp)),
                SizedBox(
                  width: 35.sp,
                  height: 8.791.sp,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        // horizontal: 5.054.sp,
                        horizontal: 0,
                        vertical: 0),
                    child: TextField(
                      style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                      // controller: TextEditingController(
                      //   text: value,
                      // ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 2.63.sp),
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
                            margin: EdgeInsets.only(right: 3.076.sp),
                            // color:
                            //     ccNeutral0, // background color
                            child: Container(
                              color: ccBakground,
                              margin: EdgeInsets.only(left: 1),
                              child: Center(
                                child: Text(
                                  "RM",
                                  style: GoogleFonts.sen(
                                    fontSize: 4.395.sp,
                                    fontWeight: FontWeight.w400,
                                    color: ccNutural550,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                            // icon
                            ),
                        hintText: '0',
                        hintStyle: TextStyle(
                          color: ccPrimary300,
                          fontSize: 3.956.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            cshorzSpace4,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 4.sp)),
                Text("Calories",
                    style: GoogleFonts.sen(
                      color: ccDanger300,
                      fontSize: 4.395.sp,
                      fontWeight: FontWeight.w400,
                    )),
                Padding(padding: EdgeInsets.only(bottom: 2.sp)),
                SizedBox(
                  width: 35.sp,
                  height: 8.791.sp,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        // horizontal: 5.054.sp,
                        horizontal: 0,
                        vertical: 0),
                    child: TextField(
                      style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                      // controller: TextEditingController(
                      //   text: value,
                      // ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 2.63.sp),
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
                            margin: EdgeInsets.only(right: 3.076.sp),
                            // color:
                            //     ccNeutral0, // background color
                            child: Container(
                              color: ccBakground,
                              margin: EdgeInsets.only(left: 1),
                              child: Center(
                                child: Text(
                                  "cal",
                                  style: GoogleFonts.sen(
                                    fontSize: 4.395.sp,
                                    fontWeight: FontWeight.w400,
                                    color: ccNutural550,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                            // icon
                            ),
                        hintText: '0',
                        hintStyle: TextStyle(
                          color: ccPrimary300,
                          fontSize: 3.956.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            cshorzSpace4,
            SvgPicture.asset(
              "../assets/imges/move.svg",
              width: 3.516.sp,
              height: 5.275.sp,
            ),
            cshorzSpace4,
            Tooltip(
              message: "Delete Items",
              textStyle: TextStyle(
                color: ccNeutral0,
              ),
              child: SvgPicture.asset(
                "../assets/imges/close-red.svg",
                width: 3.956.sp,
                height: 3.736.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
