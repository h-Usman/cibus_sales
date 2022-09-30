import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';
import '../../widgets/dumb_widgets/footer.widget.dart';
import '../../widgets/dumb_widgets/page_title.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import '../../widgets/dumb_widgets/venu-settings/venu_settings_tabs.widget.dart';
import '../../widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import './venue_settings_extra_charges_view_model.dart';

class VenueSettingsExtraChargesView extends StatelessWidget {
  const VenueSettingsExtraChargesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VenueSettingsExtraChargesViewModel>.reactive(
      viewModelBuilder: () => VenueSettingsExtraChargesViewModel(),
      onModelReady: (VenueSettingsExtraChargesViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        VenueSettingsExtraChargesViewModel model,
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
                                        titleName: 'Venue Settings',
                                      ),
                                    ],
                                  ),
                                ),
                                VenuSettingsTabsWidget(
                                  goToPageRequested: (val) =>
                                      model.goToPage(val),
                                  selectedTabName: 'extra-charges',
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
                                                        Container(
                                                          // height: 100.h - 380,
                                                          // width: 150.10.sp,
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7.5.sp,
                                                                  top: 7.9.sp,
                                                                  right: 7.5.sp,
                                                                  bottom: 8.2745
                                                                      .sp),
                                                          child: Text(
                                                              "Discounts",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccDanger300,
                                                                fontSize:
                                                                    5.714.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              )),
                                                        ),
                                                        Container(
                                                          // height: 100.h - 380,
                                                          // width: 150.10.sp,
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7.5.sp),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                width:
                                                                    91.538.sp,
                                                                child: Text(
                                                                    "Name",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          4.395
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    )),
                                                              ),
                                                              Text("Rate",
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccNutural550,
                                                                    fontSize:
                                                                        4.395
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  )),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 7.5.sp,
                                                            top: 8.2745.sp,
                                                            bottom: 6.sp,
                                                          ),
                                                          child: InkWell(
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Add Discount",
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccDanger300,
                                                                    fontSize:
                                                                        4.395
                                                                            .sp,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 3.29
                                                                            .sp)),
                                                                SvgPicture
                                                                    .asset(
                                                                  "../assets/imges/plus.svg",
                                                                  // height: 20.sp,
                                                                  width: 3.sp,
                                                                  height: 3.sp,
                                                                ),
                                                              ],
                                                            ),
                                                            onTap: () {
                                                              model.goToPage(
                                                                  'add_extra_charges');
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
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
                                                        Container(
                                                          // height: 100.h - 380,
                                                          // width: 150.10.sp,
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7.5.sp,
                                                                  top: 7.9.sp,
                                                                  right: 7.5.sp,
                                                                  bottom: 8.2745
                                                                      .sp),
                                                          child: Text(
                                                              "Service Charges",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccDanger300,
                                                                fontSize:
                                                                    5.714.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              )),
                                                        ),
                                                        Container(
                                                          // height: 100.h - 380,
                                                          // width: 150.10.sp,
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7.5.sp),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                width:
                                                                    91.538.sp,
                                                                child: Text(
                                                                    "Name",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          4.395
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    )),
                                                              ),
                                                              Text("Rate",
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccNutural550,
                                                                    fontSize:
                                                                        4.395
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  )),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 7.5.sp,
                                                            top: 8.2745.sp,
                                                            bottom: 6.sp,
                                                          ),
                                                          child: InkWell(
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Add Service Charges",
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccDanger300,
                                                                    fontSize:
                                                                        4.395
                                                                            .sp,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 3.29
                                                                            .sp)),
                                                                SvgPicture
                                                                    .asset(
                                                                  "../assets/imges/plus.svg",
                                                                  // height: 20.sp,
                                                                  width: 3.sp,
                                                                  height: 3.sp,
                                                                ),
                                                              ],
                                                            ),
                                                            onTap: () {
                                                              model.goToPage(
                                                                  'add_extra_charges');
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
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
                                                        Container(
                                                          // height: 100.h - 380,
                                                          // width: 150.10.sp,
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7.5.sp,
                                                                  top: 7.9.sp,
                                                                  right: 7.5.sp,
                                                                  bottom: 8.2745
                                                                      .sp),
                                                          child: Text("Taxes",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccDanger300,
                                                                fontSize:
                                                                    5.714.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              )),
                                                        ),
                                                        Container(
                                                          // height: 100.h - 380,
                                                          // width: 150.10.sp,
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7.5.sp),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                width:
                                                                    91.538.sp,
                                                                child: Text(
                                                                    "Name",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          4.395
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    )),
                                                              ),
                                                              Text("Rate",
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccNutural550,
                                                                    fontSize:
                                                                        4.395
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  )),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 7.5.sp,
                                                            top: 8.2745.sp,
                                                            bottom: 6.sp,
                                                          ),
                                                          child: InkWell(
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Add Tax",
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccDanger300,
                                                                    fontSize:
                                                                        4.395
                                                                            .sp,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 3.29
                                                                            .sp)),
                                                                SvgPicture
                                                                    .asset(
                                                                  "../assets/imges/plus.svg",
                                                                  // height: 20.sp,
                                                                  width: 3.sp,
                                                                  height: 3.sp,
                                                                ),
                                                              ],
                                                            ),
                                                            onTap: () {
                                                              model.goToPage(
                                                                  'add_extra_charges');
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  // ExtraChargesDetailsWidget(
                                                  //   name: 'Discount',
                                                  // ),
                                                  // ExtraChargesDetailsWidget(
                                                  //   name: 'Service Charges',
                                                  // ),
                                                  // ExtraChargesDetailsWidget(
                                                  //   name: 'Taxes',
                                                  // ),
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
            // drawer: LeftMenuWidget(
            //   goToPageRequested: (value) => goToPageRequested(value),
            //   goToModalRequested: goToModalRequested,
            // ),
          ),
        );
      },
    );
  }
}
