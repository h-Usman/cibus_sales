import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class DashboardListItemWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  final String idNo;
  final String dailyNo;
  final String status;
  final String type;
  final String table;
  final String waiter;
  final String days;
  final String updateDate;
  final String? updateTime;
  final String total;

  const DashboardListItemWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    required this.status,
    required this.idNo,
    required this.dailyNo,
    required this.type,
    required this.table,
    required this.waiter,
    required this.days,
    this.updateTime,
    required this.total,
    required this.updateDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.cyanAccent,
      height: 14.28.sp,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ccNatural250, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Padding(
          // padding:
          //     EdgeInsets.only(left: 3.296.sp,
          Expanded(
            child: SizedBox(
              height: 6.6.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        idNo,
                        style: GoogleFonts.sen(
                          color: ccNutural550,
                          fontSize: 3.95.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 6.6.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          dailyNo,
                          style: GoogleFonts.sen(
                            color: ccNutural550,
                            fontSize: 3.95.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 6.6.sp,
            width: 32.98.sp,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20.021.sp,
                      child: Text(
                        status,
                        style: GoogleFonts.sen(
                          color: status == "Accepted"
                              ? ccPrimary800
                              : status == "Cancelled"
                                  ? ccDanger500
                                  : status == "Preparing"
                                      ? ccInfo200
                                      : status == "Waiting"
                                          ? ccSecondary50
                                          : status == "Ready"
                                              ? ccSuccess800
                                              : status == "Ready"
                                                  ? ccSuccess800
                                                  : status == "Closed"
                                                      ? ccInfo700
                                                      : ccPrimary700,
                          fontSize: 3.95.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    cshorzSpace2,
                    SizedBox(
                      child: SvgPicture.asset(
                        "../assets/imges/${status.toLowerCase()}.svg",
                        width: 4.5.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6.6.sp,
            width: 30.98.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    width: 25.21.sp,
                    height: 7.47.sp,
                    child: ElevatedButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ccNetural285, // foreground
                      ),
                      child: Text(type,
                          style: GoogleFonts.sen(
                            color: ccDanger300,
                            fontSize: 3.96.sp,
                            fontWeight: FontWeight.w400,
                          )),
                    )),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 6.6.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          table,
                          style: GoogleFonts.sen(
                            color: ccNutural550,
                            fontSize: 3.95.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 6.6.sp,

              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          waiter,
                          style: GoogleFonts.sen(
                            color: ccNutural550,
                            fontSize: 3.95.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 9.89.sp,
            width: 30.38.sp,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        days,
                        style: GoogleFonts.sen(
                          color: ccNutural550,
                          fontSize: 3.5.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   child: Text(
                    //     "10:15:00",
                    //     style:
                    //         GoogleFonts.sen(
                    //       color: const Color(
                    //           0xFF70708C),
                    //       fontSize: 3.5.sp,
                    //       fontWeight:
                    //           FontWeight.w400,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              width: 20.w,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          total,
                          style: GoogleFonts.sen(
                            color: ccNutural550,
                            fontSize: 3.95.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
