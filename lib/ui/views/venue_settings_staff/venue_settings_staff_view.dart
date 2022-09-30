import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';
import '../../widgets/dumb_widgets/add_text_feild.widget.dart';
import '../../widgets/dumb_widgets/footer.widget.dart';
import '../../widgets/dumb_widgets/page_title.widget.dart';
import '../../widgets/dumb_widgets/show_side_dialogue.widget.dart';
import '../../widgets/dumb_widgets/staff_list.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import '../../widgets/dumb_widgets/venu-settings/venu_settings_tabs.widget.dart';
import '../../widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import './venue_settings_staff_view_model.dart';

class VenueSettingsStafView extends StatelessWidget {
  const VenueSettingsStafView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Active';
    return ViewModelBuilder<VenueSettingsStaffViewModel>.reactive(
      viewModelBuilder: () => VenueSettingsStaffViewModel(),
      onModelReady: (VenueSettingsStaffViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        VenueSettingsStaffViewModel model,
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
                                  selectedTabName: 'staff',
                                ),
                                // order tables
                                Container(
                                  color: ccNeutral0,
                                  // height: 153.846.sp,
                                  child: Container(
                                    // height: 90.sp,
                                    width: 100.w,
                                    margin: EdgeInsets.all(3.29.sp),
                                    // padding: const EdgeInsets.all(5),
                                    // color: ccNeutral0,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(3.29.sp),
                                      border: Border.all(color: ccNatural250),
                                    ),

                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 12.30.sp,
                                          width: double.infinity,
                                          child: SizedBox(
                                            height: 10.98.sp,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    right: 4.5.sp,
                                                  ),
                                                  width: 63.131.sp,
                                                  height: 7.47.sp,
                                                  child: TextField(
                                                    textAlign: TextAlign.left,
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    1.098.sp),
                                                      ),
                                                      contentPadding:
                                                          EdgeInsets.all(
                                                              2.197.sp),
                                                      filled: true,
                                                      hintStyle:
                                                          const TextStyle(
                                                        color: ccNutural550,
                                                      ),
                                                      hintText:
                                                          "Search staff member",
                                                      fillColor: ccNeutral0,
                                                      suffixIcon: Container(
                                                        padding: EdgeInsets.all(
                                                            2.sp),
                                                        child: SvgPicture.asset(
                                                          "../assets/imges/search.svg",
                                                          width: 3.736.sp,
                                                          height: 3.736.sp,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    right: 4.5.sp,
                                                  ),
                                                  height: 7.47.sp,
                                                  child: ElevatedButton.icon(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          ccDanger300,
                                                    ),
                                                    onPressed: () =>
                                                        showSideDialogue(
                                                      context: context,
                                                      title: "Add Staff Member",
                                                      cancelButtonText:
                                                          "Cancel",
                                                      saveButtonText: "Save",
                                                      saveButtonPressed:
                                                          (dynamic val) {
                                                        // ignore: avoid_print
                                                        print(
                                                            "hello i am clicked with $val");
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        height: 100.h - 110,
                                                        padding: EdgeInsets.all(
                                                          4.sp,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color:
                                                                  ccNutural550,
                                                              width: 1,
                                                            ),
                                                            top: BorderSide(
                                                              color:
                                                                  ccNutural550,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              csvertSpace8,
                                                              AddTextFeildWidget(
                                                                hint: 'ID',
                                                                lebel: 'ID *',
                                                                // value: 'ID',
                                                              ),
                                                              AddTextFeildWidget(
                                                                hint:
                                                                    'First Name',
                                                                lebel:
                                                                    'First Name *',
                                                                // value:
                                                                //     'First Name',
                                                              ),
                                                              AddTextFeildWidget(
                                                                hint:
                                                                    'Last Name',
                                                                lebel:
                                                                    'Last Name *',
                                                                // value:
                                                                //     'Last Name',
                                                              ),
                                                              SizedBox(
                                                                width: 95.w,
                                                                // height:
                                                                //     8.791.sp,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    SizedBox(
                                                                      width: double
                                                                          .infinity,
                                                                      child:
                                                                          Text(
                                                                        "Pincode",
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
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(bottom: 3.95.sp)),
                                                                    SizedBox(
                                                                      height:
                                                                          8.791
                                                                              .sp,
                                                                      child:
                                                                          TextField(
                                                                        style: const TextStyle(
                                                                            color:
                                                                                ccNutural550),
                                                                        controller:
                                                                            TextEditingController(text: "Pincode"),
                                                                        decoration:
                                                                            InputDecoration(
                                                                          // fillColor: Colors.white,
                                                                          // filled: true,
                                                                          contentPadding:
                                                                              EdgeInsets.all(2.63.sp),
                                                                          // fillColor:
                                                                          //     ccBakground,
                                                                          border:
                                                                              OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(1.758.sp),
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: ccPrimary300,
                                                                              width: 1,
                                                                            ),
                                                                          ),
                                                                          suffixIcon: Container(
                                                                              // color:
                                                                              //     Colors.amber,
                                                                              decoration:
                                                                                  // ignore: prefer_const_constructors
                                                                                  BoxDecoration(
                                                                                borderRadius: BorderRadius.only(
                                                                                  topRight: Radius.circular(1.758.sp),
                                                                                  bottomRight: Radius.circular(1.758.sp),
                                                                                ),
                                                                                border: Border.all(
                                                                                  color: ccPrimary300,
                                                                                  width: 1,
                                                                                ),
                                                                              ),
                                                                              clipBehavior: Clip.antiAlias,
                                                                              // color:
                                                                              //     ccNetural350,
                                                                              height: 8.791.sp,
                                                                              width: 28.13.sp,
                                                                              margin: EdgeInsets.only(left: 3.296.sp),
                                                                              // color:
                                                                              //     ccNeutral0, // background color
                                                                              child: Container(
                                                                                color: ccNetural350,
                                                                                margin: EdgeInsets.only(left: 1),
                                                                                child: Center(
                                                                                  child: Text(
                                                                                    "Generate",
                                                                                    style: GoogleFonts.sen(
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                      color: ccNutural550,
                                                                                    ),
                                                                                    textAlign: TextAlign.center,
                                                                                  ),
                                                                                ),
                                                                              )
                                                                              // icon
                                                                              ),
                                                                          hintText:
                                                                              "Pincode",
                                                                          hintStyle:
                                                                              const TextStyle(
                                                                            color:
                                                                                ccNutural550,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(bottom: 1.95.sp)),
                                                                  ],
                                                                ),
                                                              ),
                                                              AddTextFeildWidget(
                                                                hint:
                                                                    'Check Name',
                                                                lebel:
                                                                    'Check Name *',
                                                                // value:
                                                                //     'Check Name',
                                                              ),
                                                              SizedBox(
                                                                width: 95.w,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      "Status",
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
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(bottom: 3.95.sp)),
                                                                    Container(
                                                                      width:
                                                                          80.w,
                                                                      height:
                                                                          9.791
                                                                              .sp,
                                                                      padding: EdgeInsets.only(
                                                                          left: 4.153
                                                                              .sp,
                                                                          right:
                                                                              1.318.sp),
                                                                      decoration:
                                                                          ShapeDecoration(
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          side:
                                                                              const BorderSide(
                                                                            width:
                                                                                1,
                                                                            style:
                                                                                BorderStyle.solid,
                                                                            color:
                                                                                ccPrimary300,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.all(Radius.circular(1.758.sp)),
                                                                        ),
                                                                      ),
                                                                      child: DropdownButton<
                                                                          String>(
                                                                        value:
                                                                            dropdownValue,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down,
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
                                                                            (String?
                                                                                newValue) {
                                                                          // setState(() {
                                                                          //   dropdownValue = newValue!;
                                                                          // });
                                                                        },
                                                                        items: <
                                                                            String>[
                                                                          'Active',
                                                                          'Deactive',
                                                                        ].map<
                                                                            DropdownMenuItem<
                                                                                String>>((String
                                                                            value) {
                                                                          return DropdownMenuItem<
                                                                              String>(
                                                                            value:
                                                                                value,
                                                                            child:
                                                                                Text(value),
                                                                          );
                                                                        }).toList(),
                                                                        dropdownColor:
                                                                            ccNeutral0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(bottom: 1.95.sp)),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    icon: SvgPicture.asset(
                                                      "../assets/imges/add-new-white.svg",
                                                      width: 4.178.sp,
                                                      height: 3.076.sp,
                                                    ),
                                                    label: Text(
                                                      'Add new Staff',
                                                      style: GoogleFonts.sen(
                                                        color: ccNeutral0,
                                                        fontSize: 4.395.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ), // <-- Text
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: Column(
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
                                                  Container(
                                                    height: 14.945.sp,
                                                    color: ccDanger100,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        cshorzSpace4,
                                                        Container(
                                                          width: 47.69.sp,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text("Name",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    4.395.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              )),
                                                        ),
                                                        Container(
                                                          width: 61.31.sp,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                              "Check Name",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    4.395.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              )),
                                                        ),
                                                        Container(
                                                          // height: 50,
                                                          width: 51.86.sp,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text("Pincode",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    4.395.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              )),
                                                        ),
                                                        Container(
                                                          // height: 50,
                                                          width: 48.13.sp,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text("Status",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    4.395.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              )),
                                                        ),
                                                        Container(
                                                          // height: 50,
                                                          // width:
                                                          //     52.307.sp,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text("Actions",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    4.395.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  Container(
                                                    height: 100.h - 380,
                                                    padding: EdgeInsets.only(
                                                        bottom: 3.956.sp),
                                                    child: ListView.builder(
                                                      itemCount: 20,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return StaffListWidget(
                                                          cName: 'SdDutt',
                                                          name: 'Sunny Dutt',
                                                          pCode: '143001',
                                                          status: 'Active',
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  // if no data found
                                                  // NoTableWidget(),
                                                  // empty box with folder
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
