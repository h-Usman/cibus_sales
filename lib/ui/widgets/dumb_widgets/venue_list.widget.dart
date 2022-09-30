import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class VenuelistWidget extends StatelessWidget {
  // final Function goToPageRequested;
  const VenuelistWidget({
    Key? key,
    // required this.goToPageRequested,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ccNeutral0,
      height: 100.h - 174,
      child: SingleChildScrollView(
        child: Container(
          // height: 90.sp,
          width: 100.w,
          height: 100.h - 174,
          margin: EdgeInsets.all(3.29.sp),
          // padding: const EdgeInsets.all(5),
          // color: ccNeutral0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.29.sp),
            border: Border.all(color: ccNatural250),
          ),

          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(
              5.93.sp,
            ),
            child: Wrap(
                direction: Axis.horizontal,
                spacing: 6.sp,
                runSpacing: 6.sp,
                children: [
                  Container(
                    height: 44.615.sp,
                    width: 44.615.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.197.sp),
                      border: Border.all(color: ccPrimary300),
                    ),
                    child: InkWell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "../assets/imges/Artboard.png",
                              width: 23.73.sp,
                              height: 23.73.sp,
                            ),
                            csvertSpace2,
                            Text(
                              "Kuala Lumpur",
                              style: TextStyle(
                                fontSize: 3.516.sp,
                                color: ccDanger300,
                              ),
                            ),
                            csvertSpace2,
                            Container(
                              padding: EdgeInsets.only(top: 3.sp, bottom: 3.sp),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      width: 1.0, color: ccPrimary300),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                      child: Tooltip(
                                        message: "Edit Venue",
                                        textStyle: TextStyle(
                                          color: ccNeutral0,
                                        ),
                                        child: Container(
                                          padding:
                                              EdgeInsets.only(left: 6.6.sp),
                                          // color: Colors.red,
                                          child: SvgPicture.asset(
                                            "../assets/imges/v-edit.svg",
                                            // height: 20.sp,
                                            width: 3.846.sp,
                                            height: 3.496.sp,
                                          ),
                                        ),
                                      ),
                                      onTap: () {}),
                                  InkWell(
                                      child: Tooltip(
                                        message: "Delete Venue",
                                        textStyle: TextStyle(
                                          color: ccNeutral0,
                                        ),
                                        child: Container(
                                          padding:
                                              EdgeInsets.only(right: 6.6.sp),
                                          // color: Colors.blue,
                                          child: SvgPicture.asset(
                                            "../assets/imges/delete-red.svg",
                                            // height: 20.sp,
                                            width: 2.797.sp,
                                            height: 3.496.sp,
                                          ),
                                        ),
                                      ),
                                      onTap: () {}),
                                ],
                              ),
                            )
                          ],
                        ),
                        onTap: () {
                          // goToPageRequested('venue_location');
                        }),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
