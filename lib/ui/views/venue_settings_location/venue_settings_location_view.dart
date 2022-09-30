import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';
import '../../widgets/dumb_widgets/footer.widget.dart';
import '../../widgets/dumb_widgets/page_title.widget.dart';
import '../../widgets/dumb_widgets/texeFeild_lable.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import '../../widgets/dumb_widgets/venu-settings/venu_settings_tabs.widget.dart';
import '../../widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import './venue_settings_location_view_model.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class VenueSettingsLocationView extends StatelessWidget {
  const VenueSettingsLocationView({Key? key}) : super(key: key);
  get goToModalRequested => null;
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Malaysia';
    return ViewModelBuilder<VenueSettingsLocationViewModel>.reactive(
      viewModelBuilder: () => VenueSettingsLocationViewModel(),
      onModelReady: (VenueSettingsLocationViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        VenueSettingsLocationViewModel model,
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
                    child: Stack(
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget>[
                                  PageTitlewWidget(
                                    titleName: 'Venue Settings',
                                  ),
                                ],
                              ),
                            ),
                            VenuSettingsTabsWidget(
                              goToPageRequested: (val) => model.goToPage(val),
                              selectedTabName: 'location-settings',
                            ),
                            // order tables
                            Container(
                              height: 100.h - 225,
                              color: ccNeutral0,
                              child: SingleChildScrollView(
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

                                    // color: Colors.transparent,
                                    // border: const Border(
                                    //   left: BorderSide(
                                    //     color: Colors.green,
                                    //     width: 3,
                                    //   ),
                                    // ),

                                    // boxShadow: const [
                                    //   BoxShadow(
                                    //       color:
                                    //           Color.fromRGBO(133, 133, 133, 0.15),
                                    //       spreadRadius: 4),
                                    // ],
                                  ),
                                  // decoration: BoxDecoration(
                                  // color: Colors.blueAccent,
                                  child:
                                      // Column(
                                      //   children: [
                                      Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 3.sp)),
                                            const TextFeildWidget(
                                              hint: 'Enter Venue Name',
                                              lebel: 'Venue Name',
                                              // value: 'Chef n Stuff',
                                            ),
                                            SizedBox(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 5.912.sp),
                                                    width: double.infinity,
                                                    child: Text(
                                                      "Logo",
                                                      style: GoogleFonts.sen(
                                                        fontSize: 4.395.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ccDanger300,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 3.95.sp)),
                                                  Container(
                                                    width: 68.79.sp,
                                                    height: 45.714.sp,
                                                    margin: EdgeInsets.only(
                                                        left: 5.912.sp),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.29.sp),
                                                      border: Border.all(
                                                        color: ccPrimary300,
                                                        width: 0.2197.sp,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          child:
                                                              SvgPicture.asset(
                                                            "../assets/imges/upload.svg",
                                                            width: 9.85.sp,
                                                            height: 7.032.sp,
                                                          ),
                                                        ),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom: 5.054
                                                                        .sp)),
                                                        Text(
                                                          "Upload",
                                                          style:
                                                              GoogleFonts.sen(
                                                            fontSize: 3.956.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: ccNutural550,
                                                          ),
                                                        ),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom: 3.516
                                                                        .sp)),
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          width: 42.20.sp,
                                                          child: Text(
                                                            "Only .jpg, .jpeg, .png files are supported",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                GoogleFonts.sen(
                                                              fontSize:
                                                                  3.516.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  ccNutural550,
                                                              height: 1.5,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 1.95.sp)),
                                                ],
                                              ),
                                            ),
                                            const TextFeildWidget(
                                              hint: 'Enter your state',
                                              lebel: 'State',
                                              // value: 'Selangor',
                                            ),
                                            SizedBox(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 5.912.sp),
                                                    width: double.infinity,
                                                    child: Text(
                                                      "Country",
                                                      style: GoogleFonts.sen(
                                                        fontSize: 4.395.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ccDanger300,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 3.95.sp)),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 3.153.sp,
                                                        right: 3.318.sp),
                                                    child: Container(
                                                      width: 128.79.sp,
                                                      padding: EdgeInsets.only(
                                                          left: 4.153.sp,
                                                          right: 1.318.sp),
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side:
                                                              const BorderSide(
                                                            width: 1,
                                                            style: BorderStyle
                                                                .solid,
                                                            color: ccPrimary300,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      3.296
                                                                          .sp)),
                                                        ),
                                                      ),
                                                      child: DropdownButton<
                                                          String>(
                                                        value: dropdownValue,
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down,
                                                          color: ccNutural550,
                                                          size: 5.395.sp,
                                                        ),
                                                        elevation: 16,
                                                        isExpanded: true,
                                                        // isDense: true,
                                                        style: TextStyle(
                                                          color: ccNutural550,
                                                          fontSize: 3.956.sp,
                                                        ),
                                                        underline: Container(
                                                          height: 0.0,
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                        onChanged:
                                                            (String? newValue) {
                                                          // setState(() {
                                                          //   dropdownValue = newValue!;
                                                          // });
                                                        },
                                                        items: <String>[
                                                          'Malaysia',
                                                          'USA',
                                                          'UAE',
                                                        ].map<
                                                            DropdownMenuItem<
                                                                String>>((String
                                                            value) {
                                                          return DropdownMenuItem<
                                                              String>(
                                                            value: value,
                                                            child: Text(value),
                                                          );
                                                        }).toList(),
                                                        dropdownColor:
                                                            ccNeutral0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 1.95.sp)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 5.912.sp),
                                                    width: double.infinity,
                                                    child: Text(
                                                      "Time Zone",
                                                      style: GoogleFonts.sen(
                                                        fontSize: 4.395.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ccDanger300,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 3.95.sp)),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 3.153.sp,
                                                        right: 3.318.sp),
                                                    child: Container(
                                                      width: 128.79.sp,
                                                      padding: EdgeInsets.only(
                                                          left: 4.153.sp,
                                                          right: 1.318.sp),
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side:
                                                              const BorderSide(
                                                            width: 1,
                                                            style: BorderStyle
                                                                .solid,
                                                            color: ccPrimary300,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      3.296
                                                                          .sp)),
                                                        ),
                                                      ),
                                                      child: DropdownButton<
                                                          String>(
                                                        value: dropdownValue,
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down,
                                                          color: ccNutural550,
                                                          size: 5.395.sp,
                                                        ),
                                                        elevation: 16,
                                                        isExpanded: true,
                                                        // isDense: true,
                                                        style: TextStyle(
                                                          color: ccNutural550,
                                                          fontSize: 3.956.sp,
                                                        ),
                                                        underline: Container(
                                                          height: 0.0,
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                        onChanged:
                                                            (String? newValue) {
                                                          // setState(() {
                                                          //   dropdownValue = newValue!;
                                                          // });
                                                        },
                                                        items: <String>[
                                                          'Malaysia',
                                                          'USA',
                                                          'UAE',
                                                        ].map<
                                                            DropdownMenuItem<
                                                                String>>((String
                                                            value) {
                                                          return DropdownMenuItem<
                                                              String>(
                                                            value: value,
                                                            child: Text(value),
                                                          );
                                                        }).toList(),
                                                        dropdownColor:
                                                            ccNeutral0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 1.95.sp)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 3.sp)),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 4.153.sp,
                                                  right: 4.65.sp),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: double.infinity,
                                                    child: Text(
                                                      "Venue ID",
                                                      style: GoogleFonts.sen(
                                                        fontSize: 4.395.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ccDanger300,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 3.95.sp)),
                                                  Container(
                                                    color: Colors.transparent,
                                                    child: TextField(
                                                      // maxLines: 3,
                                                      textAlign: TextAlign.left,
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      enabled: false,
                                                      // readOnly: true,
                                                      style: TextStyle(
                                                        color: ccNutural550,
                                                        fontSize: 3.956.sp,
                                                      ),
                                                      controller:
                                                          TextEditingController(
                                                              text:
                                                                  "bGFDhg243Fh"),
                                                      decoration:
                                                          InputDecoration(
                                                        // fillColor: Colors.white,
                                                        filled: true,
                                                        contentPadding:
                                                            EdgeInsets.all(
                                                                2.63.sp),
                                                        fillColor: ccBakground,
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      3.296.sp),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: ccPrimary300,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        suffixIcon: Container(
                                                            height: 10.109.sp,
                                                            width: 11.86.sp,
                                                            decoration:
                                                                // ignore: prefer_const_constructors
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        3.269
                                                                            .sp),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        3.269
                                                                            .sp),
                                                              ),
                                                            ),
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 3.296
                                                                        .sp),
                                                            child: Container(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(2.50
                                                                          .sp),
                                                              color: ccNeutral0,
                                                              child: SvgPicture
                                                                  .asset(
                                                                "../assets/imges/file.svg",
                                                                width: 4.615.sp,
                                                                height:
                                                                    5.494.sp,
                                                              ),
                                                            )),
                                                        hintText: "bGFDhg243Fh",
                                                        hintStyle: TextStyle(
                                                          color: ccPrimary300,
                                                          fontSize: 3.956.sp,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 1.95.sp)),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 4.153.sp,
                                                  right: 4.65.sp),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: double.infinity,
                                                    child: Text(
                                                      "Address",
                                                      style: GoogleFonts.sen(
                                                        fontSize: 4.395.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ccDanger300,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 6.95.sp)),
                                                  TextField(
                                                    maxLines: 3,
                                                    style: TextStyle(
                                                        color: ccNutural550,
                                                        fontSize: 3.956.sp),
                                                    // controller:
                                                    //     TextEditingController(
                                                    //         text:
                                                    //             "36, Jalan Perdana 6/6, Pandan Perdana, 55300 Kuala Lumpur, Selangor, Malaysia"),
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.all(
                                                              2.63.sp),
                                                      border:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3.296
                                                                              .sp),
                                                              borderSide:
                                                                  const BorderSide(
                                                                color:
                                                                    ccPrimary300,
                                                                width: 1,
                                                              )),
                                                      hintText:
                                                          "Enter your Address",
                                                      hintStyle: TextStyle(
                                                        color: ccPrimary300,
                                                        fontSize: 3.956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 1.95.sp)),
                                                ],
                                              ),
                                            ),
                                            csvertSpace4,
                                            const TextFeildWidget(
                                              hint: 'Enter your city name',
                                              lebel: 'City',
                                              // value: 'Selangor',
                                            ),
                                            const TextFeildWidget(
                                              hint: 'Zip Code',
                                              lebel: 'Zip Code',
                                              // value: '55300',
                                            ),
                                            // Padding(
                                            //     padding: EdgeInsets.only(
                                            //         top: 3.sp)),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  left: 4.153.sp,
                                                  right: 4.65.sp),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: double.infinity,
                                                    child: Text(
                                                      "Phone Number",
                                                      style: GoogleFonts.sen(
                                                        fontSize: 4.395.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ccDanger300,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 3.95.sp)),
                                                  TextField(
                                                    style: const TextStyle(
                                                        color: ccNutural550),
                                                    // controller:
                                                    //     TextEditingController(
                                                    //         text: "1127314677"),
                                                    decoration: InputDecoration(
                                                      // fillColor: Colors.white,
                                                      // filled: true,
                                                      contentPadding:
                                                          EdgeInsets.all(
                                                              2.63.sp),
                                                      // fillColor:
                                                      //     ccBakground,
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    3.296.sp),
                                                        borderSide:
                                                            const BorderSide(
                                                          color: ccPrimary300,
                                                          width: 1,
                                                        ),
                                                      ),

                                                      prefixIcon: Container(
                                                          decoration:
                                                              // ignore: prefer_const_constructors
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.269.sp),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      4.269.sp),
                                                            ),
                                                            border: Border.all(
                                                              color:
                                                                  ccPrimary300,
                                                              width: 1,
                                                            ),
                                                          ),
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          // color:
                                                          //     ccNetural350,
                                                          height: 10.109.sp,
                                                          width: 11.86.sp,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right:
                                                                      3.296.sp),
                                                          // color:
                                                          //     ccNeutral0, // background color
                                                          child: Container(
                                                            color: ccNetural350,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 1),
                                                            child: Center(
                                                              child: Text(
                                                                "+60",
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  fontSize:
                                                                      3.956.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color:
                                                                      ccNutural550,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ),
                                                          )
                                                          // icon
                                                          ),
                                                      hintText:
                                                          "Enter your phone number",
                                                      hintStyle: TextStyle(
                                                        color: ccPrimary300,
                                                        fontSize: 3.956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 1.95.sp)),
                                                ],
                                              ),
                                            ),
                                            const TextFeildWidget(
                                              hint: 'Enter your website link',
                                              lebel: 'Website',
                                              // value: 'www.chefnstuff.com',
                                            ),
                                            SizedBox(
                                              height: 10.98.sp,
                                              // width: 135.38.sp,
                                              // color: Colors.blue,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  // Padding(
                                                  //     padding: EdgeInsets.only(
                                                  //   left: 4.39.sp,
                                                  // )),
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
                                                      onPressed: () {},
                                                      icon: SvgPicture.asset(
                                                        "../assets/imges/check-white.svg",
                                                        width: 4.178.sp,
                                                        height: 3.076.sp,
                                                      ),
                                                      label: Text(
                                                        'Save',
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
                                            Padding(
                                                padding: EdgeInsets.only(
                                              bottom: 2.39.sp,
                                            )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            csvertSpace12,
                          ],
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: TopHeaderWidget(),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: FooterWidget()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // drawer: LeftMenuWidget(
            //   goToPageRequested: (value) => model.goToPage(value),
            //   goToModalRequested: goToModalRequested,
            // ),
          ),
        );
      },
    );
  }
}
