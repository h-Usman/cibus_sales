import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class MulriOrderListSelectItemWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  final String idNo;
  final String status;
  final String table;

  const MulriOrderListSelectItemWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    required this.status,
    required this.idNo,
    required this.table,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
        width: 0.5,
        color: ccNatural250,
      ))),
      padding: EdgeInsets.only(
        top: 2.296.sp,
        bottom: 2.29.sp,
        left: 3.29.sp,
        right: 3.29.sp,
      ),
      // color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 1.97.sp,
                    width: 1.97.sp,
                    child: Checkbox(
                      value: false,
                      onChanged: (value) {
                        // setState(() {
                        //   _myBoolean = value; // rebuilds with new value
                        // });
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 5.72.sp)),
                  Text(
                    idNo,
                    style: GoogleFonts.sen(
                      color: const Color(0xFF70708C),
                      fontSize: 3.95.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    left: 7.25.sp,
                  )),
                  SizedBox(
                    width: 20.sp,
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
                  Padding(
                      padding: EdgeInsets.only(left: 1.09.sp, right: 1.09.sp)),
                  SizedBox(
                    child: SvgPicture.asset(
                      "../assets/imges/${status.toLowerCase()}.svg",
                      width: 4.83.sp,
                      height: 4.83.sp,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 1.75.sp)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left: 7.69.sp)),
                  Text(
                    "Table no. 2",
                    style: GoogleFonts.sen(
                      color: const Color(0xFF70708C),
                      fontSize: 3.95.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
