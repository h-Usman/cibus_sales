import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class MenusWidget extends StatelessWidget {
  final Function goToPageRequested;
  final Function? goToModalRequested;
  final String mName;
  final bool status;
  // final String statusBg;

  const MenusWidget({
    Key? key,
    required this.goToPageRequested,
    this.goToModalRequested,
    required this.status,
    required this.mName,
    // required this.statusBg,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.486.sp,
      margin: EdgeInsets.only(
        left: 8.351.sp,
        right: 8.351.sp,
        top: 4.351.sp,
        bottom: 4.sp,
      ),
      decoration: BoxDecoration(
        boxShadow: cbssShadowBase,
        color: ccNeutral0,
        borderRadius: BorderRadius.circular(3.29.sp),
        border: Border.all(
          color: ccDanger300,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: double.infinity,
            // color: Colors.amber,
            padding: EdgeInsets.only(left: 5.714.sp, right: 8.571.sp),
            child: SvgPicture.asset(
              "../assets/imges/drag.svg",
              height: 3.516.sp,
              width: 2.417.sp,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                csvertSpace4,
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mName,
                        style: GoogleFonts.sen(
                          fontSize: 4.395.sp,
                          fontWeight: FontWeight.w400,
                          color: ccDanger300,
                        ),
                      ),
                      cshorzSpace5,
                      Container(
                        width: 15.384.sp,
                        padding: EdgeInsets.only(
                          top: 0.659.sp,
                          bottom: 0.659.sp,
                          // left: 4.527.sp,
                          // right: 4.703.sp
                        ),
                        decoration: BoxDecoration(
                          color: status == true ? ccDanger100 : ccNatural250,
                          borderRadius: BorderRadius.circular(1.098.sp),
                          border: Border.all(
                            color: status == true ? ccDanger300 : ccNutural550,
                            width: 1,
                          ),
                        ),
                        child: Text(
                          status == true ? "Live" : "Inactive",
                          style: GoogleFonts.sen(
                            fontSize: 3.076.sp,
                            fontWeight: FontWeight.w400,
                            color: ccNutural550,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]),
                Padding(padding: EdgeInsets.only(bottom: 2.857.sp)),
                Text(
                  "All your favorites available for dine-in & pick-up!",
                  style: GoogleFonts.sen(
                    fontSize: 3.076.sp,
                    fontWeight: FontWeight.w400,
                    color: ccNutural550,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 2.857.sp)),
                Text(
                  "106 Items, Last updated on June 5, 2022",
                  style: GoogleFonts.sen(
                    fontSize: 3.076.sp,
                    fontWeight: FontWeight.w400,
                    color: ccNutural550,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 2.857.sp)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 0.659.sp,
                            bottom: 0.659.sp,
                            left: 3.956.sp,
                            right: 3.956.sp),
                        decoration: BoxDecoration(
                          color: ccDanger100,
                          borderRadius: BorderRadius.circular(1.098.sp),
                          border: Border.all(
                            color: ccDanger300,
                            width: 1,
                          ),
                        ),
                        child: Text(
                          "Dine-in",
                          style: GoogleFonts.sen(
                            fontSize: 3.076.sp,
                            fontWeight: FontWeight.w400,
                            color: ccNutural550,
                          ),
                        ),
                      ),
                      cshorzSpace5,
                      Container(
                        padding: EdgeInsets.only(
                            top: 0.659.sp,
                            bottom: 0.659.sp,
                            left: 3.956.sp,
                            right: 3.956.sp),
                        decoration: BoxDecoration(
                          color: ccDanger100,
                          borderRadius: BorderRadius.circular(1.098.sp),
                          border: Border.all(
                            color: ccDanger300,
                            width: 1,
                          ),
                        ),
                        child: Text(
                          "Pick-up",
                          style: GoogleFonts.sen(
                            fontSize: 3.076.sp,
                            fontWeight: FontWeight.w400,
                            color: ccNutural550,
                          ),
                        ),
                      ),
                      cshorzSpace5,
                      Container(
                        padding: EdgeInsets.only(
                            top: 0.659.sp,
                            bottom: 0.659.sp,
                            left: 3.956.sp,
                            right: 3.956.sp),
                        decoration: BoxDecoration(
                          color: ccDanger100,
                          borderRadius: BorderRadius.circular(1.098.sp),
                          border: Border.all(
                            color: ccDanger300,
                            width: 1,
                          ),
                        ),
                        child: Text(
                          "Table",
                          style: GoogleFonts.sen(
                            fontSize: 3.076.sp,
                            fontWeight: FontWeight.w400,
                            color: ccNutural550,
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
          SizedBox(
            width: 88.sp,
            // color: Colors.blue,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: FlutterSwitch(
                        width: 9.67.sp,
                        height: 5.274.sp,
                        activeColor: ccSuccess700,
                        onToggle: (bool value) {},
                        value: status),
                  ),
                  cshorzSpace5,
                  SizedBox(
                    height: 7.47.sp,
                    // width: 36.70.sp,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ccDanger300, // foreground
                      ),
                      onPressed: () {
                        goToPageRequested('menu_search');
                      },
                      icon: SvgPicture.asset(
                        "../assets/imges/edit-white.svg",
                        width: 4.615.sp,
                        height: 3.956.sp,
                      ),
                      label: Text(
                        'Edit Menu',
                        style: GoogleFonts.sen(
                          color: ccNeutral0,
                          fontSize: 4.395.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ), // <-- Text
                    ),
                  ),
                  cshorzSpace5,
                  SvgPicture.asset(
                    "../assets/imges/settings.svg",
                    width: 5.sp,
                  ),
                  DropdownButton(
                    icon: SvgPicture.asset(
                      "../assets/imges/ellipse.svg",
                      height: 5.714.sp,
                    ),
                    underline: Container(
                      height: 0.0,
                      color: Colors.transparent,
                    ),
                    elevation: 0,
                    items: [
                      DropdownMenuItem(
                        value: "Price Editor",
                        child: SizedBox(
                          // width: 2.sp,
                          child: InkWell(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "../assets/imges/tag.svg",
                                  width: 3.516.sp,
                                  height: 2.857.sp,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(right: 2.637.sp)),
                                Text(
                                  "Price Editor",
                                  style: GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 3.076.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              goToPageRequested('price_edit');
                            },
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        value: "Translate",
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "../assets/imges/translate.svg",
                              width: 3.516.sp,
                              height: 2.857.sp,
                            ),
                            Padding(padding: EdgeInsets.only(right: 2.637.sp)),
                            Text(
                              "Translate",
                              style: GoogleFonts.sen(
                                color: ccNutural550,
                                fontSize: 3.076.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: "Duplicate",
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "../assets/imges/file.svg",
                              width: 3.516.sp,
                              height: 2.857.sp,
                            ),
                            Padding(padding: EdgeInsets.only(right: 2.637.sp)),
                            Text(
                              "Duplicate",
                              style: GoogleFonts.sen(
                                color: ccNutural550,
                                fontSize: 3.076.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: "Delete",
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "../assets/imges/delete.svg",
                              width: 3.516.sp,
                              height: 2.857.sp,
                            ),
                            Padding(padding: EdgeInsets.only(right: 2.637.sp)),
                            Text(
                              "Delete",
                              style: GoogleFonts.sen(
                                color: ccNutural550,
                                fontSize: 3.076.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
