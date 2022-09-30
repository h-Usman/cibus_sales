import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

// ignore: must_be_immutable
class NoMenuSectionsWidget extends StatelessWidget {
  NoMenuSectionsWidget({
    Key? key,
  }) : super(key: key);
  List<bool> isSorted = [true, false, false];
  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ccNeutral0,
      height: 100.h - 172,
      width: 100.w,
      margin: EdgeInsets.only(
          // top: 3.29.sp,
          // left: 3.29.sp,
          right: 3.29.sp,
          bottom: 11.sp),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 52.747.sp,
              height: 100.h - 200,
              decoration: BoxDecoration(
                // color: ccDanger300,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(3.269.sp),
                  bottomRight: Radius.circular(3.269.sp),
                ),
                border: Border.all(
                  color: ccNatural250,
                ),
              ),
              padding: EdgeInsets.only(
                  top: 5.714.sp,
                  bottom: 5.714.sp,
                  left: 3.956.sp,
                  right: 3.956.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sections',
                        style: GoogleFonts.sen(
                          color: ccNutural550,
                          fontSize: 3.956.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        child: SvgPicture.asset(
                          "../assets/imges/add-new.svg",
                          width: 4.178.sp,
                          height: 4.178.sp,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                  csvertSpace4,
                  Container(
                    color: ccNeutral0,
                    child: ToggleButtons(
                      isSelected: isSorted,
                      selectedColor: ccDanger300,
                      color: ccNutural550,
                      fillColor: ccNeutral0,
                      selectedBorderColor: ccDanger300,
                      borderWidth: 0.5,
                      borderRadius: BorderRadius.circular(2.1978.sp),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.75.sp),
                          child: Text(
                            'All',
                            style: GoogleFonts.sen(
                              fontSize: 3.0769.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.75.sp),
                          child: Text(
                            'Active',
                            style: GoogleFonts.sen(
                              fontSize: 3.0769.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.75.sp),
                          child: Text(
                            'Inactive',
                            style: GoogleFonts.sen(
                              fontSize: 3.0769.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                      onPressed: (int newIndex) {
                        // setState(() {
                        //   for (int index = 0;
                        //       index <
                        //           isSorted
                        //               .length;
                        //       index++) {
                        //     if (index ==
                        //         newIndex) {
                        //       isSorted[index] =
                        //           true;
                        //     } else {
                        //       isSorted[index] =
                        //           false;
                        //     }
                        //   }
                        // });
                      },
                    ),
                  ),
                ],
              ),
            ),
            // if no menu list or section is availabel
            // NoMenuSectionsWidget(),

            SizedBox(
              width: 100.w - 109.sp,
              height: 100.h - 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
                          csvertSpace4,
                          Text(
                              "You dont have any section or items yet. Start adding one",
                              style: GoogleFonts.sen(
                                color: ccNutural550,
                                fontSize: 4.395.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                // Text(
                // 'You dont have any section or items yet. Start adding one'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
