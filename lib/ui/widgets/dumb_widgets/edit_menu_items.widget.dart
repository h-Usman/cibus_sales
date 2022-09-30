import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/prefix_text_feild.widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class EditMenuItemsWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  final String menuName;
  final bool status;

  const EditMenuItemsWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    required this.status,
    required this.menuName,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          // bottom: 5.sp,
          // left: 5.sp,
          ),
      padding: EdgeInsets.only(
        top: 2.sp,
        bottom: 2.sp,
        left: 3.sp,
        right: 3.sp,
      ),
      width: 100.w - 109.sp,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "../assets/imges/drag_gray.svg",
                width: 2.4175.sp,
                height: 3.516.sp,
              ),
              cshorzSpace4,
              Container(
                width: 14.50.sp,
                height: 14.50.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.098.sp),
                ),
                child: Image.asset(
                  "../assets/imges/items.png",
                  width: 14.50.sp,
                  height: 14.50.sp,
                ),
              ),
              cshorzSpace4,
              Container(
                height: 3.sp,
                width: 3.sp,
                decoration: BoxDecoration(
                  color: status == true ? ccSuccess800 : ccPrimary300,
                  borderRadius: BorderRadius.circular(2.1978.sp),
                ),
              ),
              cshorzSpace2,
              Text(
                menuName,
                style: GoogleFonts.sen(
                  color: ccNutural550,
                  fontSize: 5.714.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Row(children: [
            PrefixTextFeildWidget(
              hint: '20.00',
              preVal: 'RM',
            ),
            cshorzSpace4,
            SizedBox(
              child: FlutterSwitch(
                  width: 9.67.sp,
                  height: 5.274.sp,
                  activeColor: ccSuccess700,
                  onToggle: (bool value) {},
                  value: status),
            ),
            cshorzSpace4,
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
        ],
      ),
    );
  }
}
