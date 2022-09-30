import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class AddVenueEmptyWidget extends StatelessWidget {
  final Function goToPageRequested;
  const AddVenueEmptyWidget({
    Key? key,
    required this.goToPageRequested,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ccNeutral0,
      height: 100.h - 174,
      child: Container(
        // height: 90.sp,
        width: 100.w,
        margin: EdgeInsets.all(3.29.sp),
        // padding: const EdgeInsets.all(5),
        // color: ccNeutral0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.29.sp),
          border: Border.all(color: ccNatural250),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // if no data found
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                csvertSpace24,
                                SvgPicture.asset(
                                  "../assets/imges/data.svg",
                                  // height: 20.sp,
                                  width: 19.12.sp,
                                  height: 12.747.sp,
                                ),
                                csvertSpace4,
                                Text("No Data",
                                    style: GoogleFonts.sen(
                                      color: ccNutural550,
                                      fontSize: 4.395.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                csvertSpace16,
                                Text("No Venue  added yet!",
                                    style: GoogleFonts.sen(
                                      color: ccDanger300,
                                      fontSize: 5.714.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                          ),

                          SizedBox(
                            width: 100.w,
                            child: InkWell(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  csvertSpace12,
                                  SvgPicture.asset(
                                    "../assets/imges/add-new.svg",
                                    // height: 20.sp,
                                    width: 4.8.sp,
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.29.sp)),
                                  Text(
                                    "Add venue",
                                    style: GoogleFonts.sen(
                                      color: ccDanger300,
                                      fontSize: 3.95.sp,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                goToPageRequested('veune_location');
                              },
                            ),
                          ),
                          // empty box with folder
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
