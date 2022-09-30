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
  final String dailyNo;
  final String status;
  final bool selected;
  final String type;
  final String table;
  final String waiter;
  final String updateDate;
  final String? updateTime;
  final String total;
  final String orderItemId;

  const OrderListItemWidget({
    Key? key,
    required this.goToPageRequested,
    this.goToModalRequested,
    required this.status,
    required this.idNo,
    required this.dailyNo,
    required this.type,
    required this.table,
    required this.waiter,
    this.updateTime,
    required this.total,
    required this.orderItemId,
    required this.updateDate,
    required this.selected,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Garden Table 1';
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
              width: 23.956.sp,
              height: 6.6.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                    left: 2.40.sp,
                  )),
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
                  Padding(
                      padding: EdgeInsets.only(
                    left: 4.sp,
                  )),
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
              width: 28.1318.sp,
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
            SizedBox(
              height: 6.6.sp,
              width: 32.549.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
              width: 26.813.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 22.21.sp,
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
                ],
              ),
            ),
            SizedBox(
              height: 6.6.sp,
              width: 27.69.sp,
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
            SizedBox(
              height: 6.6.sp,
              width: 20.659.sp,
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
            SizedBox(
              height: 9.89.sp,
              width: 36.0439.sp,
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
                          updateDate,
                          style: GoogleFonts.sen(
                            color: ccNutural550,
                            fontSize: 3.5.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      updateTime != null
                          ? SizedBox(
                              child: Text(
                                updateTime!,
                                style: GoogleFonts.sen(
                                  color: ccNutural550,
                                  fontSize: 3.5.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.98.sp,
              width: 18.4615.sp,
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
            Expanded(
              child: SizedBox(
                height: 6.6.sp,
                // width: 28.571.sp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: InkWell(
                              child: Tooltip(
                                message: 'Chnage Table',
                                textStyle: TextStyle(
                                  color: ccNeutral0,
                                ),
                                child: SvgPicture.asset(
                                  "../assets/imges/change-table.svg",
                                  width: 4.5.sp,
                                ),
                              ),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (_) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(2.197.sp))),
                                    content: Container(
                                      // color: Colors.white,
                                      width: 183.076.sp,
                                      height: 103.51.sp,
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                        width: 0.5,
                                        color: ccNatural250,
                                      ))),
                                      child: SizedBox(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              decoration: const BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                width: 0.5,
                                                color: ccNatural250,
                                              ))),
                                              height: 14.62.sp,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      height: 10.62.sp,
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        'Change Table of #1011',
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 5.714.sp,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10.62.sp,
                                                    width: 10.sp,
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            ccNeutral0,
                                                        elevation: 0,
                                                        shadowColor:
                                                            Colors.transparent,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        "../assets/imges/close.svg",
                                                        height: 4.615.sp,
                                                        width: 4.615.sp,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 4.83.sp),
                                            ),
                                            // SizedBox
                                            Container(
                                              width: 128.79.sp,
                                              padding: EdgeInsets.only(
                                                  left: 3.153.sp,
                                                  right: 1.318.sp),
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                    width: 0.5,
                                                    style: BorderStyle.solid,
                                                    color: ccNatural250,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              1.098.sp)),
                                                ),
                                              ),
                                              child: DropdownButton<String>(
                                                value: dropdownValue,
                                                icon: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: ccDanger300,
                                                  size: 5.395.sp,
                                                ),
                                                elevation: 16,
                                                isExpanded: true,
                                                // isDense: true,
                                                style: TextStyle(
                                                  color: ccNutural550,
                                                  fontSize: 4.395.sp,
                                                ),
                                                underline: Container(
                                                  height: 0.0,
                                                  color: Colors.transparent,
                                                ),
                                                onChanged: (String? newValue) {
                                                  // setState(() {
                                                  //   dropdownValue = newValue!;
                                                  // });
                                                },
                                                items: <String>[
                                                  'Garden Table 1',
                                                  'Garden Table 2',
                                                  'Garden Table 3',
                                                  'Garden Table 4'
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                                dropdownColor: ccNeutral0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    actions: [
                                      Container(
                                        height: 7.25.sp,
                                        width: 29.23.sp,
                                        margin: EdgeInsets.only(
                                          bottom: 4.39.sp,
                                        ),
                                        // color: Colors.green,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border:
                                              Border.all(color: ccNutural550),
                                        ),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                ccNeutral0, // foreground
                                          ),
                                          icon: SvgPicture.asset(
                                            "../assets/imges/close.svg",
                                            width: 2.85.sp,
                                            height: 2.85.sp,
                                          ),
                                          label: Text(
                                            'Cancel',
                                            style: GoogleFonts.sen(
                                              color: ccNutural550,
                                              fontSize: 4.39.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ), // <-- Text
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                        left: 7.25.sp,
                                      )),
                                      Container(
                                        height: 7.25.sp,
                                        width: 29.23.sp,
                                        margin: EdgeInsets.only(
                                          bottom: 4.39.sp,
                                        ),
                                        // color: Colors.green,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1.098.sp),
                                          border:
                                              Border.all(color: ccNutural550),
                                        ),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: ccNetural285,
                                            elevation: 0,
                                            shadowColor: Colors.transparent,
                                          ),
                                          icon: SvgPicture.asset(
                                            "../assets/imges/check.svg",
                                            width: 4.17.sp,
                                            height: 3.07.sp,
                                          ),
                                          label: Text(
                                            'OK',
                                            style: GoogleFonts.sen(
                                              color: ccPrimary300,
                                              fontSize: 4.39.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ), // <-- Text
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                        left: 5.25.sp,
                                      )),
                                    ],
                                  ),
                                );
                              }),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(left: 1.75.sp, right: 1.75.sp)),
                        SizedBox(
                            child: InkWell(
                                child: Tooltip(
                                  message: 'Chnage Order Status',
                                  textStyle: TextStyle(
                                    color: ccNeutral0,
                                  ),
                                  child: SvgPicture.asset(
                                    "../assets/imges/order.svg",
                                    width: 4.5.sp,
                                  ),
                                ),
                                onTap: () => showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (_) => AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(2.197.sp))),
                                        content: Container(
                                          // color: Colors.white,
                                          width: 183.076.sp,
                                          height: 103.51.sp,
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                            width: 0.5,
                                            color: ccNatural250,
                                          ))),
                                          child: SizedBox(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          border: Border(
                                                              bottom:
                                                                  BorderSide(
                                                    width: 0.5,
                                                    color: ccNatural250,
                                                  ))),
                                                  height: 14.62.sp,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          height: 10.62.sp,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            'Change Order Status of #1011',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccDanger300,
                                                              fontSize:
                                                                  5.714.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10.62.sp,
                                                        width: 10.sp,
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                ccNeutral0,
                                                            elevation: 0,
                                                            shadowColor: Colors
                                                                .transparent,
                                                          ),
                                                          child:
                                                              SvgPicture.asset(
                                                            "../assets/imges/close.svg",
                                                            height: 4.615.sp,
                                                            width: 4.615.sp,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 4.83.sp),
                                                ),
                                                SizedBox(
                                                  height: 8.35.sp,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: 5.714.sp,
                                                        width: 8.79.sp,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: SizedBox(
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
                                                      ),
                                                      Expanded(
                                                        child: SizedBox(
                                                          height: 5.714.sp,
                                                          child: Text(
                                                            'Waiting For Approval',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 4.39.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8.35.sp,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: 5.714.sp,
                                                        width: 8.79.sp,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: SizedBox(
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
                                                      ),
                                                      Expanded(
                                                        child: SizedBox(
                                                          height: 5.714.sp,
                                                          child: Text(
                                                            'Accepted',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 4.39.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8.35.sp,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: 5.714.sp,
                                                        width: 8.79.sp,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: SizedBox(
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
                                                      ),
                                                      Expanded(
                                                        child: SizedBox(
                                                          height: 5.714.sp,
                                                          child: Text(
                                                            'Waiting For Approval',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 4.39.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8.35.sp,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: 5.714.sp,
                                                        width: 8.79.sp,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: SizedBox(
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
                                                      ),
                                                      Expanded(
                                                        child: SizedBox(
                                                          height: 5.714.sp,
                                                          child: Text(
                                                            'Preparing',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 4.39.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8.35.sp,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: 5.714.sp,
                                                        width: 8.79.sp,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: SizedBox(
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
                                                      ),
                                                      Expanded(
                                                        child: SizedBox(
                                                          height: 5.714.sp,
                                                          child: Text(
                                                            'Ready',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 4.39.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8.35.sp,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: 5.714.sp,
                                                        width: 8.79.sp,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: SizedBox(
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
                                                      ),
                                                      Expanded(
                                                        child: SizedBox(
                                                          height: 5.714.sp,
                                                          child: Text(
                                                            'Cancel',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 4.39.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8.35.sp,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: 5.714.sp,
                                                        width: 8.79.sp,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: SizedBox(
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
                                                      ),
                                                      Expanded(
                                                        child: SizedBox(
                                                          height: 5.714.sp,
                                                          child: Text(
                                                            'Closed',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 4.39.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        actions: [
                                          Container(
                                            height: 7.25.sp,
                                            width: 29.23.sp,
                                            margin: EdgeInsets.only(
                                              bottom: 4.39.sp,
                                            ),
                                            // color: Colors.green,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  color: ccNutural550),
                                            ),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    ccNeutral0, // foreground
                                              ),
                                              icon: SvgPicture.asset(
                                                "../assets/imges/close.svg",
                                                width: 2.85.sp,
                                                height: 2.85.sp,
                                              ),
                                              label: Text(
                                                'Cancel',
                                                style: GoogleFonts.sen(
                                                  color: ccNutural550,
                                                  fontSize: 4.39.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ), // <-- Text
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                            left: 7.25.sp,
                                          )),
                                          Container(
                                            height: 7.25.sp,
                                            width: 29.23.sp,
                                            margin: EdgeInsets.only(
                                              bottom: 4.39.sp,
                                            ),
                                            // color: Colors.green,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  color: ccNutural550),
                                            ),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: ccNetural285,
                                                elevation: 0,
                                                shadowColor: Colors.transparent,
                                              ),
                                              icon: SvgPicture.asset(
                                                "../assets/imges/check.svg",
                                                width: 4.17.sp,
                                                height: 3.07.sp,
                                              ),
                                              label: Text(
                                                'OK',
                                                style: GoogleFonts.sen(
                                                  color: ccPrimary300,
                                                  fontSize: 4.39.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ), // <-- Text
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                            left: 5.25.sp,
                                          )),
                                        ],
                                        // insetPadding: EdgeInsets.all(0),
                                      ),
                                    ))),
                        Padding(
                            padding:
                                EdgeInsets.only(left: 1.75.sp, right: 1.75.sp)),
                        SizedBox(
                          child: InkWell(
                            child: Tooltip(
                              message: 'Delete Order',
                              textStyle: TextStyle(
                                color: ccNeutral0,
                              ),
                              child: SvgPicture.asset(
                                "../assets/imges/delete.svg",
                                width: 3.sp,
                              ),
                            ),
                            onTap: () => showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (_) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(2.197.sp))),
                                content: Container(
                                  // color: Colors.white,
                                  width: 183.076.sp,
                                  height: 78.68.sp,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                    width: 0.5,
                                    color: ccNatural250,
                                  ))),
                                  child: SizedBox(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                            width: 0.5,
                                            color: ccNatural250,
                                          ))),
                                          height: 14.62.sp,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: 10.62.sp,
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        // color: Colors.red,
                                                        child: SvgPicture.asset(
                                                          "../assets/imges/warning-icon.svg",
                                                          height: 6.153.sp,
                                                          width: 6.153.sp,
                                                        ),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                        left: 4.175.sp,
                                                      )),
                                                      Text(
                                                        'Are You Sure?',
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 5.714.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.62.sp,
                                                width: 10.sp,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: ccNeutral0,
                                                    elevation: 0,
                                                    shadowColor:
                                                        Colors.transparent,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    "../assets/imges/close.svg",
                                                    height: 4.615.sp,
                                                    width: 4.615.sp,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(top: 4.83.sp),
                                        ),
                                        // SizedBox
                                        Text(
                                          'Do you really want to delete Order? It will be removed permanently.',
                                          style: GoogleFonts.sen(
                                            color: ccNutural550,
                                            fontSize: 4.395.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                actions: [
                                  Container(
                                    height: 7.25.sp,
                                    width: 29.23.sp,
                                    margin: EdgeInsets.only(
                                      bottom: 4.39.sp,
                                    ),
                                    // color: Colors.green,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(1.098.sp),
                                      border: Border.all(color: ccNutural550),
                                    ),
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            ccNeutral0, // foreground
                                      ),
                                      icon: SvgPicture.asset(
                                        "../assets/imges/close.svg",
                                        width: 2.85.sp,
                                        height: 2.85.sp,
                                      ),
                                      label: Text(
                                        'NO',
                                        style: GoogleFonts.sen(
                                          color: ccNutural550,
                                          fontSize: 4.39.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ), // <-- Text
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                    left: 7.25.sp,
                                  )),
                                  Container(
                                    height: 7.25.sp,
                                    width: 29.23.sp,
                                    margin: EdgeInsets.only(
                                      bottom: 4.39.sp,
                                    ),
                                    // color: Colors.green,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(1.098.sp),
                                      border: Border.all(color: ccDanger300),
                                    ),
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ccDanger300,
                                        elevation: 0,
                                        shadowColor: Colors.transparent,
                                      ),
                                      icon: SvgPicture.asset(
                                        "../assets/imges/check-white.svg",
                                        width: 4.17.sp,
                                        height: 3.07.sp,
                                      ),
                                      label: Text(
                                        'Yes',
                                        style: GoogleFonts.sen(
                                          color: ccNeutral0,
                                          fontSize: 4.39.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ), // <-- Text
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                    left: 5.25.sp,
                                  )),
                                ],
                              ),
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
        onTap: () {
          goToPageRequested('orders_details');
        },
      ),
    );
  }
}
