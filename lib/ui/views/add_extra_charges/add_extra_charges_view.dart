import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
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
import './add_extra_charges_view_model.dart';

class AddExtraChargesView extends StatelessWidget {
  const AddExtraChargesView({Key? key}) : super(key: key);

  // get cshorzSpace1 => null;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddExtraChargesViewModel>.reactive(
      viewModelBuilder: () => AddExtraChargesViewModel(),
      onModelReady: (AddExtraChargesViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        AddExtraChargesViewModel model,
        Widget? child,
      ) {
        return Scaffold(
            body: Container(
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
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
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 9.sp,
                                                                  top: 4.175.sp,
                                                                  right: 7.5.sp,
                                                                  bottom:
                                                                      3.736.sp),
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
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 9.sp,
                                                            right: 7.5.sp,
                                                            bottom: 3.5.sp,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width:
                                                                    58.461.sp,
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  right: 3.sp,
                                                                  // bottom:
                                                                  //     4.395.sp,
                                                                ),
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
                                                          // height: 100.h - 380,
                                                          // width: 150.10.sp,
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 9.sp,
                                                            right: 7.5.sp,
                                                            bottom: 4.5.sp,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                width:
                                                                    58.461.sp,
                                                                height:
                                                                    8.571.sp,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right: 3
                                                                            .sp),
                                                                child:
                                                                    TextField(
                                                                  style: TextStyle(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          3.956
                                                                              .sp),
                                                                  // controller:
                                                                  //     TextEditingController(
                                                                  //   text:
                                                                  //       'Discount Name',
                                                                  // ),
                                                                  decoration:
                                                                      InputDecoration(
                                                                    contentPadding:
                                                                        EdgeInsets.only(
                                                                            left:
                                                                                2.63.sp),
                                                                    border: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.circular(1.758.sp),
                                                                        borderSide: BorderSide(
                                                                          color:
                                                                              ccPrimary300,
                                                                          width:
                                                                              0.2197.sp,
                                                                        )),
                                                                    // hintText:
                                                                    //     'Discount Name',
                                                                    hintStyle:
                                                                        const TextStyle(
                                                                      color:
                                                                          ccNutural550,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 36.48.sp,
                                                                height:
                                                                    8.571.sp,
                                                                child:
                                                                    TextField(
                                                                  style: const TextStyle(
                                                                      color:
                                                                          ccNutural550),
                                                                  // controller:
                                                                  //     TextEditingController(
                                                                  //         text:
                                                                  //             "1127314677"),
                                                                  decoration:
                                                                      InputDecoration(
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
                                                                          BorderRadius.circular(
                                                                              1.758.sp),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color:
                                                                            ccPrimary300,
                                                                        width:
                                                                            1,
                                                                      ),
                                                                    ),

                                                                    prefixIcon: Container(
                                                                        decoration:
                                                                            // ignore: prefer_const_constructors
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(1.758.sp),
                                                                            bottomLeft:
                                                                                Radius.circular(1.758.sp),
                                                                          ),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                ccPrimary300,
                                                                            width:
                                                                                1,
                                                                          ),
                                                                        ),
                                                                        clipBehavior: Clip.antiAlias,
                                                                        // color:
                                                                        //     ccNetural350,
                                                                        height: 10.109.sp,
                                                                        width: 11.86.sp,
                                                                        margin: EdgeInsets.only(right: 3.076.sp),
                                                                        // color:
                                                                        //     ccNeutral0, // background color
                                                                        child: Container(
                                                                          color:
                                                                              ccBakground,
                                                                          margin:
                                                                              EdgeInsets.only(left: 1),
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              "%",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 4.395.sp,
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
                                                                        "0.00",
                                                                    hintStyle:
                                                                        TextStyle(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          4.395
                                                                              .sp,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              cshorzSpace9,
                                                              SizedBox(
                                                                child: FlutterSwitch(
                                                                    width:
                                                                        9.67.sp,
                                                                    height:
                                                                        5.274
                                                                            .sp,
                                                                    activeColor:
                                                                        ccSuccess700,
                                                                    onToggle: (bool
                                                                        value) {},
                                                                    value:
                                                                        false),
                                                              ),
                                                              cshorzSpace9,
                                                              InkWell(
                                                                  child:
                                                                      Tooltip(
                                                                    message:
                                                                        'Delete Discounts',
                                                                    textStyle:
                                                                        TextStyle(
                                                                      color:
                                                                          ccNeutral0,
                                                                    ),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      "../assets/imges/delete-red.svg",
                                                                      // height: 20.sp,
                                                                      width: 3.736
                                                                          .sp,
                                                                      height:
                                                                          4.835
                                                                              .sp,
                                                                    ),
                                                                  ),
                                                                  onTap: () =>
                                                                      showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (_) =>
                                                                                AlertDialog(
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                          content:
                                                                              Container(
                                                                            // color: Colors.white,
                                                                            width:
                                                                                183.076.sp,
                                                                            height:
                                                                                78.68.sp,
                                                                            decoration: const BoxDecoration(
                                                                                border: Border(
                                                                                    bottom: BorderSide(
                                                                              width: 0.5,
                                                                              color: ccNatural250,
                                                                            ))),
                                                                            child:
                                                                                SizedBox(
                                                                              child: Column(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    decoration: const BoxDecoration(
                                                                                        border: Border(
                                                                                            bottom: BorderSide(
                                                                                      width: 0.5,
                                                                                      color: ccNatural250,
                                                                                    ))),
                                                                                    height: 14.62.sp,
                                                                                    child: Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Container(
                                                                                            height: 10.62.sp,
                                                                                            alignment: Alignment.centerLeft,
                                                                                            child: Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // color: Colors.red,
                                                                                                  child: SvgPicture.asset(
                                                                                                    "../assets/imges/warning-icon.svg",
                                                                                                    height: 6.153.sp,
                                                                                                    width: 6.153.sp,
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                    padding: EdgeInsets.only(
                                                                                                  left: 4.175.sp,
                                                                                                )),
                                                                                                Text(
                                                                                                  'Are You Sure?',
                                                                                                  style: GoogleFonts.sen(
                                                                                                    color: ccDanger300,
                                                                                                    fontSize: 5.714.sp,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: 10.62.sp,
                                                                                          width: 10.sp,
                                                                                          child: ElevatedButton(
                                                                                            onPressed: () {
                                                                                              Navigator.pop(context);
                                                                                            },
                                                                                            style: ElevatedButton.styleFrom(
                                                                                              backgroundColor: ccNeutral0,
                                                                                              elevation: 0,
                                                                                              shadowColor: Colors.transparent,
                                                                                            ),
                                                                                            child: SvgPicture.asset(
                                                                                              "../assets/imges/close.svg",
                                                                                              height: 4.615.sp,
                                                                                              width: 4.615.sp,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsets.only(top: 4.83.sp),
                                                                                  ),
                                                                                  // SizedBox
                                                                                  Text(
                                                                                    'Do you really want to Delete this Discount? It will be removed permanently.',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 4.395.sp,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          actions: [
                                                                            Container(
                                                                              height: 7.25.sp,
                                                                              width: 29.23.sp,
                                                                              margin: EdgeInsets.only(
                                                                                bottom: 4.39.sp,
                                                                              ),
                                                                              // color: Colors.green,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(1.098.sp),
                                                                                border: Border.all(color: ccNutural550),
                                                                              ),
                                                                              child: ElevatedButton.icon(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                style: ElevatedButton.styleFrom(
                                                                                  backgroundColor: ccNeutral0, // foreground
                                                                                ),
                                                                                icon: SvgPicture.asset(
                                                                                  "../assets/imges/close.svg",
                                                                                  width: 2.85.sp,
                                                                                  height: 2.85.sp,
                                                                                ),
                                                                                label: Text(
                                                                                  'NO',
                                                                                  style: GoogleFonts.sen(
                                                                                    color: ccNutural550,
                                                                                    fontSize: 4.39.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                  ),
                                                                                ), // <-- Text
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(
                                                                              left: 7.25.sp,
                                                                            )),
                                                                            Container(
                                                                              height: 7.25.sp,
                                                                              width: 29.23.sp,
                                                                              margin: EdgeInsets.only(
                                                                                bottom: 4.39.sp,
                                                                              ),
                                                                              // color: Colors.green,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(1.098.sp),
                                                                                border: Border.all(color: ccDanger300),
                                                                              ),
                                                                              child: ElevatedButton.icon(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                style: ElevatedButton.styleFrom(
                                                                                  backgroundColor: ccDanger300,
                                                                                  elevation: 0,
                                                                                  shadowColor: Colors.transparent,
                                                                                ),
                                                                                icon: SvgPicture.asset(
                                                                                  "../assets/imges/check-white.svg",
                                                                                  width: 4.17.sp,
                                                                                  height: 3.07.sp,
                                                                                ),
                                                                                label: Text(
                                                                                  'Yes',
                                                                                  style: GoogleFonts.sen(
                                                                                    color: ccNeutral0,
                                                                                    fontSize: 4.39.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                  ),
                                                                                ), // <-- Text
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(
                                                                              left: 5.25.sp,
                                                                            )),
                                                                          ],
                                                                        ),
                                                                      )),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 9.sp,
                                                                  bottom:
                                                                      7.153.sp),
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
                                                              model.goToRequestedPage(
                                                                  'venue_loaction');
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
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 9.sp,
                                                                  top: 4.175.sp,
                                                                  right: 7.5.sp,
                                                                  bottom:
                                                                      3.736.sp),
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
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 9.sp,
                                                            right: 7.5.sp,
                                                            bottom: 3.5.sp,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width:
                                                                    58.461.sp,
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  right: 3.sp,
                                                                  // bottom:
                                                                  //     4.395.sp,
                                                                ),
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
                                                          // height: 100.h - 380,
                                                          // width: 150.10.sp,
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 9.sp,
                                                            right: 7.5.sp,
                                                            bottom: 4.5.sp,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                width:
                                                                    58.461.sp,
                                                                height:
                                                                    8.571.sp,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right: 3
                                                                            .sp),
                                                                child:
                                                                    TextField(
                                                                  style: TextStyle(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          3.956
                                                                              .sp),
                                                                  // controller:
                                                                  //     TextEditingController(
                                                                  //   text:
                                                                  //       'Discount Name',
                                                                  // ),
                                                                  decoration:
                                                                      InputDecoration(
                                                                    contentPadding:
                                                                        EdgeInsets.only(
                                                                            left:
                                                                                2.63.sp),
                                                                    border: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.circular(1.758.sp),
                                                                        borderSide: BorderSide(
                                                                          color:
                                                                              ccPrimary300,
                                                                          width:
                                                                              0.2197.sp,
                                                                        )),
                                                                    // hintText:
                                                                    //     'Service Charges Name',
                                                                    hintStyle:
                                                                        const TextStyle(
                                                                      color:
                                                                          ccNutural550,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 36.48.sp,
                                                                height:
                                                                    8.571.sp,
                                                                child:
                                                                    TextField(
                                                                  style: const TextStyle(
                                                                      color:
                                                                          ccNutural550),
                                                                  // controller:
                                                                  //     TextEditingController(
                                                                  //         text:
                                                                  //             "1127314677"),
                                                                  decoration:
                                                                      InputDecoration(
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
                                                                          BorderRadius.circular(
                                                                              1.758.sp),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color:
                                                                            ccPrimary300,
                                                                        width:
                                                                            1,
                                                                      ),
                                                                    ),

                                                                    prefixIcon: Container(
                                                                        decoration:
                                                                            // ignore: prefer_const_constructors
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(1.758.sp),
                                                                            bottomLeft:
                                                                                Radius.circular(1.758.sp),
                                                                          ),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                ccPrimary300,
                                                                            width:
                                                                                1,
                                                                          ),
                                                                        ),
                                                                        clipBehavior: Clip.antiAlias,
                                                                        // color:
                                                                        //     ccNetural350,
                                                                        height: 10.109.sp,
                                                                        width: 11.86.sp,
                                                                        margin: EdgeInsets.only(right: 3.076.sp),
                                                                        // color:
                                                                        //     ccNeutral0, // background color
                                                                        child: Container(
                                                                          color:
                                                                              ccBakground,
                                                                          margin:
                                                                              EdgeInsets.only(left: 1),
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              "%",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 4.395.sp,
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
                                                                        "10.00",
                                                                    hintStyle:
                                                                        TextStyle(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          4.395
                                                                              .sp,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              cshorzSpace9,
                                                              SizedBox(
                                                                child: FlutterSwitch(
                                                                    width:
                                                                        9.67.sp,
                                                                    height:
                                                                        5.274
                                                                            .sp,
                                                                    activeColor:
                                                                        ccSuccess700,
                                                                    onToggle: (bool
                                                                        value) {},
                                                                    value:
                                                                        true),
                                                              ),
                                                              cshorzSpace9,
                                                              InkWell(
                                                                  child:
                                                                      Tooltip(
                                                                    message:
                                                                        'Delete Service Charges',
                                                                    textStyle:
                                                                        TextStyle(
                                                                      color:
                                                                          ccNeutral0,
                                                                    ),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      "../assets/imges/delete-red.svg",
                                                                      // height: 20.sp,
                                                                      width: 3.736
                                                                          .sp,
                                                                      height:
                                                                          4.835
                                                                              .sp,
                                                                    ),
                                                                  ),
                                                                  onTap: () =>
                                                                      showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (_) =>
                                                                                AlertDialog(
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                          content:
                                                                              Container(
                                                                            // color: Colors.white,
                                                                            width:
                                                                                183.076.sp,
                                                                            height:
                                                                                78.68.sp,
                                                                            decoration: const BoxDecoration(
                                                                                border: Border(
                                                                                    bottom: BorderSide(
                                                                              width: 0.5,
                                                                              color: ccNatural250,
                                                                            ))),
                                                                            child:
                                                                                SizedBox(
                                                                              child: Column(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    decoration: const BoxDecoration(
                                                                                        border: Border(
                                                                                            bottom: BorderSide(
                                                                                      width: 0.5,
                                                                                      color: ccNatural250,
                                                                                    ))),
                                                                                    height: 14.62.sp,
                                                                                    child: Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Container(
                                                                                            height: 10.62.sp,
                                                                                            alignment: Alignment.centerLeft,
                                                                                            child: Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // color: Colors.red,
                                                                                                  child: SvgPicture.asset(
                                                                                                    "../assets/imges/warning-icon.svg",
                                                                                                    height: 6.153.sp,
                                                                                                    width: 6.153.sp,
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                    padding: EdgeInsets.only(
                                                                                                  left: 4.175.sp,
                                                                                                )),
                                                                                                Text(
                                                                                                  'Are You Sure?',
                                                                                                  style: GoogleFonts.sen(
                                                                                                    color: ccDanger300,
                                                                                                    fontSize: 5.714.sp,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: 10.62.sp,
                                                                                          width: 10.sp,
                                                                                          child: ElevatedButton(
                                                                                            onPressed: () {
                                                                                              Navigator.pop(context);
                                                                                            },
                                                                                            style: ElevatedButton.styleFrom(
                                                                                              backgroundColor: ccNeutral0,
                                                                                              elevation: 0,
                                                                                              shadowColor: Colors.transparent,
                                                                                            ),
                                                                                            child: SvgPicture.asset(
                                                                                              "../assets/imges/close.svg",
                                                                                              height: 4.615.sp,
                                                                                              width: 4.615.sp,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsets.only(top: 4.83.sp),
                                                                                  ),
                                                                                  // SizedBox
                                                                                  Text(
                                                                                    'Do you really want to Delete this Service Charges? It will be removed permanently.',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 4.395.sp,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          actions: [
                                                                            Container(
                                                                              height: 7.25.sp,
                                                                              width: 29.23.sp,
                                                                              margin: EdgeInsets.only(
                                                                                bottom: 4.39.sp,
                                                                              ),
                                                                              // color: Colors.green,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(1.098.sp),
                                                                                border: Border.all(color: ccNutural550),
                                                                              ),
                                                                              child: ElevatedButton.icon(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                style: ElevatedButton.styleFrom(
                                                                                  backgroundColor: ccNeutral0, // foreground
                                                                                ),
                                                                                icon: SvgPicture.asset(
                                                                                  "../assets/imges/close.svg",
                                                                                  width: 2.85.sp,
                                                                                  height: 2.85.sp,
                                                                                ),
                                                                                label: Text(
                                                                                  'NO',
                                                                                  style: GoogleFonts.sen(
                                                                                    color: ccNutural550,
                                                                                    fontSize: 4.39.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                  ),
                                                                                ), // <-- Text
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(
                                                                              left: 7.25.sp,
                                                                            )),
                                                                            Container(
                                                                              height: 7.25.sp,
                                                                              width: 29.23.sp,
                                                                              margin: EdgeInsets.only(
                                                                                bottom: 4.39.sp,
                                                                              ),
                                                                              // color: Colors.green,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(1.098.sp),
                                                                                border: Border.all(color: ccDanger300),
                                                                              ),
                                                                              child: ElevatedButton.icon(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                style: ElevatedButton.styleFrom(
                                                                                  backgroundColor: ccDanger300,
                                                                                  elevation: 0,
                                                                                  shadowColor: Colors.transparent,
                                                                                ),
                                                                                icon: SvgPicture.asset(
                                                                                  "../assets/imges/check-white.svg",
                                                                                  width: 4.17.sp,
                                                                                  height: 3.07.sp,
                                                                                ),
                                                                                label: Text(
                                                                                  'Yes',
                                                                                  style: GoogleFonts.sen(
                                                                                    color: ccNeutral0,
                                                                                    fontSize: 4.39.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                  ),
                                                                                ), // <-- Text
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(
                                                                              left: 5.25.sp,
                                                                            )),
                                                                          ],
                                                                        ),
                                                                      )),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 9.sp,
                                                                  bottom:
                                                                      7.153.sp),
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
                                                              model.goToRequestedPage(
                                                                  'venue_loaction');
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
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 9.sp,
                                                                  top: 4.175.sp,
                                                                  right: 7.5.sp,
                                                                  bottom:
                                                                      3.736.sp),
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
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 9.sp,
                                                            right: 7.5.sp,
                                                            bottom: 3.5.sp,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width:
                                                                    58.461.sp,
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  right: 3.sp,
                                                                  // bottom:
                                                                  //     4.395.sp,
                                                                ),
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
                                                          // height: 100.h - 380,
                                                          // width: 150.10.sp,
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 9.sp,
                                                            right: 7.5.sp,
                                                            bottom: 4.5.sp,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                width:
                                                                    58.461.sp,
                                                                height:
                                                                    8.571.sp,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right: 3
                                                                            .sp),
                                                                child:
                                                                    TextField(
                                                                  style: TextStyle(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          3.956
                                                                              .sp),
                                                                  // controller:
                                                                  //     TextEditingController(
                                                                  //   text:
                                                                  //       'Discount Name',
                                                                  // ),
                                                                  decoration:
                                                                      InputDecoration(
                                                                    contentPadding:
                                                                        EdgeInsets.only(
                                                                            left:
                                                                                2.63.sp),
                                                                    border: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.circular(1.758.sp),
                                                                        borderSide: BorderSide(
                                                                          color:
                                                                              ccPrimary300,
                                                                          width:
                                                                              0.2197.sp,
                                                                        )),
                                                                    // hintText:
                                                                    //     'Discount Name',
                                                                    hintStyle:
                                                                        const TextStyle(
                                                                      color:
                                                                          ccNutural550,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 36.48.sp,
                                                                height:
                                                                    8.571.sp,
                                                                child:
                                                                    TextField(
                                                                  style: const TextStyle(
                                                                      color:
                                                                          ccNutural550),
                                                                  // controller:
                                                                  //     TextEditingController(
                                                                  //         text:
                                                                  //             "1127314677"),
                                                                  decoration:
                                                                      InputDecoration(
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
                                                                          BorderRadius.circular(
                                                                              1.758.sp),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color:
                                                                            ccPrimary300,
                                                                        width:
                                                                            1,
                                                                      ),
                                                                    ),

                                                                    prefixIcon: Container(
                                                                        decoration:
                                                                            // ignore: prefer_const_constructors
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(1.758.sp),
                                                                            bottomLeft:
                                                                                Radius.circular(1.758.sp),
                                                                          ),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                ccPrimary300,
                                                                            width:
                                                                                1,
                                                                          ),
                                                                        ),
                                                                        clipBehavior: Clip.antiAlias,
                                                                        // color:
                                                                        //     ccNetural350,
                                                                        height: 10.109.sp,
                                                                        width: 11.86.sp,
                                                                        margin: EdgeInsets.only(right: 3.076.sp),
                                                                        // color:
                                                                        //     ccNeutral0, // background color
                                                                        child: Container(
                                                                          color:
                                                                              ccBakground,
                                                                          margin:
                                                                              EdgeInsets.only(left: 1),
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              "%",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 4.395.sp,
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
                                                                        "0.00",
                                                                    hintStyle:
                                                                        TextStyle(
                                                                      color:
                                                                          ccNutural550,
                                                                      fontSize:
                                                                          4.395
                                                                              .sp,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              cshorzSpace9,
                                                              SizedBox(
                                                                child: FlutterSwitch(
                                                                    width:
                                                                        9.67.sp,
                                                                    height:
                                                                        5.274
                                                                            .sp,
                                                                    activeColor:
                                                                        ccSuccess700,
                                                                    onToggle: (bool
                                                                        value) {},
                                                                    value:
                                                                        false),
                                                              ),
                                                              cshorzSpace9,
                                                              InkWell(
                                                                  child:
                                                                      Tooltip(
                                                                    message:
                                                                        'Delete Taxes',
                                                                    textStyle:
                                                                        TextStyle(
                                                                      color:
                                                                          ccNeutral0,
                                                                    ),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      "../assets/imges/delete-red.svg",
                                                                      // height: 20.sp,
                                                                      width: 3.736
                                                                          .sp,
                                                                      height:
                                                                          4.835
                                                                              .sp,
                                                                    ),
                                                                  ),
                                                                  onTap: () =>
                                                                      showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (_) =>
                                                                                AlertDialog(
                                                                          shape:
                                                                              RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                          content:
                                                                              Container(
                                                                            // color: Colors.white,
                                                                            width:
                                                                                183.076.sp,
                                                                            height:
                                                                                78.68.sp,
                                                                            decoration: const BoxDecoration(
                                                                                border: Border(
                                                                                    bottom: BorderSide(
                                                                              width: 0.5,
                                                                              color: ccNatural250,
                                                                            ))),
                                                                            child:
                                                                                SizedBox(
                                                                              child: Column(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    decoration: const BoxDecoration(
                                                                                        border: Border(
                                                                                            bottom: BorderSide(
                                                                                      width: 0.5,
                                                                                      color: ccNatural250,
                                                                                    ))),
                                                                                    height: 14.62.sp,
                                                                                    child: Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Container(
                                                                                            height: 10.62.sp,
                                                                                            alignment: Alignment.centerLeft,
                                                                                            child: Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  // color: Colors.red,
                                                                                                  child: SvgPicture.asset(
                                                                                                    "../assets/imges/warning-icon.svg",
                                                                                                    height: 6.153.sp,
                                                                                                    width: 6.153.sp,
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                    padding: EdgeInsets.only(
                                                                                                  left: 4.175.sp,
                                                                                                )),
                                                                                                Text(
                                                                                                  'Are You Sure?',
                                                                                                  style: GoogleFonts.sen(
                                                                                                    color: ccDanger300,
                                                                                                    fontSize: 5.714.sp,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: 10.62.sp,
                                                                                          width: 10.sp,
                                                                                          child: ElevatedButton(
                                                                                            onPressed: () {
                                                                                              Navigator.pop(context);
                                                                                            },
                                                                                            style: ElevatedButton.styleFrom(
                                                                                              backgroundColor: ccNeutral0,
                                                                                              elevation: 0,
                                                                                              shadowColor: Colors.transparent,
                                                                                            ),
                                                                                            child: SvgPicture.asset(
                                                                                              "../assets/imges/close.svg",
                                                                                              height: 4.615.sp,
                                                                                              width: 4.615.sp,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsets.only(top: 4.83.sp),
                                                                                  ),
                                                                                  // SizedBox
                                                                                  Text(
                                                                                    'Do you really want to Delete this Tax? It will be removed permanently.',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 4.395.sp,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          actions: [
                                                                            Container(
                                                                              height: 7.25.sp,
                                                                              width: 29.23.sp,
                                                                              margin: EdgeInsets.only(
                                                                                bottom: 4.39.sp,
                                                                              ),
                                                                              // color: Colors.green,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(1.098.sp),
                                                                                border: Border.all(color: ccNutural550),
                                                                              ),
                                                                              child: ElevatedButton.icon(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                style: ElevatedButton.styleFrom(
                                                                                  backgroundColor: ccNeutral0, // foreground
                                                                                ),
                                                                                icon: SvgPicture.asset(
                                                                                  "../assets/imges/close.svg",
                                                                                  width: 2.85.sp,
                                                                                  height: 2.85.sp,
                                                                                ),
                                                                                label: Text(
                                                                                  'NO',
                                                                                  style: GoogleFonts.sen(
                                                                                    color: ccNutural550,
                                                                                    fontSize: 4.39.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                  ),
                                                                                ), // <-- Text
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(
                                                                              left: 7.25.sp,
                                                                            )),
                                                                            Container(
                                                                              height: 7.25.sp,
                                                                              width: 29.23.sp,
                                                                              margin: EdgeInsets.only(
                                                                                bottom: 4.39.sp,
                                                                              ),
                                                                              // color: Colors.green,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(1.098.sp),
                                                                                border: Border.all(color: ccDanger300),
                                                                              ),
                                                                              child: ElevatedButton.icon(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                style: ElevatedButton.styleFrom(
                                                                                  backgroundColor: ccDanger300,
                                                                                  elevation: 0,
                                                                                  shadowColor: Colors.transparent,
                                                                                ),
                                                                                icon: SvgPicture.asset(
                                                                                  "../assets/imges/check-white.svg",
                                                                                  width: 4.17.sp,
                                                                                  height: 3.07.sp,
                                                                                ),
                                                                                label: Text(
                                                                                  'Yes',
                                                                                  style: GoogleFonts.sen(
                                                                                    color: ccNeutral0,
                                                                                    fontSize: 4.39.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                  ),
                                                                                ), // <-- Text
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(
                                                                              left: 5.25.sp,
                                                                            )),
                                                                          ],
                                                                        ),
                                                                      )),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 9.sp,
                                                                  bottom:
                                                                      7.153.sp),
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
                                                              model.goToRequestedPage(
                                                                  'venue_loaction');
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
                                                            backgroundColor: ccDanger700,
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
        ));
      },
    );
  }
}
