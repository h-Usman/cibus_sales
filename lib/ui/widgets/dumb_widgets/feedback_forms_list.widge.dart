import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class FeedbackFormListWidget extends StatelessWidget {
  final Function goToPageRequested;
  final Function? goToModalRequested;
  // final String formNo;
  final String formName;
  final bool status;
  // final bool selected;
  // final String type;
  // final String table;
  // final String waiter;
  // final String updateDate;
  // final String? updateTime;
  // final String date;
  // final String orderItemId;

  const FeedbackFormListWidget({
    Key? key,
    required this.goToPageRequested,
    this.goToModalRequested,
    // required this.formNo,
    // required this.date,
    // required this.orderItemId,
    required this.formName,
    required this.status,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.28.sp,
      margin: EdgeInsets.only(bottom: 2.sp),
      decoration: BoxDecoration(
        color: ccDanger100,
        border: Border(
          bottom: BorderSide(color: ccNatural250, width: 0.5),
          top: BorderSide(color: ccNatural250, width: 0.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                // width: 70.329.sp,
                height: 6.6.sp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    cshorzSpace7,
                    Text(
                      formName,
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.95.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
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
                  borderRadius: BorderRadius.circular(1.098.sp),
                  border: Border.all(
                    color: status == true ? ccDanger300 : ccDanger100,
                    width: 1,
                  ),
                ),
                child: Text(
                  status == true ? "Live" : "",
                  style: GoogleFonts.sen(
                    fontSize: 3.076.sp,
                    fontWeight: FontWeight.w400,
                    color: ccNutural550,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 10.98.sp,
                // width: 80.879.sp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    cshorzSpace2,
                    SizedBox(
                      child: FlutterSwitch(
                          width: 9.67.sp,
                          height: 5.274.sp,
                          activeColor: ccSuccess700,
                          onToggle: (bool value) {},
                          value: status),
                    ),
                  ],
                ),
              ),
              cshorzSpace4,
              InkWell(
                child: Tooltip(
                  message: 'Edit Form',
                  textStyle: TextStyle(
                    color: ccNeutral0,
                  ),
                  child: SvgPicture.asset(
                    "../assets/imges/edit.svg",
                    height: 4.8835.sp,
                    width: 5.4945.sp,
                  ),
                ),
                onTap: () {
                  goToPageRequested('fb_form_questions');
                },
              ),
              cshorzSpace4,
              DropdownButton(
                icon: SvgPicture.asset(
                  "../assets/imges/ellipse.svg",
                  height: 3.51648.sp,
                  width: 0.8791.sp,
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
              cshorzSpace7,
            ],
          ),
        ],
      ),
    );
  }
}
