import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/date.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/feedbackTabs/feedback_tabs.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/feedback_results_list.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/fill_check_box.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './feedback_results_view_model.dart';

class FeedbackResultsView extends StatelessWidget {
  final bool selectOrder = true;
  const FeedbackResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FeedbackResultsViewModel>.reactive(
      viewModelBuilder: () => FeedbackResultsViewModel(),
      onModelReady: (FeedbackResultsViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        FeedbackResultsViewModel model,
        Widget? child,
      ) {
        return Container(
          decoration: const BoxDecoration(
            gradient: ccLightBackground,
          ),
          child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
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
                        SingleChildScrollView(
                          child: Container(
                            // width: 15.w,
                            // height: 50,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const <Widget>[
                                          PageTitlewWidget(
                                            titleName: 'Feedbacks',
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 3.29.sp, right: 3.29.sp),
                                      color: ccNeutral0,
                                      // width: double.infinity,
                                      // height: double.infinity,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 10.98.sp,
                                            width: 93.40.sp,
                                            // color: Colors.blue,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                FeedbacksTabsWidget(
                                                  goToPageRequested: (val) =>
                                                      model.goToPage(val),
                                                  selectedTabName: 'result',
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.98.sp,
                                            width: 135.38.sp,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 7.47.sp,
                                                  padding: EdgeInsets.only(
                                                      left: 2.197.sp,
                                                      right: 2.197.sp),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1.098.sp),
                                                    border: Border.all(
                                                      color: ccNutural550,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Start Date',
                                                        style: GoogleFonts.sen(
                                                          color: ccNutural550,
                                                          fontSize: 3.07.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 13.62
                                                                      .sp)),
                                                      SvgPicture.asset(
                                                        "../assets/imges/right-arrow.svg",
                                                        width: 3.51.sp,
                                                        height: 1.75.sp,
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right:
                                                                      2.41.sp)),
                                                      Text(
                                                        'End Date',
                                                        style: GoogleFonts.sen(
                                                          color: ccNutural550,
                                                          fontSize: 3.07.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right:
                                                                      11.sp)),
                                                      SvgPicture.asset(
                                                        "../assets/imges/calender.svg",
                                                        width: 3.296.sp,
                                                        height: 3.736.sp,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                  left: 4.39.sp,
                                                )),
                                                Container(
                                                  height: 7.47.sp,
                                                  padding: EdgeInsets.only(
                                                      left: 1.20.sp,
                                                      right: 1.20.sp),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1.098.sp),
                                                    border: Border.all(
                                                        color: ccNutural550),
                                                  ),
                                                  child: ElevatedButton.icon(
                                                    onPressed: () {},
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          ccNeutral0,
                                                      elevation:
                                                          0.0, // foreground
                                                    ),
                                                    icon: SvgPicture.asset(
                                                      "../assets/imges/reload.svg",
                                                      width: 4.17.sp,
                                                      height: 4.17.sp,
                                                    ),
                                                    label: Text(
                                                      'Reload',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.39.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ), // <-- Text
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                  left: 4.39.sp,
                                                )),
                                                Container(
                                                  height: 7.47.sp,
                                                  width: 29.23.sp,
                                                  color: ccNeutral0,
                                                  // padding: EdgeInsets.only(
                                                  //     left: 1.758.sp,
                                                  //     right: 1.758.sp),
                                                  child: ElevatedButton.icon(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          ccDanger300,
                                                      padding: EdgeInsets.only(
                                                          left: 2.758.sp,
                                                          right: 2.758
                                                              .sp), // foreground
                                                    ),
                                                    onPressed: () => showDialog(
                                                      context: context,
                                                      barrierDismissible: false,
                                                      builder: (_) =>
                                                          AlertDialog(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        2.197
                                                                            .sp))),
                                                        content: Container(
                                                          // color: Colors.white,
                                                          width: 183.0769.sp,
                                                          height: 103.51.sp,
                                                          decoration:
                                                              const BoxDecoration(
                                                                  border: Border(
                                                                      bottom: BorderSide(
                                                            width: 0.5,
                                                            color: ccNatural250,
                                                          ))),
                                                          child: SizedBox(
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  decoration: const BoxDecoration(
                                                                      border: Border(
                                                                          bottom: BorderSide(
                                                                    width: 0.5,
                                                                    color:
                                                                        ccNatural250,
                                                                  ))),
                                                                  height:
                                                                      14.62.sp,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              10.62.sp,
                                                                          alignment:
                                                                              Alignment.centerLeft,
                                                                          child:
                                                                              Text(
                                                                            'Export',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccDanger300,
                                                                              fontSize: 5.714.sp,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            10.62.sp,
                                                                        width: 10
                                                                            .sp,
                                                                        child:
                                                                            ElevatedButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          style:
                                                                              ElevatedButton.styleFrom(
                                                                            backgroundColor:
                                                                                ccNeutral0,
                                                                            elevation:
                                                                                0,
                                                                            shadowColor:
                                                                                Colors.transparent,
                                                                          ),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            "../assets/imges/close.svg",
                                                                            height:
                                                                                4.615.sp,
                                                                            width:
                                                                                4.615.sp,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 2
                                                                              .sp),
                                                                ),
                                                                csvertSpace2,
                                                                SizedBox(
                                                                  height: 81.sp,
                                                                  child:
                                                                      SingleChildScrollView(
                                                                          child:
                                                                              Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Date Range',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccDanger300,
                                                                          fontSize:
                                                                              4.39.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                      csvertSpace2,
                                                                      FillCheckBoxCircleWidget(
                                                                        check:
                                                                            false,
                                                                        text:
                                                                            'Today',
                                                                      ),
                                                                      FillCheckBoxCircleWidget(
                                                                        check:
                                                                            false,
                                                                        text:
                                                                            'Last Week',
                                                                      ),
                                                                      FillCheckBoxCircleWidget(
                                                                        check:
                                                                            false,
                                                                        text:
                                                                            'Last Month',
                                                                      ),
                                                                      FillCheckBoxCircleWidget(
                                                                        check:
                                                                            false,
                                                                        text:
                                                                            'Last Quater',
                                                                      ),
                                                                      FillCheckBoxCircleWidget(
                                                                        check:
                                                                            false,
                                                                        text:
                                                                            'This Year',
                                                                      ),
                                                                      FillCheckBoxCircleWidget(
                                                                        check:
                                                                            false,
                                                                        text:
                                                                            'All',
                                                                      ),
                                                                      FillCheckBoxCircleWidget(
                                                                        check:
                                                                            true,
                                                                        text:
                                                                            'Custom',
                                                                      ),
                                                                      Row(
                                                                        children: [
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: 9.40.sp)),
                                                                          DateWidget(),
                                                                        ],
                                                                      )
                                                                    ],
                                                                  )),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        actions: [
                                                          Container(
                                                            height: 7.25.sp,
                                                            width: 29.23.sp,
                                                            margin:
                                                                EdgeInsets.only(
                                                              bottom: 4.39.sp,
                                                            ),
                                                            // color: Colors.green,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          1.098
                                                                              .sp),
                                                              border: Border.all(
                                                                  color:
                                                                      ccNutural550),
                                                            ),
                                                            child:
                                                                ElevatedButton
                                                                    .icon(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    ccNeutral0, // foreground
                                                              ),
                                                              icon: SvgPicture
                                                                  .asset(
                                                                "../assets/imges/close.svg",
                                                                width: 2.85.sp,
                                                                height: 2.85.sp,
                                                              ),
                                                              label: Text(
                                                                'Cancel',
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNutural550,
                                                                  fontSize:
                                                                      4.39.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ), // <-- Text
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                            left: 7.25.sp,
                                                          )),
                                                          Container(
                                                            height: 7.25.sp,
                                                            width: 29.23.sp,
                                                            margin:
                                                                EdgeInsets.only(
                                                              bottom: 4.39.sp,
                                                            ),
                                                            // color: Colors.green,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              // border: Border.all(color: ccNutural550),
                                                            ),
                                                            child:
                                                                ElevatedButton
                                                                    .icon(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    ccDanger300,
                                                                elevation: 0,
                                                                shadowColor: Colors
                                                                    .transparent,
                                                              ),
                                                              icon: SvgPicture
                                                                  .asset(
                                                                "../assets/imges/export-white.svg",
                                                                width: 3.51.sp,
                                                                height: 4.39.sp,
                                                              ),
                                                              label: Text(
                                                                'Export',
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNeutral0,
                                                                  fontSize:
                                                                      4.39.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ), // <-- Text
                                                            ),
                                                          ),
                                                          cshorzSpace5,
                                                        ],
                                                      ),
                                                    ),
                                                    icon: SvgPicture.asset(
                                                      "../assets/imges/export-white.svg",
                                                      width: 3.51.sp,
                                                      height: 4.39.sp,
                                                    ),
                                                    label: Text(
                                                      'Export',
                                                      style: GoogleFonts.sen(
                                                        color: ccNeutral0,
                                                        fontSize: 4.39.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ), // <-- Text
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // order tables
                                    Container(
                                      color: ccNeutral0,
                                      child: Column(children: [
                                        Container(
                                          width: 100.w,
                                          margin: EdgeInsets.all(3.29.sp),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3.29.sp),
                                            border:
                                                Border.all(color: ccNatural250),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                decoration: const BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                        color: ccNeutral0,
                                                        width: 0.5),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 3.29.sp)),
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: 10.98.sp,
                                                        // width: 20.w,
                                                        // color: Colors.red,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          // color: Colors.red,
                                                          children: <Widget>[
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "1 Results Listed",
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccNutural550,
                                                                    fontSize:
                                                                        3.95.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
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
                                                padding: EdgeInsets.only(
                                                    top: 3.sp, bottom: 3.sp),
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    top: BorderSide(
                                                        color: ccNatural250,
                                                        width: .5),
                                                    bottom: BorderSide(
                                                        color: ccNatural250,
                                                        width: .5),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: 6.6.sp,
                                                      width: 70.329.sp,
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              right: BorderSide(
                                                        width: 0.5,
                                                        color: ccNutural550,
                                                      ))),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          cshorzSpace7,
                                                          Text(
                                                            "Results",
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccDanger300,
                                                              fontSize: 3.95.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 6.6.sp,
                                                      width: 57.582.sp,
                                                      decoration:
                                                          const BoxDecoration(
                                                              border: Border(
                                                                  right:
                                                                      BorderSide(
                                                        width: 0.5,
                                                        color: ccNutural550,
                                                      ))),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 2.sp),
                                                            child: Text(
                                                              "Date",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccDanger300,
                                                                fontSize:
                                                                    3.95.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        2.sp),
                                                            child: SvgPicture
                                                                .asset(
                                                              "../assets/imges/sort.svg",
                                                              width: 2.63.sp,
                                                              height: 2.63.sp,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 6.6.sp,
                                                      width: 80.879.sp,
                                                      decoration:
                                                          const BoxDecoration(
                                                              border: Border(
                                                                  right:
                                                                      BorderSide(
                                                        width: 0.5,
                                                        color: ccNutural550,
                                                      ))),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          cshorzSpace2,
                                                          SizedBox(
                                                            child: Text(
                                                              "Form",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccDanger300,
                                                                fontSize:
                                                                    3.95.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: 6.6.sp,
                                                        // width: 28.571.sp,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            cshorzSpace2,
                                                            SizedBox(
                                                              child: Text(
                                                                "Actions",
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccDanger300,
                                                                  fontSize:
                                                                      3.95.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
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
                                              SizedBox(
                                                height: 100.h - 80.sp,
                                                child: ListView.builder(
                                                    itemCount: 3,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return FeedbackResultListWidget(
                                                        goToModalRequested:
                                                            () {},
                                                        // selected: false,
                                                        formNo: "Form 123513",
                                                        date:
                                                            "13/06/2022 18:29",
                                                        formName:
                                                            'Default Feedback Form',
                                                        orderItemId: "1",
                                                        goToPageRequested:
                                                            (val) => model
                                                                .goToPage(val),
                                                      );
                                                    }),
                                              ),
                                              csvertSpace4,
                                            ],
                                          ),
                                        ),
                                        csvertSpace12,
                                      ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
            ),
          ),
        );
      },
    );
  }
}
