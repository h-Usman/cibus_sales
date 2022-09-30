import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/items_modifire_options.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/items_price_option.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/prefix_text_feild.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/show_side_dialogue.widget.dart';
import 'package:flutter_svg/svg.dart';
// ignore: unused_import
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/cibus.theme.helpers.dart';
// ignore: unused_import
import '../checkbox_cirlce.widget.dart';

// ignore: must_be_immutable
class ItemsTabsWidget extends StatelessWidget {
  final String selectedTabName;
  final Function goToPageRequested;

  ItemsTabsWidget({
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
          height: 6.98.sp,
          // width: 93.40.sp,
          // color: Colors.blue,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                            color: selectedTabName == "ginfo"
                                ? ccDanger300
                                : ccNeutral0,
                          ))),
                          child: Text(
                            "General Information",
                            style: selectedTabName == "ginfo"
                                ? GoogleFonts.sen(
                                    color: ccDanger300,
                                    fontSize: 4.sp,
                                    fontWeight: FontWeight.w400,
                                  )
                                : GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 4.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 5.5.sp)),
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
                            color: selectedTabName == "price"
                                ? ccDanger300
                                : ccNeutral0,
                          ))),
                          child: Text(
                            "Price Options",
                            style: selectedTabName == "price"
                                ? GoogleFonts.sen(
                                    color: ccDanger300,
                                    fontSize: 4.sp,
                                    fontWeight: FontWeight.w400,
                                  )
                                : GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 4.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 5.5.sp)),
                      ],
                    ),
                    onTap: () {
                      if (isPopOpen == true) {
                        Navigator.pop(context);
                      }

                      showSideDialogue(
                        context: context,
                        title: "Add Item",
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
                                SizedBox(
                                  height: 10.98.sp,
                                  width: 100.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ItemsTabsWidget(
                                        goToPageRequested: (val) =>
                                            model.goToPage(val),
                                        selectedTabName: 'price',
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
                                        csvertSpace4,
                                        Container(
                                          padding:
                                              EdgeInsets.only(bottom: 6.sp),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                            width: 0.5,
                                            color: ccNutural550,
                                          ))),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                                    "Items can have price options according to their sizes, servings etc.",
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
                                                        'For more check ',
                                                        style: GoogleFonts.sen(
                                                          fontSize: 3.516.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: ccNutural550,
                                                        ),
                                                      ),
                                                      InkWell(
                                                          child: Text(
                                                            'Price Options',
                                                            style:
                                                                GoogleFonts.sen(
                                                              fontSize:
                                                                  3.516.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  ccDanger300,
                                                            ),
                                                          ),
                                                          onTap: () {}),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 55.sp,
                                          width: 200.sp,
                                          child: ListView.builder(
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return ItemsPricesWidget();
                                            },
                                          ),
                                        ),
                                        // end scrool
                                        csvertSpace2,
                                        SizedBox(
                                          width: 50.sp,
                                          child: InkWell(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Add Price Option",
                                                  style: GoogleFonts.sen(
                                                    color: ccDanger300,
                                                    fontSize: 4.395.sp,
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 3.29.sp)),
                                                SvgPicture.asset(
                                                  "../assets/imges/plus.svg",
                                                  // height: 20.sp,
                                                  width: 3.sp,
                                                  height: 3.sp,
                                                ),
                                              ],
                                            ),
                                            onTap: () {
                                              // model.goToPage('');
                                            },
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
                                color: selectedTabName == "modifier-options"
                                    ? ccDanger300
                                    : ccNeutral0,
                              ))),
                              child: Text(
                                "Modifier Options",
                                style: selectedTabName == "modifier-options"
                                    ? GoogleFonts.sen(
                                        color: ccDanger300,
                                        fontSize: 4.sp,
                                        fontWeight: FontWeight.w400,
                                      )
                                    : GoogleFonts.sen(
                                        color: ccNutural550,
                                        fontSize: 4.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 5.5.sp)),
                          ],
                        ),
                        onTap: () {
                          showSideDialogue(
                            context: context,
                            title: "Add Item",
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
                                    SizedBox(
                                      height: 10.98.sp,
                                      width: 100.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ItemsTabsWidget(
                                            goToPageRequested: (val) =>
                                                model.goToPage(val),
                                            selectedTabName: 'modifier-options',
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
                                            csvertSpace4,
                                            Container(
                                              padding:
                                                  EdgeInsets.only(bottom: 6.sp),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                width: 0.5,
                                                color: ccNutural550,
                                              ))),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Items can have modifiers according to their sizes, servings etc.",
                                                        style: GoogleFonts.sen(
                                                          fontSize: 3.516.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: ccNutural550,
                                                        ),
                                                      ),
                                                      csvertSpace1,
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 55.sp,
                                              width: 200.sp,
                                              child: ListView.builder(
                                                itemCount: 2,
                                                itemBuilder: (context, index) {
                                                  return ItemsModifireWidget();
                                                },
                                              ),
                                            ),
                                            // end scrool
                                            csvertSpace2,
                                            SizedBox(
                                              width: 50.sp,
                                              child: InkWell(
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Add Modifier Option",
                                                      style: GoogleFonts.sen(
                                                        color: ccDanger300,
                                                        fontSize: 4.395.sp,
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 3.29.sp)),
                                                    SvgPicture.asset(
                                                      "../assets/imges/plus.svg",
                                                      // height: 20.sp,
                                                      width: 3.sp,
                                                      height: 3.sp,
                                                    ),
                                                  ],
                                                ),
                                                onTap: () {
                                                  // model.goToPage('');
                                                },
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
                              color: selectedTabName == "nutrition-info"
                                  ? ccDanger300
                                  : ccNeutral0,
                            ))),
                            child: Text(
                              "Nutrition Info",
                              style: selectedTabName == "nutrition-info"
                                  ? GoogleFonts.sen(
                                      color: ccDanger300,
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w400,
                                    )
                                  : GoogleFonts.sen(
                                      color: ccNutural550,
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                            ),
                          ),
                          // Padding(padding: EdgeInsets.only(right: 5.sp)),
                        ],
                      ),
                      onTap: () {
                        showSideDialogue(
                          context: context,
                          title: "Add Item",
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
                                  SizedBox(
                                    height: 10.98.sp,
                                    width: 100.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ItemsTabsWidget(
                                          goToPageRequested: (val) =>
                                              model.goToPage(val),
                                          selectedTabName: 'nutrition-info',
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
                                          csvertSpace4,
                                          Container(
                                            padding:
                                                EdgeInsets.only(bottom: 6.sp),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Display the Nutrition Info on the menu ',
                                                  style: GoogleFonts.sen(
                                                    fontSize: 4.3956.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: ccDanger300,
                                                  ),
                                                ),
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
                                            padding:
                                                EdgeInsets.only(bottom: 6.sp),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Serving Size',
                                                  style: GoogleFonts.sen(
                                                    fontSize: 4.3956.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: ccDanger300,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 105.sp,
                                                  height: 8.791.sp,
                                                  child: Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        // horizontal: 5.054.sp,
                                                        horizontal: 0,
                                                        vertical: 0),
                                                    child: TextField(
                                                      style: TextStyle(
                                                          color: ccNutural550,
                                                          fontSize: 3.956.sp),
                                                      // controller: TextEditingController(
                                                      //   text: value,
                                                      // ),
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                left: 2.63.sp),
                                                        border:
                                                            OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(1.098
                                                                            .sp),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color:
                                                                      ccPrimary300,
                                                                  width:
                                                                      0.2197.sp,
                                                                )),
                                                        // hintText: 'Dairy',
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
                                                EdgeInsets.only(bottom: 6.sp),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text("Calories",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          )),
                                                      cshorzSpace2,
                                                      PrefixTextFeildWidget(
                                                        hint: '0',
                                                        preVal: 'cal',
                                                      ),
                                                    ]),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text("Calories From Fat",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          )),
                                                      cshorzSpace2,
                                                      PrefixTextFeildWidget(
                                                        hint: '0',
                                                        preVal: 'cal',
                                                      ),
                                                    ]),
                                                // SizedBox(
                                                //   width: 105.sp,
                                                //   height: 8.791.sp,
                                                //   child: Padding(
                                                //     padding: EdgeInsets.symmetric(
                                                //         // horizontal: 5.054.sp,
                                                //         horizontal: 0,
                                                //         vertical: 0),
                                                //     child: TextField(
                                                //       style: TextStyle(
                                                //           color: ccNutural550,
                                                //           fontSize: 3.956.sp),
                                                //       // controller: TextEditingController(
                                                //       //   text: value,
                                                //       // ),
                                                //       decoration: InputDecoration(
                                                //         contentPadding:
                                                //             EdgeInsets.only(
                                                //                 left: 2.63.sp),
                                                //         border:
                                                //             OutlineInputBorder(
                                                //                 borderRadius:
                                                //                     BorderRadius
                                                //                         .circular(
                                                //                             1.098
                                                //                                 .sp),
                                                //                 borderSide:
                                                //                     BorderSide(
                                                //                   color:
                                                //                       ccPrimary300,
                                                //                   width:
                                                //                       0.2197.sp,
                                                //                 )),
                                                //         // hintText: 'Dairy',
                                                //         hintStyle: TextStyle(
                                                //           color: ccPrimary300,
                                                //           fontSize: 3.956.sp,
                                                //         ),
                                                //       ),
                                                //     ),
                                                //   ),
                                                // ),
                                              ],
                                            ),
                                          ),
                                          csvertSpace4,
                                          Container(
                                            padding:
                                                EdgeInsets.only(bottom: 6.sp),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '% Daily Value*',
                                                  style: GoogleFonts.sen(
                                                    fontSize: 4.3956.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: ccDanger300,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          csvertSpace4,
                                          Container(
                                            padding:
                                                EdgeInsets.only(bottom: 6.sp),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 55.sp,
                                                      child: Text("Calories",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          )),
                                                    ),
                                                    Row(
                                                      children: [
                                                        cshorzSpace2,
                                                        PrefixTextFeildWidget(
                                                          hint: '0',
                                                          preVal: 'gm',
                                                        ),
                                                        cshorzSpace4,
                                                        PrefixTextFeildWidget(
                                                          hint: '0',
                                                          preVal: '%',
                                                        ),
                                                        cshorzSpace2,
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                csvertSpace4,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    cshorzSpace4,
                                                    SizedBox(
                                                      width: 55.sp,
                                                      child: Text(
                                                          "Saturated Fat",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          )),
                                                    ),
                                                    cshorzSpace2,
                                                    PrefixTextFeildWidget(
                                                      hint: '0',
                                                      preVal: 'gm',
                                                    ),
                                                    cshorzSpace4,
                                                    PrefixTextFeildWidget(
                                                      hint: '0',
                                                      preVal: '%',
                                                    ),
                                                  ],
                                                ),
                                                csvertSpace4,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    cshorzSpace4,
                                                    SizedBox(
                                                      width: 55.sp,
                                                      child: Text("Trans Fat",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          )),
                                                    ),
                                                    cshorzSpace2,
                                                    PrefixTextFeildWidget(
                                                      hint: '0',
                                                      preVal: 'gm',
                                                    ),
                                                    cshorzSpace4,
                                                    PrefixTextFeildWidget(
                                                      hint: '0',
                                                      preVal: '%',
                                                    ),
                                                  ],
                                                ),
                                                csvertSpace4,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 55.sp,
                                                      child: Text("Cholesterol",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          )),
                                                    ),
                                                    Row(
                                                      children: [
                                                        cshorzSpace2,
                                                        PrefixTextFeildWidget(
                                                          hint: '0',
                                                          preVal: 'mg',
                                                        ),
                                                        cshorzSpace4,
                                                        PrefixTextFeildWidget(
                                                          hint: '0',
                                                          preVal: '%',
                                                        ),
                                                        cshorzSpace2,
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                csvertSpace4,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 55.sp,
                                                      child: Text("Sodium",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          )),
                                                    ),
                                                    Row(
                                                      children: [
                                                        cshorzSpace2,
                                                        PrefixTextFeildWidget(
                                                          hint: '0',
                                                          preVal: 'mg',
                                                        ),
                                                        cshorzSpace4,
                                                        PrefixTextFeildWidget(
                                                          hint: '0',
                                                          preVal: '%',
                                                        ),
                                                        cshorzSpace2,
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                csvertSpace4,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 55.sp,
                                                      child: Text("Total Carbs",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          )),
                                                    ),
                                                    Row(
                                                      children: [
                                                        cshorzSpace2,
                                                        PrefixTextFeildWidget(
                                                          hint: '0',
                                                          preVal: 'gm',
                                                        ),
                                                        cshorzSpace4,
                                                        PrefixTextFeildWidget(
                                                          hint: '0',
                                                          preVal: '%',
                                                        ),
                                                        cshorzSpace2,
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                csvertSpace4,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    cshorzSpace4,
                                                    SizedBox(
                                                      width: 55.sp,
                                                      child: Text(
                                                          "Dietary Fiber",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          )),
                                                    ),
                                                    cshorzSpace2,
                                                    PrefixTextFeildWidget(
                                                      hint: '0',
                                                      preVal: 'gm',
                                                    ),
                                                    cshorzSpace4,
                                                    PrefixTextFeildWidget(
                                                      hint: '0',
                                                      preVal: '%',
                                                    ),
                                                  ],
                                                ),
                                                csvertSpace4,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    cshorzSpace4,
                                                    SizedBox(
                                                      width: 55.sp,
                                                      child: Text("Sugars",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          )),
                                                    ),
                                                    cshorzSpace2,
                                                    PrefixTextFeildWidget(
                                                      hint: '0',
                                                      preVal: 'gm',
                                                    ),
                                                    cshorzSpace4,
                                                    PrefixTextFeildWidget(
                                                      hint: '0',
                                                      preVal: '%',
                                                    ),
                                                  ],
                                                ),
                                                csvertSpace4,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 55.sp,
                                                      child: Text("Protein",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          )),
                                                    ),
                                                    Row(
                                                      children: [
                                                        cshorzSpace2,
                                                        PrefixTextFeildWidget(
                                                          hint: '0',
                                                          preVal: 'gm',
                                                        ),
                                                        cshorzSpace4,
                                                        PrefixTextFeildWidget(
                                                          hint: '0',
                                                          preVal: '%',
                                                        ),
                                                        cshorzSpace2,
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          csvertSpace4,
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: 59.sp,
                                                    child: Text("Vitamin A",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 4.395.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                  ),
                                                  cshorzSpace2,
                                                  PrefixTextFeildWidget(
                                                    hint: '0',
                                                    preVal: '%',
                                                  ),
                                                ],
                                              ),
                                              csvertSpace4,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: 59.sp,
                                                    child: Text("Vitamin C",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 4.395.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                  ),
                                                  cshorzSpace2,
                                                  PrefixTextFeildWidget(
                                                    hint: '0',
                                                    preVal: '%',
                                                  ),
                                                ],
                                              ),
                                              csvertSpace4,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: 59.sp,
                                                    child: Text("Calcium",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 4.395.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                  ),
                                                  cshorzSpace2,
                                                  PrefixTextFeildWidget(
                                                    hint: '0',
                                                    preVal: '%',
                                                  ),
                                                ],
                                              ),
                                              csvertSpace4,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: 59.sp,
                                                    child: Text("Iron",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 4.395.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        )),
                                                  ),
                                                  cshorzSpace2,
                                                  PrefixTextFeildWidget(
                                                    hint: '0',
                                                    preVal: '%',
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          csvertSpace4,
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
        ),
      ],
    );
  }
}
