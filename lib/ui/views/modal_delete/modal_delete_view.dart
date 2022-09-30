import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import './modal_delete_view_model.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ModalDeleteView extends StatelessWidget {
  const ModalDeleteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ModalDeleteViewModel>.reactive(
      viewModelBuilder: () => ModalDeleteViewModel(),
      onModelReady: (ModalDeleteViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        ModalDeleteViewModel model,
        Widget? child,
      ) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 10.62.sp,
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
        );
      },
    );
  }
}
