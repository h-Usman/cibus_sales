import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/qr_menu_tabs.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './qr_menu_qr_settings_view_model.dart';

class QrMenuQrSettingsView extends StatelessWidget {
  const QrMenuQrSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<QrMenuQrSettingsViewModel>.reactive(
      viewModelBuilder: () => QrMenuQrSettingsViewModel(),
      onModelReady: (QrMenuQrSettingsViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        QrMenuQrSettingsViewModel model,
        Widget? child,
      ) {
        return Container(
          decoration: const BoxDecoration(
            gradient: ccLightBackground,
          ),
          child: Scaffold(
            body: Container(
              color: ccBakground,
              width: 100.w,
              // height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 51.sp,
                    height: 100.h,
                    child: MainNavigationMenuWidgetView(),
                  ),
                  SizedBox(
                    width: 100.w - 52.sp,
                    height: 100.h,
                    child: Stack(children: [
                      csvertSpace16,
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          width: 0.5,
                          color: ccNatural250,
                        ))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                csvertSpace14,
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 3.29.sp, right: 3.29.sp),
                                  // margin: const EdgeInsets.all(15),
                                  height: 12.sp,
                                  color: ccNeutral0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const <Widget>[
                                      PageTitlewWidget(
                                        titleName:
                                            'Dine-in QR Menu Configuration',
                                      ),
                                    ],
                                  ),
                                ),
                                QrMenuTabsWidget(
                                  goToPageRequested: (val) =>
                                      model.goToPage(val),
                                  selectedTabName: 'settings',
                                ),
                                // order tables
                                SizedBox(
                                  width: 100.w,
                                  child: Container(
                                    color: ccNeutral0,
                                    height: 100.h - 210,
                                    width: 150.10.sp,
                                    child: SingleChildScrollView(
                                      child: Container(
                                        width: 150.10.sp,
                                        margin: EdgeInsets.all(3.29.sp),
                                        // decoration: BoxDecoration(
                                        //   borderRadius:
                                        //       BorderRadius.circular(3.29.sp),
                                        //   border:
                                        //       Border.all(color: ccNatural250),
                                        // ),
                                        // color: Colors.amber,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // color: Colors.amber,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        3.29.sp),
                                                border: Border.all(
                                                    color: ccNatural250),
                                              ),
                                              width: 150.10.sp,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                        bottom: BorderSide(
                                                            width: 0.5,
                                                            color:
                                                                ccPrimary300),
                                                      ),
                                                    ),
                                                    width: 150.10.sp,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                              width: 79.sp,
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 7.5
                                                                          .sp,
                                                                      top: 7.9
                                                                          .sp,
                                                                      right: 7.5
                                                                          .sp,
                                                                    ),
                                                                    child: Text(
                                                                        "Link",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccDanger300,
                                                                          fontSize:
                                                                              4.395.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        )),
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border(
                                                                        bottom: BorderSide(
                                                                            width:
                                                                                0.5,
                                                                            color:
                                                                                ccPrimary300),
                                                                      ),
                                                                    ),
                                                                    padding: EdgeInsets.only(
                                                                        left: 7.5.sp,
                                                                        // top: 7.9
                                                                        //     .sp,
                                                                        right: 7.5.sp,
                                                                        bottom: 4.2745.sp),
                                                                    child: Row(
                                                                      children: [
                                                                        Text(
                                                                            "rb.gy/jhxzvi",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccSuccess800,
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            )),
                                                                        cshorzSpace2,
                                                                        SvgPicture
                                                                            .asset(
                                                                          "../assets/imges/file-r.svg",
                                                                          // height: 20.sp,
                                                                          width:
                                                                              3.516.sp,
                                                                          height:
                                                                              3.736.sp,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 7.5
                                                                          .sp,
                                                                      right: 7.5
                                                                          .sp,
                                                                    ),
                                                                    child: Text(
                                                                        "QR Code Colors",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccDanger300,
                                                                          fontSize:
                                                                              4.395.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        )),
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 7.5
                                                                          .sp,
                                                                      right: 7.5
                                                                          .sp,
                                                                    ),
                                                                    child: Text(
                                                                        "Color",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              4.395.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        )),
                                                                  ),
                                                                  csvertSpace4,
                                                                  Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 7.5.sp)),
                                                                      Container(
                                                                        width: 45
                                                                            .sp,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          border: Border.all(
                                                                              width: 0.5,
                                                                              color: ccPrimary300),
                                                                          borderRadius: BorderRadius.all(
                                                                              Radius.circular(1.758.sp) //                 <--- border radius here
                                                                              ),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Container(
                                                                              width: 11.2.sp,
                                                                              height: 8.50.sp,
                                                                              decoration: BoxDecoration(
                                                                                color: ccDanger300,
                                                                                border: Border(
                                                                                  right: BorderSide(
                                                                                    color: ccPrimary300,
                                                                                    width: 0.5,
                                                                                  ),
                                                                                ),
                                                                                borderRadius: BorderRadius.only(
                                                                                  topLeft: Radius.circular(1.758.sp),
                                                                                  bottomLeft: Radius.circular(1.758.sp),
                                                                                ),
                                                                              ),
                                                                              clipBehavior: Clip.antiAlias,
                                                                            ),
                                                                            SizedBox(
                                                                              width: 33.186.sp,
                                                                              height: 8.50.sp,
                                                                              child: Padding(
                                                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                                                child: TextField(
                                                                                  style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                                                                                  // controller: TextEditingController(
                                                                                  //   text: value,
                                                                                  // ),
                                                                                  decoration: InputDecoration(
                                                                                    border: InputBorder.none,
                                                                                    focusedBorder: InputBorder.none,
                                                                                    enabledBorder: InputBorder.none,
                                                                                    errorBorder: InputBorder.none,
                                                                                    disabledBorder: InputBorder.none,
                                                                                    contentPadding: EdgeInsets.only(left: 3.0769.sp, bottom: 2.1978.sp, right: 3.0769.sp),
                                                                                    hintText: '#E53C1F',
                                                                                    hintStyle: TextStyle(
                                                                                      color: ccPrimary300,
                                                                                      fontSize: 3.956.sp,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 7.5
                                                                          .sp,
                                                                      right: 7.5
                                                                          .sp,
                                                                    ),
                                                                    child: Text(
                                                                        "The color of QR Code",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.5164.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        )),
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 7.5
                                                                          .sp,
                                                                      right: 7.5
                                                                          .sp,
                                                                    ),
                                                                    child: Text(
                                                                        "Background Color",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              4.395.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        )),
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    margin: EdgeInsets.only(
                                                                        left: 7.5
                                                                            .sp),
                                                                    width:
                                                                        45.sp,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border: Border.all(
                                                                          width:
                                                                              0.5,
                                                                          color:
                                                                              ccPrimary300),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(1.758.sp) //                 <--- border radius here
                                                                              ),
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              11.2.sp,
                                                                          height:
                                                                              8.50.sp,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            border:
                                                                                Border(
                                                                              right: BorderSide(
                                                                                color: ccPrimary300,
                                                                                width: 0.5,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          clipBehavior:
                                                                              Clip.antiAlias,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              33.186.sp,
                                                                          height:
                                                                              8.50.sp,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                                            child:
                                                                                TextField(
                                                                              style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                                                                              // controller: TextEditingController(
                                                                              //   text: value,
                                                                              // ),
                                                                              decoration: InputDecoration(
                                                                                border: InputBorder.none,
                                                                                focusedBorder: InputBorder.none,
                                                                                enabledBorder: InputBorder.none,
                                                                                errorBorder: InputBorder.none,
                                                                                disabledBorder: InputBorder.none,
                                                                                contentPadding: EdgeInsets.only(left: 3.0769.sp, bottom: 2.1978.sp, right: 3.0769.sp),
                                                                                hintText: '#FFFFFF',
                                                                                hintStyle: TextStyle(
                                                                                  color: ccPrimary300,
                                                                                  fontSize: 3.956.sp,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 7.5
                                                                          .sp,
                                                                      right: 7.5
                                                                          .sp,
                                                                    ),
                                                                    child: Text(
                                                                        "The background color of the QR Code",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.5164.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        )),
                                                                  ),
                                                                  csvertSpace8,
                                                                ],
                                                              ),
                                                            ),
                                                            Column(
                                                              children: [
                                                                Container(
                                                                  // height: 100.h - 380,
                                                                  // width: 150.10.sp,
                                                                  padding: EdgeInsets.only(
                                                                      left: 7.5
                                                                          .sp,
                                                                      top: 7.9
                                                                          .sp,
                                                                      right: 7.5
                                                                          .sp,
                                                                      bottom:
                                                                          8.2745
                                                                              .sp),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    "../assets/imges/qr-red.svg",
                                                                    // height: 20.sp,
                                                                    width: 47.69
                                                                        .sp,
                                                                    height:
                                                                        47.69
                                                                            .sp,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10.sp,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        csvertSpace2,
                                                        ElevatedButton(
                                                          onPressed: () {},
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                ccDanger700,
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Icon(Icons
                                                                  .check_rounded),
                                                              cshorzSpace1,
                                                              Text(
                                                                "Save",
                                                                style:
                                                                    TextStyle(
                                                                  color:
                                                                      ccNeutral0,
                                                                  // fontSize: 3.sp,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        cshorzSpace4,
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // csvertSpace8,
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: TopHeaderWidget(),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: FooterWidget()),
                    ]),
                  ),
                ],
              ),
            ),
            // ),
          ),
        );
      },
    );
  }
}
