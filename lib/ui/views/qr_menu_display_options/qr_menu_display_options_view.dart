import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/add_text_feild.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/qr_menu_tabs.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './qr_menu_display_options_view_model.dart';

class QrMenuDisplayOptionsView extends StatelessWidget {
  const QrMenuDisplayOptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'English';
    return ViewModelBuilder<QrMenuDisplayOptionsViewModel>.reactive(
      viewModelBuilder: () => QrMenuDisplayOptionsViewModel(),
      onModelReady: (QrMenuDisplayOptionsViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        QrMenuDisplayOptionsViewModel model,
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
                                  selectedTabName: 'options',
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
                                                                        "Language Options",
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
                                                                      Text(
                                                                        "Default Language",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          fontSize:
                                                                              4.395.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              ccDanger300,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  csvertSpace4,
                                                                  Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 7.5.sp)),
                                                                      Container(
                                                                        width: 119.78
                                                                            .sp,
                                                                        height:
                                                                            8.791.sp,
                                                                        padding: EdgeInsets.only(
                                                                            left:
                                                                                4.153.sp,
                                                                            right: 1.318.sp),
                                                                        decoration:
                                                                            ShapeDecoration(
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            side:
                                                                                const BorderSide(
                                                                              width: 1,
                                                                              style: BorderStyle.solid,
                                                                              color: ccPrimary300,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.all(Radius.circular(1.0989.sp)),
                                                                          ),
                                                                        ),
                                                                        child: DropdownButton<
                                                                            String>(
                                                                          value:
                                                                              dropdownValue,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down,
                                                                            color:
                                                                                ccNutural550,
                                                                            size:
                                                                                5.395.sp,
                                                                          ),
                                                                          elevation:
                                                                              16,
                                                                          isExpanded:
                                                                              true,
                                                                          // isDense: true,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.956.sp,
                                                                          ),
                                                                          underline:
                                                                              Container(
                                                                            height:
                                                                                0.0,
                                                                            color:
                                                                                Colors.transparent,
                                                                          ),
                                                                          onChanged:
                                                                              (String? newValue) {
                                                                            // setState(() {
                                                                            //   dropdownValue = newValue!;
                                                                            // });
                                                                          },
                                                                          items: <
                                                                              String>[
                                                                            'English',
                                                                            'Bahasa Indonesia',
                                                                          ].map<DropdownMenuItem<String>>((String
                                                                              value) {
                                                                            return DropdownMenuItem<String>(
                                                                              value: value,
                                                                              child: Text(value),
                                                                            );
                                                                          }).toList(),
                                                                          dropdownColor:
                                                                              ccNeutral0,
                                                                        ),
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
                                                                      Text(
                                                                        "Additional Language",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          fontSize:
                                                                              4.395.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              ccDanger300,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  csvertSpace4,
                                                                  Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 7.5.sp)),
                                                                      Container(
                                                                        width: 119.78
                                                                            .sp,
                                                                        height:
                                                                            8.791.sp,
                                                                        padding: EdgeInsets.only(
                                                                            left:
                                                                                4.153.sp,
                                                                            right: 1.318.sp),
                                                                        decoration:
                                                                            ShapeDecoration(
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            side:
                                                                                const BorderSide(
                                                                              width: 1,
                                                                              style: BorderStyle.solid,
                                                                              color: ccPrimary300,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.all(Radius.circular(1.0989.sp)),
                                                                          ),
                                                                        ),
                                                                        child: DropdownButton<
                                                                            String>(
                                                                          value:
                                                                              dropdownValue,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down,
                                                                            color:
                                                                                ccNutural550,
                                                                            size:
                                                                                5.395.sp,
                                                                          ),
                                                                          elevation:
                                                                              16,
                                                                          isExpanded:
                                                                              true,
                                                                          // isDense: true,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.956.sp,
                                                                          ),
                                                                          underline:
                                                                              Container(
                                                                            height:
                                                                                0.0,
                                                                            color:
                                                                                Colors.transparent,
                                                                          ),
                                                                          onChanged:
                                                                              (String? newValue) {
                                                                            // setState(() {
                                                                            //   dropdownValue = newValue!;
                                                                            // });
                                                                          },
                                                                          items: <
                                                                              String>[
                                                                            'English',
                                                                            'Bahasa Indonesia',
                                                                          ].map<DropdownMenuItem<String>>((String
                                                                              value) {
                                                                            return DropdownMenuItem<String>(
                                                                              value: value,
                                                                              child: Container(
                                                                                // color: ccDanger300,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(1.758.sp),
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
                                                                                        fontWeight: FontWeight.w400,
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
                                                                          dropdownColor:
                                                                              ccNeutral0,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    color: const Color(
                                                                        0xFFFBF2F0),
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      top: 5.054
                                                                          .sp,
                                                                      bottom:
                                                                          5.054
                                                                              .sp,
                                                                      // right:
                                                                      //     5.sp,
                                                                      left: 4.615
                                                                          .sp,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        RichText(
                                                                          text:
                                                                              TextSpan(
                                                                            text:
                                                                                'You can translate your menu in multiple languages with ',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                            ),
                                                                            children: const <TextSpan>[
                                                                              TextSpan(
                                                                                  text: 'Translation Center.',
                                                                                  style: TextStyle(
                                                                                    color: ccDanger300,
                                                                                  )),
                                                                            ],
                                                                          ),
                                                                        )
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
                                                                        "Price Settings",
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
                                                                        // Padding(
                                                                        //     padding:
                                                                        //         EdgeInsets.only(left: 7.5.sp)),
                                                                        Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              "Display Prices",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 4.395.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccDanger300,
                                                                              ),
                                                                            ),
                                                                            csvertSpace2,
                                                                            Text(
                                                                              "You can hide/display prices on the menu.",
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
                                                                        // Padding(
                                                                        //     padding:
                                                                        //         EdgeInsets.only(left: 7.5.sp)),
                                                                        Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              "Display currency sign",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 4.395.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccDanger300,
                                                                              ),
                                                                            ),
                                                                            csvertSpace2,
                                                                            Text(
                                                                              "The currency sign will be seen nearby the prices on the menu",
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
                                                                        // Padding(
                                                                        //     padding:
                                                                        //         EdgeInsets.only(left: 7.5.sp)),
                                                                        Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              "Display currency fraction",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 4.395.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccDanger300,
                                                                              ),
                                                                            ),
                                                                            csvertSpace2,
                                                                            Text(
                                                                              "Show/hide fraction of the prices on the menu.",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 3.736.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccNutural550,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              "E.g. 7 instead of 7.00",
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
                                                                      Text(
                                                                        "Menu Currency",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          fontSize:
                                                                              4.395.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          color:
                                                                              ccDanger300,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  csvertSpace4,
                                                                  Row(
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(left: 7.5.sp)),
                                                                      Container(
                                                                        width: 119.78
                                                                            .sp,
                                                                        height:
                                                                            8.791.sp,
                                                                        padding: EdgeInsets.only(
                                                                            left:
                                                                                4.153.sp,
                                                                            right: 1.318.sp),
                                                                        decoration:
                                                                            ShapeDecoration(
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            side:
                                                                                const BorderSide(
                                                                              width: 1,
                                                                              style: BorderStyle.solid,
                                                                              color: ccPrimary300,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.all(Radius.circular(1.0989.sp)),
                                                                          ),
                                                                        ),
                                                                        child: DropdownButton<
                                                                            String>(
                                                                          value:
                                                                              dropdownValue,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down,
                                                                            color:
                                                                                ccNutural550,
                                                                            size:
                                                                                5.395.sp,
                                                                          ),
                                                                          elevation:
                                                                              16,
                                                                          isExpanded:
                                                                              true,
                                                                          // isDense: true,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.956.sp,
                                                                          ),
                                                                          underline:
                                                                              Container(
                                                                            height:
                                                                                0.0,
                                                                            color:
                                                                                Colors.transparent,
                                                                          ),
                                                                          onChanged:
                                                                              (String? newValue) {
                                                                            // setState(() {
                                                                            //   dropdownValue = newValue!;
                                                                            // });
                                                                          },
                                                                          items: <
                                                                              String>[
                                                                            'English',
                                                                            'Bahasa Indonesia',
                                                                          ].map<DropdownMenuItem<String>>((String
                                                                              value) {
                                                                            return DropdownMenuItem<String>(
                                                                              value: value,
                                                                              child: Text(value),
                                                                            );
                                                                          }).toList(),
                                                                          dropdownColor:
                                                                              ccNeutral0,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
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
                                                                    // child: Row(
                                                                    //   children: [

                                                                    //   ],
                                                                    // ),
                                                                  ),
                                                                  csvertSpace4,
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
                                                                        "Welcome Page Settings",
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
                                                                        // Padding(
                                                                        //     padding:
                                                                        //         EdgeInsets.only(left: 7.5.sp)),
                                                                        Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              "Display venue name",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 4.395.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccDanger300,
                                                                              ),
                                                                            ),
                                                                            csvertSpace2,
                                                                            Text(
                                                                              "Whether display the name of the venue on the welcome page.",
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
                                                                  Container(
                                                                    width:
                                                                        119.78
                                                                            .sp,
                                                                    margin: EdgeInsets.only(
                                                                        left: 7.5
                                                                            .sp),
                                                                    child:
                                                                        AddTextFeildWidget(
                                                                      hint:
                                                                          'your message',
                                                                      lebel:
                                                                          'Welcome message',
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
                                                                        "This text will be displayed at the menu’s first page.",
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.736.sp,
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
                                                                    // child: Row(
                                                                    //   children: [

                                                                    //   ],
                                                                    // ),
                                                                  ),
                                                                  csvertSpace4,
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
                                                                        "Ingredient / Allergen Warnings",
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
                                                                        // Padding(
                                                                        //     padding:
                                                                        //         EdgeInsets.only(left: 7.5.sp)),
                                                                        Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              "Display ingredient warning labels",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 4.395.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccDanger300,
                                                                              ),
                                                                            ),
                                                                            csvertSpace2,
                                                                            Text(
                                                                              "Displays the label describing the ingredient warning.",
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
