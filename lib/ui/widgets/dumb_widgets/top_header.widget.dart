import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class TopHeaderWidget extends StatelessWidget {
  const TopHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.sp,
      padding: EdgeInsets.only(left: 3.29.sp, right: 3.29.sp),
      decoration: BoxDecoration(
        boxShadow: cbssShadowBase,
        color: ccBakground,
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: ccNatural250,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.center,
              // width: 10.w,
              children: [
                Row(
                  children: [
                    Text(
                      "Abbas Ali",
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.95.sp,
                      ),
                    ),
                    DropdownButton(
                      icon: SvgPicture.asset(
                        "../assets/imges/dropdown.svg",
                        width: 2.857.sp,
                        height: 1.53846.sp,
                      ),
                      underline: Container(
                        height: 0.0,
                        color: Colors.transparent,
                      ),
                      elevation: 0,
                      items: [
                        DropdownMenuItem(
                          value: "Abbas Ali",
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "../assets/imges/nameProfile.svg",
                                width: 6.5934.sp,
                                height: 6.5934.sp,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(right: 2.637.sp)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Abbas Ali",
                                    style: GoogleFonts.sen(
                                      color: ccDanger300,
                                      fontSize: 3.076.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "abbas@hello.com",
                                    style: GoogleFonts.sen(
                                      color: ccNutural550,
                                      fontSize: 2.19780.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        DropdownMenuItem(
                          value: "profile",
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "../assets/imges/profile-r.svg",
                                width: 3.2967.sp,
                                height: 3.2967.sp,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(right: 2.637.sp)),
                              Text(
                                "Profile",
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
                          value: "Change Password",
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "../assets/imges/password-r.svg",
                                width: 3.2967.sp,
                                height: 3.2967.sp,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(right: 2.637.sp)),
                              Text(
                                "Change Password",
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
                          value: "Help",
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "../assets/imges/help-r.svg",
                                width: 2.883516.sp,
                                height: 2.883516.sp,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(right: 2.637.sp)),
                              Text(
                                "Help",
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
                          value: "Log Out",
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "../assets/imges/logout.svg",
                                width: 3.2967.sp,
                                height: 3.2967.sp,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(right: 2.637.sp)),
                              Text(
                                "Log Out",
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
                    Padding(padding: EdgeInsets.only(right: 3.29.sp)),
                    Stack(
                      children: [
                        SvgPicture.asset(
                          "../assets/imges/notification.svg",
                          // height: 20.sp,
                          width: 5.sp,
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 3.29.sp)),
                    SvgPicture.asset(
                      "../assets/imges/profile.svg",
                      // height: 20.sp,
                      width: 7.sp,
                    ),
                  ],
                ),
              ]),
        ],
      ),
    );
  }
}
