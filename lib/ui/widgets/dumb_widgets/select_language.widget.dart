import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class SelectLanguageWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;

  const SelectLanguageWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Bahasa Indonesia';
    return Container(
      padding: EdgeInsets.only(
        top: 5.054.sp,
        bottom: 5.054.sp,
        right: 5.sp,
        left: 4.615.sp,
      ),
      decoration: BoxDecoration(
        color: ccDanger100,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(3.269.sp),
          topLeft: Radius.circular(3.269.sp),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text:
                  'Please select the languages you want to translate into. Click ',
              style: GoogleFonts.sen(
                color: ccNutural550,
                fontSize: 3.956.sp,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'here ',
                    style: TextStyle(
                      color: ccDanger300,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => showDialog(
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                alignment: Alignment.centerLeft,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Choose Languages',
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
                                        padding: EdgeInsets.only(top: 4.83.sp),
                                      ),
                                      Container(
                                        // width: 170.79.sp,
                                        padding: EdgeInsets.only(
                                            left: 4.153.sp, right: 1.318.sp),
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                              width: 1,
                                              style: BorderStyle.solid,
                                              color: ccPrimary300,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(1.0989.sp)),
                                          ),
                                        ),
                                        child: DropdownButton<String>(
                                          value: dropdownValue,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: ccNutural550,
                                            size: 5.395.sp,
                                          ),
                                          elevation: 16,
                                          isExpanded: true,
                                          // isDense: true,
                                          style: TextStyle(
                                            color: ccNutural550,
                                            fontSize: 3.956.sp,
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
                                            'Bahasa Indonesia',
                                            'Arabic',
                                            'Urdu',
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Container(
                                                // color: ccDanger300,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.758.sp),
                                                  border: Border.all(
                                                    color: ccDanger300,
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Chip(
                                                  backgroundColor: ccDanger100,
                                                  deleteIconColor: ccDanger300,
                                                  label: Text(value,
                                                      style: GoogleFonts.sen(
                                                        fontSize: 3.516.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ccDanger300,
                                                      )),
                                                  onDeleted: () {
                                                    debugPrint('do somethings');
                                                  },
                                                ),
                                              ),
                                              // ),
                                              // Text(value),
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
                                        BorderRadius.circular(1.098.sp),
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
                                      'OK',
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
                          )),
                TextSpan(
                  text: ' add a new language.',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
