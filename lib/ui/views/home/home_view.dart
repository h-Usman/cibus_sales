// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/dashboard_static_tabs.widget.dart';
// import 'package:flutter_application_1/ui/widgets/dumb_widgets/my_column.widget.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../widgets/dumb_widgets/footer.widget.dart';
// import '../../widgets/dumb_widgets/left_menu.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import '../../widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import './home_view_model.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  // final goToPageRequested;
  // final Function goToPageRequested;
  // final Function goToModalRequested;
  const HomeView({
    Key? key,
    // required this.goToPageRequested,
    // required this.goToModalRequested,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (HomeViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        String dropdownValue = 'Month';
        return Scaffold(
          backgroundColor: ccNeutral0,
          body: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 51.sp,
                height: 100.h,
                child: MainNavigationMenuWidgetView(),
              ),
              SizedBox(
                width: 100.w - 52.sp,
                height: 100.h,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(children: [
                        csvertSpace16,
                        Container(
                          padding: EdgeInsets.only(left: 3.sp, right: 4.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: 3.076923.sp,
                                  right: 3.076923.sp,
                                  top: 3.27472.sp,
                                  bottom: 5.27472.sp,
                                ),
                                width: 78.sp,
                                height: 83.sp,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(3.5164835.sp),
                                  border: Border.all(
                                      color: ccNutural550, width: 0.5),
                                  color: ccNeutral0,
                                  boxShadow: cbssShadowBase,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: 5.27472.sp,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Sales report",
                                            style: GoogleFonts.sen(
                                              color: ccNutural550,
                                              fontSize: 3.7362.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 14.626373.sp,
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
                                              // style: TextStyle(
                                              //   color: ccNutural550,
                                              //   fontSize: 3.076923.sp,
                                              // ),
                                              style: GoogleFonts.sen(
                                                color: ccNutural550,
                                                fontSize: 3.07692.sp,
                                                fontWeight: FontWeight.w400,
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
                                                'Day',
                                                'Month',
                                                'Year',
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      // Padding(
                                                      // padding:
                                                      //     EdgeInsets.only(
                                                      //         left:
                                                      //             3.29.sp)),
                                                      Text(value),
                                                    ],
                                                  ),
                                                );
                                              }).toList(),
                                              dropdownColor: ccNeutral0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "../assets/imges/sales-chart.svg",
                                      width: 37.142857.sp,
                                      height: 37.142857.sp,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(top: 5.7142857.sp),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "../assets/imges/ready-circle.svg",
                                                    width: 2.19780.sp,
                                                    height: 2.19780.sp,
                                                  ),
                                                  cshorzSpace2,
                                                  Text("Sales Matured",
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 3.07692.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      )),
                                                ],
                                              ),
                                              Text(
                                                "60.8%",
                                                style: GoogleFonts.sen(
                                                  color: ccNutural550,
                                                  fontSize: 3.07692.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          csvertSpace2,
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "../assets/imges/waiting-cirlce.svg",
                                                    width: 2.19780.sp,
                                                    height: 2.19780.sp,
                                                  ),
                                                  cshorzSpace2,
                                                  Text("On going Leads",
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 3.07692.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      )),
                                                ],
                                              ),
                                              Text(
                                                "19.1%",
                                                style: GoogleFonts.sen(
                                                  color: ccNutural550,
                                                  fontSize: 3.07692.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          csvertSpace2,
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "../assets/imges/failed-circle.svg",
                                                    width: 2.19780.sp,
                                                    height: 2.19780.sp,
                                                  ),
                                                  cshorzSpace2,
                                                  Text("Failed",
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 3.07692.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      )),
                                                ],
                                              ),
                                              Text(
                                                "20.1%",
                                                style: GoogleFonts.sen(
                                                  color: ccNutural550,
                                                  fontSize: 3.07692.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 3.076923.sp,
                                  right: 3.076923.sp,
                                  top: 3.27472.sp,
                                  bottom: 5.27472.sp,
                                ),
                                width: 159.sp,
                                height: 83.sp,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(3.5164835.sp),
                                  border: Border.all(
                                      color: ccNutural550, width: 0.5),
                                  color: ccNeutral0,
                                  boxShadow: cbssShadowBase,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: 5.27472.sp,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Overall sales",
                                                style: GoogleFonts.sen(
                                                  color: ccNutural550,
                                                  fontSize: 3.7362.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "RM56,345.98",
                                                    style: GoogleFonts.sen(
                                                      color: ccNetural950,
                                                      fontSize: 5.71428.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  cshorzSpace3,
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: ccSuccess900,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.296.sp),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                      left: 8,
                                                      right: 8,
                                                      top: 4,
                                                      bottom: 4,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "../assets/imges/trending-up.svg",
                                                          width: 3.sp,
                                                          height: 3.sp,
                                                        ),
                                                        cshorzSpace1,
                                                        Text(
                                                          "23,5%",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccNeutral0,
                                                            fontSize:
                                                                3.5164835.sp,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 14.626373.sp,
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
                                              // style: TextStyle(
                                              //   color: ccNutural550,
                                              //   fontSize: 3.076923.sp,
                                              // ),
                                              style: GoogleFonts.sen(
                                                color: ccNutural550,
                                                fontSize: 3.07692.sp,
                                                fontWeight: FontWeight.w400,
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
                                                'Day',
                                                'Month',
                                                'Year',
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      // Padding(
                                                      // padding:
                                                      //     EdgeInsets.only(
                                                      //         left:
                                                      //             3.29.sp)),
                                                      Text(value),
                                                    ],
                                                  ),
                                                );
                                              }).toList(),
                                              dropdownColor: ccNeutral0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "../assets/imges/overall-sales.svg",
                                      width: 143.362.sp,
                                      height: 55.60.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        csvertSpace12,
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          child: Wrap(
                            spacing: 3.sp,
                            runSpacing: 3.sp,
                            children: const [
                              DashboardTabsWidget(),
                              DashboardTabsWidget(),
                              DashboardTabsWidget(),
                            ],
                          ),
                        ),
                        csvertSpace16,
                      ]),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: TopHeaderWidget(),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FooterWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
