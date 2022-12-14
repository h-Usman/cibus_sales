import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OrderListItemWidget extends StatelessWidget {
  final Function goToPageRequested;
  final Function? goToModalRequested;
  final String idNo;
  final String shopN;
  final String location;
  final String status;
  final bool selected;
  final String date;
  final String orderItemId;
  final String number;

  const OrderListItemWidget({
    Key? key,
    required this.goToPageRequested,
    this.goToModalRequested,
    required this.status,
    required this.idNo,
    required this.shopN,
    required this.orderItemId,
    required this.date,
    required this.selected,
    required this.location,
    required this.number,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    // String dropdownValue = 'Garden Table 1';
    return Container(
      height: 14.28.sp,
      decoration: BoxDecoration(
        color: selected == true ? ccDanger100 : ccNeutral0,
        border: Border(
          bottom: BorderSide(color: ccNatural250, width: 1),
        ),
      ),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 30.989.sp,
              height: 6.6.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  cshorzSpace3,
                  SizedBox(
                    height: 1.97.sp,
                    width: 1.97.sp,
                    child: Checkbox(
                      value: selected,
                      activeColor: ccDanger300,
                      onChanged: (value) {
                        // setState(() {
                        //   _myBoolean = value; // rebuilds with new value
                        // });
                      },
                    ),
                  ),
                  cshorzSpace3,
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
            ),
            SizedBox(
              height: 6.6.sp,
              width: 55.1648.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      shopN,
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.95.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6.6.sp,
              width: 44.1758.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      location,
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.95.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6.6.sp,
              width: 46.813.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      number,
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.95.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 9.89.sp,
              width: 30.0989.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      date,
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 3.5.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 6.6.sp,
                width: 32.549.sp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 21.53846.sp,
                      child: Text(
                        status,
                        style: GoogleFonts.sen(
                          color: status == "In Progress"
                              ? ccSuccess800
                              : status == "Cancelled"
                                  ? ccDanger500
                                  : status == "KIV"
                                      ? ccInfo700
                                      : ccPrimary700,
                          fontSize: 3.95.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    // cshorzSpace2,
                    Row(
                      children: [
                        DropdownButton(
                          icon: SvgPicture.asset(
                            "../assets/imges/ellipse-r.svg",
                            height: 5.714.sp,
                          ),
                          underline: Container(
                            height: 0.0,
                            color: Colors.transparent,
                          ),
                          elevation: 0,
                          items: [
                            DropdownMenuItem(
                              value: "In Progress",
                              child: SizedBox(
                                // width: 2.sp,
                                child: InkWell(
                                  child: Text(
                                    "In Progress",
                                    style: GoogleFonts.sen(
                                      color: ccSuccess800,
                                      fontSize: 3.07692.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  // onTap: () {
                                  //   goToPageRequested('');
                                  // },
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "KIV",
                              child: Text(
                                "KIV",
                                style: GoogleFonts.sen(
                                  color: ccInfo700,
                                  fontSize: 3.07692.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "Cancelled",
                              child: Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  width: 0.5,
                                  color: ccNatural250,
                                ))),
                                // height: 6.153846,
                                child: Text(
                                  "Cancelled",
                                  style: GoogleFonts.sen(
                                    color: ccDanger700,
                                    fontSize: 3.07692.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "Delete",
                              child: Row(
                                children: [
                                  Text(
                                    "Delete",
                                    style: GoogleFonts.sen(
                                      color: ccNutural550,
                                      fontSize: 3.07692.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                        cshorzSpace4,
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          goToPageRequested('orders_details');
        },
      ),
    );
  }
}
