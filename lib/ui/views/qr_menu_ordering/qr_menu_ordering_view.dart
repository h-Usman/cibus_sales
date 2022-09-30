import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/checkbox,widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/qr_menu_tabs.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './qr_menu_ordering_view_model.dart';

class QrMenuOrderingView extends StatelessWidget {
  const QrMenuOrderingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<QrMenuOrderingViewModel>.reactive(
      viewModelBuilder: () => QrMenuOrderingViewModel(),
      onModelReady: (QrMenuOrderingViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        QrMenuOrderingViewModel model,
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
                                  selectedTabName: 'ordering',
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
                                                              // width: 79.sp,
                                                              width: 149.65.sp,
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
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
                                                                        "Ordering Option",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              5.714.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        )),
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    width:
                                                                        123.73
                                                                            .sp,
                                                                    margin: EdgeInsets.only(
                                                                        left: 7.5
                                                                            .sp),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              "Enable Ordering",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 4.395.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccDanger300,
                                                                              ),
                                                                            ),
                                                                            csvertSpace2,
                                                                            Text(
                                                                              "you can enable/disable order option",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 3.736.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccNutural550,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        // cshorzSpace32,
                                                                        SizedBox(
                                                                          child: FlutterSwitch(
                                                                              width: 9.67.sp,
                                                                              height: 5.274.sp,
                                                                              activeColor: ccSuccess700,
                                                                              onToggle: (bool value) {},
                                                                              value: true),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  csvertSpace4,
                                                                  Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 7.5.sp)),
                                                                      CheckBoxTextWidget(
                                                                        check:
                                                                            true,
                                                                        text:
                                                                            'Credit/Debit Card through POS',
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 7.5.sp)),
                                                                      CheckBoxTextWidget(
                                                                        check:
                                                                            true,
                                                                        text:
                                                                            'Cash',
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 7.5.sp)),
                                                                      CheckBoxTextWidget(
                                                                        check:
                                                                            true,
                                                                        text:
                                                                            'Online Payment',
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  csvertSpace4,
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 7.5.sp)),
                                                                      RichText(
                                                                        text:
                                                                            TextSpan(
                                                                          text:
                                                                              'To accept Online Payment, go to ',
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.956.sp,
                                                                          ),
                                                                          children: const <
                                                                              TextSpan>[
                                                                            TextSpan(
                                                                                text: 'Integrations ',
                                                                                style: TextStyle(
                                                                                  color: ccDanger300,
                                                                                )),
                                                                            TextSpan(
                                                                              text: 'and apply for a payment',
                                                                              // style: TextStyle(
                                                                              //   color: ccDanger300,
                                                                              // ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 7.5.sp)),
                                                                      Text(
                                                                          'gateway operating in your country. ',
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.956.sp,
                                                                          )),
                                                                    ],
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    width:
                                                                        123.73
                                                                            .sp,
                                                                    margin: EdgeInsets.only(
                                                                        left: 7.5
                                                                            .sp),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              "Accept Tip",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 4.395.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccDanger300,
                                                                              ),
                                                                            ),
                                                                            csvertSpace2,
                                                                            Text(
                                                                              "you can accept tip",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 3.736.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccNutural550,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        // cshorzSpace32,
                                                                        SizedBox(
                                                                          child: FlutterSwitch(
                                                                              width: 9.67.sp,
                                                                              height: 5.274.sp,
                                                                              activeColor: ccSuccess700,
                                                                              onToggle: (bool value) {},
                                                                              value: true),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  csvertSpace8,
                                                                ],
                                                              ),
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
