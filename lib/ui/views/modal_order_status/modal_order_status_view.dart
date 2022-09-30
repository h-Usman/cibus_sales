import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import './modal_order_status_view_model.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ModalOrderStatusView extends StatelessWidget {
  const ModalOrderStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ModalOrderStatusViewModel>.reactive(
      viewModelBuilder: () => ModalOrderStatusViewModel(),
      onModelReady: (ModalOrderStatusViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        ModalOrderStatusViewModel model,
        Widget? child,
      ) {
        return
            // (
            //   color: Colors.amber,
            //   padding: const EdgeInsets.all(0),
            //   child:
            AlertDialog(
          // title: const Text('Material Alert!'),
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 10.62.sp,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Change Order Status of #1011',
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
                  SizedBox(
                    height: 8.35.sp,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 5.714.sp,
                          width: 8.79.sp,
                          alignment: Alignment.centerLeft,
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
                              style: GoogleFonts.sen(
                                color: ccNutural550,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 5.714.sp,
                          width: 8.79.sp,
                          alignment: Alignment.centerLeft,
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
                              style: GoogleFonts.sen(
                                color: ccNutural550,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 5.714.sp,
                          width: 8.79.sp,
                          alignment: Alignment.centerLeft,
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
                              style: GoogleFonts.sen(
                                color: ccNutural550,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 5.714.sp,
                          width: 8.79.sp,
                          alignment: Alignment.centerLeft,
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
                              style: GoogleFonts.sen(
                                color: ccNutural550,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 5.714.sp,
                          width: 8.79.sp,
                          alignment: Alignment.centerLeft,
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
                              style: GoogleFonts.sen(
                                color: ccNutural550,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 5.714.sp,
                          width: 8.79.sp,
                          alignment: Alignment.centerLeft,
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
                              style: GoogleFonts.sen(
                                color: ccNutural550,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 5.714.sp,
                          width: 8.79.sp,
                          alignment: Alignment.centerLeft,
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
                              style: GoogleFonts.sen(
                                color: ccNutural550,
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
                borderRadius: BorderRadius.circular(5),
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
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: ccNutural550),
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
        );
        // );
      },
    );
  }
}
