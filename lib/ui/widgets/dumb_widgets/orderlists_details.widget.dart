import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class OrderListDetailsWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  // final String itemsName;
  // final String qty;
  // final String uPrice;
  // final String total;
  // final String sentTime;
  // final String notes;

  const OrderListDetailsWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    // required this.itemsName,
    // required this.qty,
    // required this.uPrice,
    // required this.total,
    // required this.sentTime,
    // required this.notes,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.cyanAccent,
      // height: 14.28.sp,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ccNutural550, width: 0.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Padding(
          // padding:
          //     EdgeInsets.only(left: 15)),
          // ListView.builder(itemBuilder: (BuildContext context, int index) {  },
          // children: [
          Container(
            padding: EdgeInsets.only(
              top: 3.29.sp,
              bottom: 3.29.sp,
            ),
            width: 52.38.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                  left: 3.0.sp,
                )),
                Text(
                  // "Sea Salt Fries(1-2 people)"
                  'Sea Salt Fries(1-2 people)',
                  style: GoogleFonts.sen(
                    color: ccNutural550,
                    fontSize: 3.51.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 3.29.sp,
              bottom: 3.29.sp,
            ),
            width: 12.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  child: Text(
                    "2",
                    style: GoogleFonts.sen(
                      color: ccNutural550,
                      fontSize: 3.51.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            // color: Colors.red,
            padding: EdgeInsets.only(
              top: 3.29.sp,
              bottom: 3.29.sp,
            ),
            width: 24.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 3.0.sp,
                    )),
                    SizedBox(
                      child: Text(
                        "MR 7.00",
                        style: GoogleFonts.sen(
                          color: ccNutural550,
                          fontSize: 3.51.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 23.sp,
            padding: EdgeInsets.only(
              top: 3.29.sp,
              bottom: 3.29.sp,
            ),
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
                      child: Expanded(
                        child: Text(
                          "MR 14.00",
                          style: GoogleFonts.sen(
                            color: ccNutural550,
                            fontSize: 3.51.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(
              top: 3.29.sp,
              bottom: 3.29.sp,
            ),
            width: 27.31.sp,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 3.0.sp,
                    )),
                    SizedBox(
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "A few",
                              style: GoogleFonts.sen(
                                color: ccNutural550,
                                fontSize: 3.51.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "Seconds ago",
                              style: GoogleFonts.sen(
                                color: ccNutural550,
                                fontSize: 3.51.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 3.29.sp,
                bottom: 3.29.sp,
              ),
              // color: Colors.red,
              // width: 20.79.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                            left: 3.0.sp,
                          )),
                          SizedBox(
                            child: Text(
                              "Please add extra",
                              style: GoogleFonts.sen(
                                color: ccNutural550,
                                fontSize: 3.51.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Text(
                              "chilli and sauce.",
                              style: GoogleFonts.sen(
                                color: ccNutural550,
                                fontSize: 3.51.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    left: 1.sp,
                  )),
                  SizedBox(
                    child: InkWell(
                      child: Tooltip(
                        message: 'Delete Order',
                        textStyle: TextStyle(
                          color: ccNeutral0,
                        ),
                        child: SvgPicture.asset(
                          "../assets/imges/delete-red.svg",
                          width: 3.0769.sp,
                          height: 3.956.sp,
                        ),
                      ),
                      onTap: () => showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.197.sp))),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
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
                                                    padding: EdgeInsets.only(
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
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: ccNeutral0,
                                              elevation: 0,
                                              shadowColor: Colors.transparent,
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
                                    padding: EdgeInsets.only(top: 4.83.sp),
                                  ),
                                  // SizedBox
                                  Text(
                                    'Do you really want to delete this Item? It will be removed permanently.',
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
                                borderRadius: BorderRadius.circular(1.098.sp),
                                border: Border.all(color: ccNutural550),
                              ),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: ccNeutral0, // foreground
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
                                borderRadius: BorderRadius.circular(1.098.sp),
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
            ),
          ),
          // ]),
        ],
      ),
    );
  }
}
