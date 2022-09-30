import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/checkbox,widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/date.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/fill_check_box.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/show_side_dialogue.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/time.widget.dart';
// ignore: unused_import
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/cibus.theme.helpers.dart';
// ignore: unused_import
import '../checkbox_cirlce.widget.dart';

// ignore: must_be_immutable
class AddMenuTabsWidget extends StatelessWidget {
  final String selectedTabName;
  final Function goToPageRequested;

  AddMenuTabsWidget({
    Key? key,
    required this.selectedTabName,
    required this.goToPageRequested,
  }) : super(key: key);

  List<bool> isSelected = [false, false, true, false];
  List<bool> isSorted = [true, false];
  bool isPopOpen = false;

  get model => null;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 10.98.sp,
          // width: 93.40.sp,
          // color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 5.49.sp,
                // width: 26.37.sp,
                // color: Colors.red,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        // width: 12.sp,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          width: 0.5,
                          color: selectedTabName == "overview"
                              ? ccDanger300
                              : ccNeutral0,
                        ))),
                        child: Text(
                          "Overview",
                          style: selectedTabName == "overview"
                              ? GoogleFonts.sen(
                                  color: ccDanger300,
                                  fontSize: 4.395.sp,
                                  fontWeight: FontWeight.w400,
                                )
                              : GoogleFonts.sen(
                                  color: ccNutural550,
                                  fontSize: 4.395.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 7.sp)),
                    ],
                  ),
                  onTap: () {
                    // goToPageRequested('veune_location');
                  },
                ),
              ),
              SizedBox(
                height: 5.49.sp,
                // color: Colors.red,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        // width: 12.sp,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          width: 0.5,
                          color: selectedTabName == "custom-view"
                              ? ccDanger300
                              : ccNeutral0,
                        ))),
                        child: Text(
                          "Customize View",
                          style: selectedTabName == "custom-view"
                              ? GoogleFonts.sen(
                                  color: ccDanger300,
                                  fontSize: 4.395.sp,
                                  fontWeight: FontWeight.w400,
                                )
                              : GoogleFonts.sen(
                                  color: ccNutural550,
                                  fontSize: 4.395.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 7.sp)),
                    ],
                  ),
                  onTap: () {
                    if (isPopOpen == true) {
                      Navigator.pop(context);
                    }

                    showSideDialogue(
                      context: context,
                      title: "Add new Menu",
                      cancelButtonText: "Cancel",
                      saveButtonText: "Save",
                      saveButtonPressed: (dynamic val) {
                        // ignore: avoid_print
                        print("hello i am clicked with $val");
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 100.h - 110,
                        // width: 100.w,
                        padding: EdgeInsets.only(
                            top: 4.sp, left: 3.50.sp, right: 4.sp),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: ccNutural550,
                              width: 1,
                            ),
                            top: BorderSide(
                              color: ccNutural550,
                              width: 1,
                            ),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              csvertSpace2,
                              SizedBox(
                                height: 10.98.sp,
                                width: 100.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AddMenuTabsWidget(
                                      goToPageRequested: (val) =>
                                          model.goToPage(val),
                                      selectedTabName: 'custom-view',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                  height: 100.h - 200,
                                  width: 100.w,
                                  child: SingleChildScrollView(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        csvertSpace8,
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 69.sp,
                                              child: Text(
                                                "Alphabetical Order:",
                                                style: GoogleFonts.sen(
                                                  fontSize: 4.395.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: ccDanger300,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  child: FlutterSwitch(
                                                      width: 9.67.sp,
                                                      height: 5.274.sp,
                                                      activeColor: ccSuccess700,
                                                      onToggle: (bool value) {},
                                                      value: true),
                                                ),
                                                csvertSpace4,
                                                Column(
                                                  children: [
                                                    Text(
                                                      "This feature sorts the items and sections",
                                                      style: GoogleFonts.sen(
                                                        fontSize: 3.516.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ccNutural550,
                                                      ),
                                                    ),
                                                    csvertSpace1,
                                                    Text(
                                                      "under the section in alphabetical order.",
                                                      style: GoogleFonts.sen(
                                                        fontSize: 3.516.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ccNutural550,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        csvertSpace8,
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 69.sp,
                                              child: Text(
                                                "Number of Columns",
                                                style: GoogleFonts.sen(
                                                  fontSize: 4.395.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: ccDanger300,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  color: ccBakground,
                                                  child: ToggleButtons(
                                                    isSelected: isSelected,
                                                    selectedColor: ccNutural550,
                                                    color: ccNutural550,
                                                    fillColor: ccBakground,
                                                    selectedBorderColor:
                                                        ccDanger300,
                                                    borderWidth: 0.5,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1.758.sp),
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 12),
                                                        child: Text(
                                                          '1',
                                                          style:
                                                              GoogleFonts.sen(
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 12),
                                                        child: Text(
                                                          '2',
                                                          style:
                                                              GoogleFonts.sen(
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 12),
                                                        child: Text(
                                                          '3',
                                                          style:
                                                              GoogleFonts.sen(
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 12),
                                                        child: Text(
                                                          '4',
                                                          style:
                                                              GoogleFonts.sen(
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                    onPressed: (int newIndex) {
                                                      // setState(() {
                                                      //   for (int index = 0;
                                                      //       index <
                                                      //           isSelected
                                                      //               .length;
                                                      //       index++) {
                                                      //     if (index ==
                                                      //         newIndex) {
                                                      //       isSelected[
                                                      //           index] = true;
                                                      //     } else {
                                                      //       isSelected[
                                                      //               index] =
                                                      //           false;
                                                      //     }
                                                      //   }
                                                      // });
                                                    },
                                                  ),
                                                ),
                                                csvertSpace4,
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "You can select how many grids will show",
                                                      style: GoogleFonts.sen(
                                                        fontSize: 3.516.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ccNutural550,
                                                      ),
                                                    ),
                                                    csvertSpace1,
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'in the menu. ',
                                                          style:
                                                              GoogleFonts.sen(
                                                            fontSize: 3.516.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: ccNutural550,
                                                          ),
                                                        ),
                                                        TextButton(
                                                          style: ButtonStyle(
                                                              shape: MaterialStateProperty.all<
                                                                      RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(1.098
                                                                              .sp),
                                                                      side: BorderSide(
                                                                          color:
                                                                              ccDanger300)))),
                                                          onPressed: () {},
                                                          child: Text(
                                                              'Tablet Menu',
                                                              style: GoogleFonts
                                                                  .sen(
                                                                fontSize:
                                                                    3.516.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color:
                                                                    ccDanger300,
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        csvertSpace8,
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 69.sp,
                                              child: Text(
                                                "Grid Title Position:",
                                                style: GoogleFonts.sen(
                                                  fontSize: 4.395.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: ccDanger300,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  color: ccBakground,
                                                  child: ToggleButtons(
                                                    isSelected: isSorted,
                                                    selectedColor: ccNutural550,
                                                    color: ccNutural550,
                                                    fillColor: ccBakground,
                                                    selectedBorderColor:
                                                        ccDanger300,
                                                    borderWidth: 0.5,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1.758.sp),
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 12),
                                                        child: Text(
                                                          'Top',
                                                          style:
                                                              GoogleFonts.sen(
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 12),
                                                        child: Text(
                                                          'Bottom',
                                                          style:
                                                              GoogleFonts.sen(
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                    onPressed: (int newIndex) {
                                                      // setState(() {
                                                      //   for (int index = 0;
                                                      //       index <
                                                      //           isSorted
                                                      //               .length;
                                                      //       index++) {
                                                      //     if (index ==
                                                      //         newIndex) {
                                                      //       isSorted[index] =
                                                      //           true;
                                                      //     } else {
                                                      //       isSorted[index] =
                                                      //           false;
                                                      //     }
                                                      //   }
                                                      // });
                                                    },
                                                  ),
                                                ),
                                                csvertSpace4,
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "You can change the title position of inner",
                                                      style: GoogleFonts.sen(
                                                        fontSize: 3.516.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ccNutural550,
                                                      ),
                                                    ),
                                                    csvertSpace1,
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'sections / inner items ',
                                                          style:
                                                              GoogleFonts.sen(
                                                            fontSize: 3.516.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: ccNutural550,
                                                          ),
                                                        ),
                                                        TextButton(
                                                          style: ButtonStyle(
                                                              shape: MaterialStateProperty.all<
                                                                      RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(1.098
                                                                              .sp),
                                                                      side: BorderSide(
                                                                          color:
                                                                              ccDanger300)))),
                                                          onPressed: () {},
                                                          child: Text(
                                                              'Tablet Menu',
                                                              style: GoogleFonts
                                                                  .sen(
                                                                fontSize:
                                                                    3.516.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color:
                                                                    ccDanger300,
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ])))
                            ],
                          ),
                        ),
                      ),
                    );
                    isPopOpen == true;
                  },
                ),
              ),
              SizedBox(
                  height: 5.49.sp,
                  // width: 20.sp,
                  // color: Colors.red,
                  child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            // width: 12.sp,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 0.5,
                              color: selectedTabName == "visibility"
                                  ? ccDanger300
                                  : ccNeutral0,
                            ))),
                            child: Text(
                              "Visibility",
                              style: selectedTabName == "visibility"
                                  ? GoogleFonts.sen(
                                      color: ccDanger300,
                                      fontSize: 4.395.sp,
                                      fontWeight: FontWeight.w400,
                                    )
                                  : GoogleFonts.sen(
                                      color: ccNutural550,
                                      fontSize: 4.395.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 7.sp)),
                        ],
                      ),
                      onTap: () {
                        showSideDialogue(
                          context: context,
                          title: "Add new Menu",
                          cancelButtonText: "Cancel",
                          saveButtonText: "Save",
                          saveButtonPressed: (dynamic val) {
                            // ignore: avoid_print
                            print("hello i am clicked with $val");
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 100.h - 110,
                            // width: 100.w,
                            padding: EdgeInsets.only(
                                top: 4.sp, left: 3.50.sp, right: 4.sp),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: ccNutural550,
                                  width: 1,
                                ),
                                top: BorderSide(
                                  color: ccNutural550,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  csvertSpace2,
                                  SizedBox(
                                    height: 10.98.sp,
                                    width: 100.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        AddMenuTabsWidget(
                                          goToPageRequested: (val) =>
                                              model.goToPage(val),
                                          selectedTabName: 'visibility',
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height: 100.h - 200,
                                      width: 100.w,
                                      child: SingleChildScrollView(
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            csvertSpace8,
                                            Text(
                                              "The menu will be visible on the products selected below.",
                                              style: GoogleFonts.sen(
                                                fontSize: 4.395.sp,
                                                fontWeight: FontWeight.w400,
                                                color: ccDanger300,
                                              ),
                                            ),
                                            csvertSpace8,
                                            CheckBoxCircleWidget(
                                              text: 'Tablet Menu',
                                              check: true,
                                            ),
                                            CheckBoxCircleWidget(
                                              text: 'QR Code/Dinein',
                                              check: true,
                                            ),
                                            CheckBoxCircleWidget(
                                              text: 'Take away',
                                              check: true,
                                            ),
                                          ])))
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
              SizedBox(
                height: 5.49.sp,
                // color: Colors.red,
                child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          // width: 12.sp,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            width: 0.5,
                            color: selectedTabName == "availibity"
                                ? ccDanger300
                                : ccNeutral0,
                          ))),
                          child: Text(
                            "Availability",
                            style: selectedTabName == "availibity"
                                ? GoogleFonts.sen(
                                    color: ccDanger300,
                                    fontSize: 4.395.sp,
                                    fontWeight: FontWeight.w400,
                                  )
                                : GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 4.395.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 7.sp)),
                      ],
                    ),
                    onTap: () {
                      showSideDialogue(
                        context: context,
                        title: "Add new Menu",
                        cancelButtonText: "Cancel",
                        saveButtonText: "Save",
                        saveButtonPressed: (dynamic val) {
                          // ignore: avoid_print
                          print("hello i am clicked with $val");
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 100.h - 110,
                          // width: 100.w,
                          padding: EdgeInsets.only(
                              top: 4.sp, left: 3.50.sp, right: 4.sp),
                          decoration: BoxDecoration(
                            // color: Colors.blue,
                            border: Border(
                              bottom: BorderSide(
                                color: ccNutural550,
                                width: 1,
                              ),
                              top: BorderSide(
                                color: ccNutural550,
                                width: 1,
                              ),
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                csvertSpace2,
                                SizedBox(
                                  height: 10.98.sp,
                                  width: 100.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      AddMenuTabsWidget(
                                        goToPageRequested: (val) =>
                                            model.goToPage(val),
                                        selectedTabName: 'availibity',
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 100.h - 200,
                                  width: 100.w,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FillCheckBoxCircleWidget(
                                          check: true,
                                          text: 'Always',
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 3.5.sp),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              cshorzSpace5,
                                              cshorzSpace4,
                                              Text(
                                                "The menu will always be shown",
                                                style: GoogleFonts.sen(
                                                  fontSize: 3.516.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: ccNutural550,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        FillCheckBoxCircleWidget(
                                          check: false,
                                          text: 'Specific Dates',
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 3.5.sp, left: 9.sp),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "The menu will be visible between specific dates.",
                                                style: GoogleFonts.sen(
                                                  fontSize: 3.516.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: ccNutural550,
                                                ),
                                              ),
                                              csvertSpace1,
                                              Text(
                                                "Current Time: Wednesday, June 5th 2022, 02:54:35",
                                                style: GoogleFonts.sen(
                                                  fontSize: 3.516.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: ccDanger300,
                                                ),
                                              ),
                                              csvertSpace4,
                                              DateWidget(),
                                              csvertSpace4,
                                              CheckBoxTextWidget(
                                                check: false,
                                                text: 'All day',
                                              ),
                                              TimeWidget(),
                                            ],
                                          ),
                                        ),
                                        FillCheckBoxCircleWidget(
                                          check: false,
                                          text: 'Periodic',
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 3.5.sp, left: 9.sp),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 52.967.sp,
                                                    child:
                                                        FillCheckBoxCircleWidget(
                                                      check: false,
                                                      text: 'Sunday',
                                                    ),
                                                  ),
                                                  TimeWidget(),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 52.967.sp,
                                                    child:
                                                        FillCheckBoxCircleWidget(
                                                      check: false,
                                                      text: 'Monday',
                                                    ),
                                                  ),
                                                  TimeWidget(),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 52.967.sp,
                                                    child:
                                                        FillCheckBoxCircleWidget(
                                                      check: false,
                                                      text: 'Tuesday',
                                                    ),
                                                  ),
                                                  TimeWidget(),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 52.967.sp,
                                                    child:
                                                        FillCheckBoxCircleWidget(
                                                      check: false,
                                                      text: 'Wednesday',
                                                    ),
                                                  ),
                                                  TimeWidget(),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 52.967.sp,
                                                    child:
                                                        FillCheckBoxCircleWidget(
                                                      check: false,
                                                      text: 'Thursday',
                                                    ),
                                                  ),
                                                  TimeWidget(),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 52.967.sp,
                                                    child:
                                                        FillCheckBoxCircleWidget(
                                                      check: false,
                                                      text: 'Friday',
                                                    ),
                                                  ),
                                                  TimeWidget(),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 52.967.sp,
                                                    child:
                                                        FillCheckBoxCircleWidget(
                                                      check: false,
                                                      text: 'Saturday',
                                                    ),
                                                  ),
                                                  TimeWidget(),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // csvertSpace8,
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
