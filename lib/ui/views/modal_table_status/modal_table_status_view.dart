import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import './modal_table_status_view_model.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ModalTableStatusView extends StatelessWidget {
  const ModalTableStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Garden Table 1';
    return ViewModelBuilder<ModalTableStatusViewModel>.reactive(
      viewModelBuilder: () => ModalTableStatusViewModel(),
      onModelReady: (ModalTableStatusViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        ModalTableStatusViewModel model,
        Widget? child,
      ) {
        return AlertDialog(
          // title: const Text('Material Alert!'),
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
                  Container(
                    width: 128.79.sp,
                    padding: EdgeInsets.only(left: 3.153.sp, right: 1.318.sp),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 0.5,
                          style: BorderStyle.solid,
                          color: ccNatural250,
                        ),
                        borderRadius:
                            BorderRadius.all(Radius.circular(1.098.sp)),
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
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
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
                borderRadius: BorderRadius.circular(1.098.sp),
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
      },
    );
  }
}
