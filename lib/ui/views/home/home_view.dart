// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
// import 'package:flutter_application_1/ui/widgets/dumb_widgets/my_column.widget.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../widgets/dumb_widgets/dashboard_list_item.widget.dart';
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
                      child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            csvertSpace16,
                            Container(
                              padding: EdgeInsets.only(
                                left: 3.29.sp,
                                right: 3.29.sp,
                                // top: 20.sp,
                              ),
                              // margin: const EdgeInsets.all(15),
                              height: 12.sp,
                              color: ccNeutral0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Monday 20 June, 2022",
                                    style: GoogleFonts.sen(
                                      color: ccNutural550,
                                      fontSize: 3.51.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "10:30 pm",
                                    style: GoogleFonts.sen(
                                      color: ccNutural550,
                                      fontSize: 3.95.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: ccNeutral0,
                              child: Container(
                                height: 67.03.sp,
                                width: 100.w,
                                margin: EdgeInsets.all(3.29.sp),
                                // padding: const EdgeInsets.all(5),
                                // color: ccNeutral0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.296.sp),
                                  border: Border.all(
                                      color: ccNutural550, width: 0.5),
                                  //         // color: Colors.transparent,
                                  //         // border: const Border(
                                  //         //   left: BorderSide(
                                  //         //     color: Colors.green,
                                  //         //     width: 3,
                                  //         //   ),
                                  //         // ),

                                  //         // boxShadow: const [
                                  //         //   BoxShadow(
                                  //         //       color: ccNutural550,
                                  //         //       spreadRadius: 1)
                                  //         // ],
                                ),
                                //     // decoration: BoxDecoration(
                                //     // color: Colors.blueAccent,
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: ccNutural550, width: 0.5),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 3.29.sp)),
                                          Expanded(
                                            child: SizedBox(
                                              height: 14.06.sp,
                                              width: 20.w,
                                              // color: Colors.red,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        child: Text(
                                                          "Today, 23 June, 2022",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccNutural550,
                                                            fontSize: 3.95.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(
                                              height: 14.06.sp,

                                              // color: Colors.blue,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        child: SvgPicture.asset(
                                                          "../assets/imges/v-reports.svg",
                                                          // height: 20.sp,
                                                          width: 4.sp,
                                                        ),
                                                      ),
                                                      const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 5)),
                                                      SizedBox(
                                                        child: Text(
                                                          "View Reprts",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.39.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  right: 3.29.sp)),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        // color: ccNeutral0,
                                        width: double.infinity,
                                        // height: double.infinity,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              child: Text(
                                                "Sales and Customer",
                                                style: GoogleFonts.sen(
                                                  color: ccDanger300,
                                                  fontSize: 6.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              child: Text(
                                                "Report Charts",
                                                style: GoogleFonts.sen(
                                                  color: ccDanger300,
                                                  fontSize: 6.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // order tables
                            Container(
                              color: ccNeutral0,
                              child: Container(
                                // height: 90.sp,
                                width: 100.w,
                                // height: 125.sp,
                                margin: EdgeInsets.all(3.29.sp),
                                // padding: const EdgeInsets.all(5),
                                // color: ccNeutral0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.296.sp),
                                  border: Border.all(
                                      color: ccNutural550, width: 0.5),
                                  // color: Colors.transparent,
                                  // border: const Border(
                                  //   left: BorderSide(
                                  //     color: Colors.green,
                                  //     width: 3,
                                  //   ),
                                  // ),

                                  // boxShadow: const [
                                  //   BoxShadow(
                                  //       color: ccNutural550,
                                  //       spreadRadius: 1)
                                  // ],
                                ),
                                // decoration: BoxDecoration(
                                // color: Colors.blueAccent,
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: ccNutural550, width: 0.5),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 3.29.sp)),
                                          Expanded(
                                            child: SizedBox(
                                              height: 14.06.sp,
                                              // width: 20.w,
                                              // color: Colors.red,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        child: Text(
                                                          "Recent Orders",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccNutural550,
                                                            fontSize: 3.95.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(
                                              height: 14.06.sp,
                                              width: 10.98.sp,
                                              // color: Colors.blue,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        child: SvgPicture.asset(
                                                          "../assets/imges/v-order.svg",
                                                          // height: 20.sp,
                                                          width: 4.sp,
                                                        ),
                                                      ),
                                                      const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 5)),
                                                      SizedBox(
                                                        child: Text(
                                                          "View Orders",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.39.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  right: 3.29.sp)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          // const Padding(
                                          // padding:
                                          //     EdgeInsets.only(left: 3.296.sp,
                                          Expanded(
                                            child: Container(
                                              height: 6.6.sp,
                                              // width: 20.w,
                                              // color: Colors.red,
                                              decoration: const BoxDecoration(
                                                  border: Border(
                                                      right: BorderSide(
                                                width: 0.5,
                                                color: ccNutural550,
                                              ))),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "ID",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 3.95.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 6.6.sp,
                                              // width: 20.w,
                                              // color: Colors.red,
                                              decoration: const BoxDecoration(
                                                  border: Border(
                                                      right: BorderSide(
                                                width: 0.5,
                                                color: ccNutural550,
                                              ))),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        child: Text(
                                                          "Daily No.",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 3.95.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 6.6.sp,
                                            width: 32.98.sp,
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            // color: Colors.red,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      // width: 30.98.sp,
                                                      child: Text(
                                                        "Status",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 3.95.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 6.6.sp,
                                            width: 30.98.sp,
                                            // color: Colors.red,
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      child: Text(
                                                        "Type",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 3.95.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
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
                                              height: 6.6.sp,

                                              // width: 20.w,
                                              // color: Colors.red,
                                              decoration: const BoxDecoration(
                                                  border: Border(
                                                      right: BorderSide(
                                                width: 0.5,
                                                color: ccNutural550,
                                              ))),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        child: Text(
                                                          "Table",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 3.95.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 6.6.sp,
                                              decoration: const BoxDecoration(
                                                  border: Border(
                                                      right: BorderSide(
                                                width: 0.5,
                                                color: ccNutural550,
                                              ))),
                                              // color: Colors.red,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        child: Text(
                                                          "Waiter",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 3.95.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 6.6.sp,
                                            width: 30.38.sp,
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            // color: Colors.red,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      child: Text(
                                                        "Update Time",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 3.95.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(
                                              height: 10.98.sp,
                                              // width: 20.w,
                                              // color: Colors.red,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        child: Text(
                                                          "Total",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 3.95.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 80.sp,
                                      padding: EdgeInsets.only(bottom: 6.96.sp),
                                      child: ListView.builder(
                                        itemCount: 8,
                                        itemBuilder: (context, index) {
                                          return DashboardListItemWidget(
                                            goToModalRequested: () {},
                                            idNo: "1001",
                                            dailyNo: "1",
                                            status: "Cancelled",
                                            type: "Dine-in",
                                            table: "Table No 2",
                                            waiter: "Waiter 1",
                                            updateDate: "Today",
                                            updateTime: "10:15:00",
                                            total: "RM 200",
                                            days: '1 Day Ago',
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
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
