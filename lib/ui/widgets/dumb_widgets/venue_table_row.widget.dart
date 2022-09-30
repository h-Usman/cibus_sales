import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/requried_tex_feild.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/show_side_dialogue.widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class VenueTableRowWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  final String bgColor;
  final String tName;
  final bool cbox;

  const VenueTableRowWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    required this.bgColor,
    required this.tName,
    required this.cbox,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.747.sp,
      // ignore: unrelated_type_equality_checks
      // color: bgColor == 'Danger' ? ccDanger300 : ccNeutral0,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: ccPrimary300,
          width: 0.5,
        ),
      )),
      child: Container(
        // ignore: unrelated_type_equality_checks
        color: bgColor == 'check' ? ccDanger100 : ccNeutral0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  cshorzSpace9,
                  SizedBox(
                    // color: Colors.grey,
                    width: 2.417.sp,
                    // height: double.infinity,
                    // width: 2.50
                    //     .sp,
                    // color: Colors
                    //     .blue,
                    child: Checkbox(
                      value: cbox,
                      checkColor: ccDanger300,
                      activeColor: ccDanger300,
                      // fillColor: Colors.green,
                      onChanged: (value) {
                        // setState(() {
                        //   _myBoolean = value; // rebuilds with new value
                        // });
                      },
                    ),
                  ),
                  cshorzSpace5,
                  Expanded(
                    child: Container(
                      // width: 50,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tName,
                              style: GoogleFonts.sen(
                                color: ccNutural550,
                                fontSize: 4.395.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // height: 50,
              width: 52.307.sp,
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: Tooltip(
                      message: 'Edit Table',
                      textStyle: TextStyle(
                        color: ccNeutral0,
                      ),
                      child: SvgPicture.asset(
                        "../assets/imges/v-edit.svg",
                        // height: 20.sp,
                        width: 4.835.sp,
                        height: 4.395.sp,
                      ),
                    ),
                    // onTap: () {

                    // },
                    onTap: () => showSideDialogue(
                      context: context,
                      title: "Edit Garden 1",
                      cancelButtonText: "Cancel",
                      saveButtonText: "Confirm",
                      saveButtonPressed: (dynamic val) {
                        // ignore: avoid_print
                        print("hello i am clicked with $val");
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 100.h - 110,
                        padding: EdgeInsets.all(
                          4.sp,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: ccNutural550,
                              width: 1,
                            ),
                            top: BorderSide(
                              color: ccNutural550,
                              width: 1,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dine-In QR Code",
                              style: TextStyle(
                                fontSize: 4.395.sp,
                                color: ccDanger300,
                              ),
                            ),
                            csvertSpace8,
                            SvgPicture.asset(
                              "../assets/imges/R-QR.svg",
                              // height: 20.sp,
                              width: 47.69.sp,
                              height: 47.97.sp,
                            ),
                            csvertSpace14,
                            ReqTextFeildWidget(
                              hint: 'Garden 1',
                              lebel: 'Table Name *',
                              // value: 'Garden 1',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  cshorzSpace4,
                  InkWell(
                    child: Tooltip(
                      message: 'Delete Table',
                      textStyle: TextStyle(
                        color: ccNeutral0,
                      ),
                      child: SvgPicture.asset(
                        "../assets/imges/delete-red.svg",
                        // height: 20.sp,
                        width: 5.351.sp,
                        height: 4.395.sp,
                      ),
                    ),
                    onTap: () => showDialog(
                      context: context,
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
                                  'Do you really want to Delete this Table? It will be removed permanently.',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class $ {}
