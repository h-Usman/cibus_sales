import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/svg.dart';
// ignore: unused_import
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ItemsModifireWidget extends StatelessWidget {
  ItemsModifireWidget({
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
                Text("Modifier Group",
                    style: GoogleFonts.sen(
                      color: ccDanger300,
                      fontSize: 4.395.sp,
                      fontWeight: FontWeight.w400,
                    )),
                Padding(padding: EdgeInsets.only(bottom: 2.sp)),
                SizedBox(
                  width: 55.sp,
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
                        hintText: 'Modifier Name',
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
                Text("Min",
                    style: GoogleFonts.sen(
                      color: ccDanger300,
                      fontSize: 4.395.sp,
                      fontWeight: FontWeight.w400,
                    )),
                Padding(padding: EdgeInsets.only(bottom: 2.sp)),
                SizedBox(
                  width: 15.sp,
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
                Text("Max",
                    style: GoogleFonts.sen(
                      color: ccDanger300,
                      fontSize: 4.395.sp,
                      fontWeight: FontWeight.w400,
                    )),
                Padding(padding: EdgeInsets.only(bottom: 2.sp)),
                SizedBox(
                  width: 15.sp,
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
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Checkbox(
                          // shape: CircleBorder(),
                          activeColor: ccDanger300,
                          checkColor: ccNeutral0,
                          value: true,
                          onChanged: (value) {
                            // setState(() {
                            //   _myBoolean = value; // rebuilds with new value
                            // });
                          },
                        ),
                      ),
                      cshorzSpace4,
                      Text(
                        'Required',
                        style: GoogleFonts.sen(
                          fontSize: 4.395.sp,
                          fontWeight: FontWeight.w400,
                          color: ccNutural550,
                        ),
                      ),
                    ],
                  )
                ]),
            cshorzSpace4,
            SvgPicture.asset(
              "../assets/imges/move.svg",
              width: 3.516.sp,
              height: 5.275.sp,
            ),
            cshorzSpace4,
            Tooltip(
              message: "Delete Modifiers",
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
