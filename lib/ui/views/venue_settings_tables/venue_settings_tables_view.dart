import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/venu-settings/venu_settings_tabs.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/venue_table_row.widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';
// import '../../widgets/dumb_widgets/add_text_feild.widget.dart';
import '../../widgets/dumb_widgets/footer.widget.dart';
// import '../../widgets/dumb_widgets/no_table_empty.widget.dart';
import '../../widgets/dumb_widgets/page_title.widget.dart';
import '../../widgets/dumb_widgets/show_side_dialogue.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import '../../widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import './venue_settings_tables_view_model.dart';

// ignore: must_be_immutable
class VenueSettingsTablesView extends StatefulWidget {
  const VenueSettingsTablesView({Key? key}) : super(key: key);

  @override
  State<VenueSettingsTablesView> createState() =>
      _VenueSettingsTablesViewState();
}

class _VenueSettingsTablesViewState extends State<VenueSettingsTablesView> {
  // ignore: non_constant_identifier_names
  int Myvalue = 1;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VenueSettingsTablesViewModel>.reactive(
      viewModelBuilder: () => VenueSettingsTablesViewModel(),
      onModelReady: (VenueSettingsTablesViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        VenueSettingsTablesViewModel model,
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
                  // LeftMenuWidget(
                  //   goToPageRequested: (val) => goToPageRequested(val),
                  // ),
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
                                  selectedTabName: 'tables',
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
                                            // width: 135.38.sp,
                                            // color: Colors.blue,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    right: 4.5.sp,
                                                    // bottom: 5.sp,
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
                                                      hintText: "Search Tables",
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
                                                // Padding(
                                                //     padding: EdgeInsets.only(
                                                //   left: 4.39.sp,
                                                // )),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    right: 4.5.sp,
                                                  ),
                                                  height: 7.47.sp,
                                                  // width: 36.70.sp,
                                                  child: ElevatedButton.icon(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          ccDanger300,
                                                    ),
                                                    onPressed: () {},
                                                    icon: SvgPicture.asset(
                                                      "../assets/imges/export-white.svg",
                                                      width: 4.178.sp,
                                                      height: 3.076.sp,
                                                    ),
                                                    label: Text(
                                                      'Download QR Codes',
                                                      style: GoogleFonts.sen(
                                                        color: ccNeutral0,
                                                        fontSize: 4.395.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ), // <-- Text
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    right: 4.5.sp,
                                                  ),
                                                  height: 7.47.sp,
                                                  // width: 36.70.sp,
                                                  child: ElevatedButton.icon(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          ccDanger300,
                                                    ),
                                                    onPressed: () =>
                                                        showSideDialogue(
                                                      context: context,
                                                      title: "Add New Tables",
                                                      cancelButtonText:
                                                          "Cancel",
                                                      saveButtonText: "Add",
                                                      saveButtonPressed:
                                                          (dynamic val) {
                                                        // ignore: avoid_print
                                                        print(
                                                            "hello i am clicked with $val");
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        height: 100.h - 110,
                                                        width: 100.w,
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
                                                              Container(
                                                                // height:
                                                                //     34.065.sp,
                                                                width:
                                                                    100.w - 72,
                                                                padding: EdgeInsets.only(
                                                                    top: 4.395
                                                                        .sp,
                                                                    bottom:
                                                                        4.395
                                                                            .sp,
                                                                    left: 6.593
                                                                        .sp),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color:
                                                                      ccNeutral0,
                                                                  border: Border
                                                                      .all(
                                                                    color:
                                                                        ccNatural250,
                                                                    width: 0.5,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              1.758.sp),
                                                                ),
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'How would you like to create new tables?',
                                                                      style: GoogleFonts
                                                                          .sen(
                                                                        fontSize:
                                                                            6.153.sp,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        color:
                                                                            ccDanger300,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(bottom: 5.934.sp)),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Radio(
                                                                          value:
                                                                              1,
                                                                          groupValue:
                                                                              Myvalue,
                                                                          activeColor:
                                                                              ccDanger300,
                                                                          onChanged:
                                                                              // ignore: non_constant_identifier_names
                                                                              (Myvalue) {
                                                                            setState(() {
                                                                              Myvalue = Myvalue;
                                                                            });
                                                                          },
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              10,
                                                                        ),
                                                                        Text(
                                                                          'Automatic Table Names',
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            fontSize:
                                                                                4.395.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            color:
                                                                                ccNutural550,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Radio(
                                                                          value:
                                                                              2,
                                                                          groupValue:
                                                                              Myvalue,
                                                                          onChanged:
                                                                              // ignore: non_constant_identifier_names
                                                                              (Myvalue) {
                                                                            setState(() {
                                                                              Myvalue = Myvalue;
                                                                            });
                                                                          },
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              10,
                                                                        ),
                                                                        Text(
                                                                          'Custom Table Names',
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            fontSize:
                                                                                4.395.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            color:
                                                                                ccNutural550,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              csvertSpace8,
                                                              Container(
                                                                width:
                                                                    100.w - 72,
                                                                padding: EdgeInsets.only(
                                                                    top: 6.593
                                                                        .sp,
                                                                    bottom:
                                                                        6.593
                                                                            .sp,
                                                                    left: 6.593
                                                                        .sp,
                                                                    right:
                                                                        6.2.sp),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color:
                                                                      ccNeutral0,
                                                                  border: Border
                                                                      .all(
                                                                    color:
                                                                        ccNatural250,
                                                                    width: 0.5,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              1.758.sp),
                                                                ),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              41.97.sp,
                                                                          // height:
                                                                          //     8.791.sp,
                                                                          child:
                                                                              Text(
                                                                            'Lable (Suffix):',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccDanger300,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              TextField(
                                                                            style:
                                                                                TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                                                                            // controller: TextEditingController(
                                                                            //   text: value,
                                                                            // ),
                                                                            decoration:
                                                                                InputDecoration(
                                                                              contentPadding: EdgeInsets.only(left: 4.395.sp),
                                                                              border: OutlineInputBorder(
                                                                                  borderRadius: BorderRadius.circular(3.296.sp),
                                                                                  borderSide: BorderSide(
                                                                                    color: ccPrimary300,
                                                                                    width: 0.2197.sp,
                                                                                  )),
                                                                              hintText: 'Garden',
                                                                              hintStyle: TextStyle(
                                                                                color: ccPrimary300,
                                                                                fontSize: 3.956.sp,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(bottom: 5.274.sp)),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              41.97.sp,
                                                                          child:
                                                                              Text(
                                                                            'Number Of Tables:',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccDanger300,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              TextField(
                                                                            style:
                                                                                TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                                                                            // controller: TextEditingController(
                                                                            //   text: value,
                                                                            // ),
                                                                            decoration:
                                                                                InputDecoration(
                                                                              contentPadding: EdgeInsets.only(left: 4.395.sp),
                                                                              border: OutlineInputBorder(
                                                                                  borderRadius: BorderRadius.circular(3.296.sp),
                                                                                  borderSide: BorderSide(
                                                                                    color: ccPrimary300,
                                                                                    width: 0.2197.sp,
                                                                                  )),
                                                                              hintText: '5',
                                                                              hintStyle: TextStyle(
                                                                                color: ccPrimary300,
                                                                                fontSize: 3.956.sp,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(bottom: 5.274.sp)),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              41.97.sp,
                                                                          child:
                                                                              Text(
                                                                            'Starting from:',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccDanger300,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              41.97.sp,
                                                                          height:
                                                                              8.791.sp,
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              TextField(
                                                                            style:
                                                                                TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                                                                            controller:
                                                                                TextEditingController(
                                                                              text: '1',
                                                                            ),
                                                                            enabled:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              contentPadding: EdgeInsets.only(left: 4.395.sp),
                                                                              filled: true,
                                                                              border: OutlineInputBorder(
                                                                                  borderRadius: BorderRadius.circular(3.296.sp),
                                                                                  borderSide: BorderSide(
                                                                                    color: ccPrimary300,
                                                                                    width: 0.2197.sp,
                                                                                  )),
                                                                              fillColor: ccBakground,
                                                                              hintText: '1',
                                                                              hintStyle: TextStyle(
                                                                                color: ccPrimary300,
                                                                                fontSize: 3.956.sp,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              csvertSpace8,
                                                              Container(
                                                                width:
                                                                    100.w - 72,
                                                                height: 387,
                                                                padding: EdgeInsets.only(
                                                                    top: 4.395
                                                                        .sp,
                                                                    bottom:
                                                                        4.395
                                                                            .sp,
                                                                    left: 6.593
                                                                        .sp,
                                                                    right:
                                                                        6.2.sp),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color:
                                                                      ccNeutral0,
                                                                  border: Border
                                                                      .all(
                                                                    color:
                                                                        ccNatural250,
                                                                    width: 0.5,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              1.758.sp),
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
                                                                      Text(
                                                                        'Tables to be created',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccDanger300,
                                                                          fontSize:
                                                                              4.395.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            67.sp,
                                                                        padding:
                                                                            EdgeInsets.only(top: 1.sp),
                                                                        child: ListView
                                                                            .builder(
                                                                          itemCount:
                                                                              5,
                                                                          itemBuilder:
                                                                              (context, index) {
                                                                            return Container(
                                                                              width: 100.w - 72,
                                                                              // height: 12.sp,
                                                                              padding: EdgeInsets.only(
                                                                                bottom: 2.296.sp,
                                                                              ),
                                                                              child: Container(
                                                                                color: Colors.transparent,
                                                                                child: TextField(
                                                                                  textAlign: TextAlign.left,
                                                                                  style: TextStyle(
                                                                                    color: ccNutural550,
                                                                                    fontSize: 3.956.sp,
                                                                                  ),
                                                                                  controller: TextEditingController(text: "Garden $index"),
                                                                                  decoration: InputDecoration(
                                                                                    contentPadding: EdgeInsets.only(top: 2.63.sp, bottom: 2.63.sp),
                                                                                    border: UnderlineInputBorder(borderSide: BorderSide(color: ccPrimary300, width: 0.5)),
                                                                                    hintText: "Table Name",
                                                                                    hintStyle: TextStyle(
                                                                                      color: ccPrimary300,
                                                                                      fontSize: 3.956.sp,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              csvertSpace8,
                                                              Container(
                                                                width:
                                                                    100.w - 72,
                                                                height: 387,
                                                                padding: EdgeInsets.only(
                                                                    top: 4.395
                                                                        .sp,
                                                                    bottom:
                                                                        4.395
                                                                            .sp,
                                                                    left: 6.593
                                                                        .sp,
                                                                    right:
                                                                        6.2.sp),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color:
                                                                      ccNeutral0,
                                                                  border: Border
                                                                      .all(
                                                                    color:
                                                                        ccNatural250,
                                                                    width: 0.5,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              1.758.sp),
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
                                                                      Text(
                                                                        'Tables to be created',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccDanger300,
                                                                          fontSize:
                                                                              4.395.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            26.sp,
                                                                        child: ListView
                                                                            .builder(
                                                                          itemCount:
                                                                              2,
                                                                          itemBuilder:
                                                                              (context, index) {
                                                                            return Container(
                                                                              width: 100.w - 72,
                                                                              // height: 12.sp,
                                                                              padding: EdgeInsets.only(
                                                                                bottom: 2.296.sp,
                                                                              ),
                                                                              child: Container(
                                                                                color: Colors.transparent,
                                                                                child: TextField(
                                                                                  textAlign: TextAlign.left,
                                                                                  style: TextStyle(
                                                                                    color: ccNutural550,
                                                                                    fontSize: 3.956.sp,
                                                                                  ),
                                                                                  controller: TextEditingController(text: "Smoking"),
                                                                                  decoration: InputDecoration(
                                                                                    contentPadding: EdgeInsets.only(top: 2.63.sp, bottom: 2.63.sp),
                                                                                    border: UnderlineInputBorder(borderSide: BorderSide(color: ccPrimary300, width: 0.5)),
                                                                                    suffixIcon: Column(
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        InkWell(
                                                                                          child: Text(
                                                                                            "Remove",
                                                                                            style: GoogleFonts.sen(
                                                                                              color: ccDanger300,
                                                                                              fontSize: 4.395.sp,
                                                                                              fontWeight: FontWeight.w400,
                                                                                            ),
                                                                                          ),
                                                                                          onTap: () {},
                                                                                        )
                                                                                      ],
                                                                                    ),
                                                                                    hintText: "Table Name",
                                                                                    hintStyle: TextStyle(
                                                                                      color: ccPrimary300,
                                                                                      fontSize: 3.956.sp,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        color: Colors
                                                                            .transparent,
                                                                        child:
                                                                            TextField(
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.956.sp,
                                                                          ),
                                                                          // controller:
                                                                          // TextEditingController(text: "Smoking"),
                                                                          decoration:
                                                                              InputDecoration(
                                                                            contentPadding:
                                                                                EdgeInsets.only(top: 2.63.sp, bottom: 2.63.sp),
                                                                            border:
                                                                                UnderlineInputBorder(borderSide: BorderSide(color: ccPrimary300, width: 0.5)),
                                                                            hintText:
                                                                                "Table Name",
                                                                            hintStyle:
                                                                                TextStyle(
                                                                              color: ccPrimary300,
                                                                              fontSize: 3.956.sp,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                          // left:
                                                                          //     7.5.sp,
                                                                          top: 5.2745
                                                                              .sp,
                                                                          bottom:
                                                                              6.sp,
                                                                        ),
                                                                        child:
                                                                            InkWell(
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Text(
                                                                                "Add new Table",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.395.sp,
                                                                                ),
                                                                              ),
                                                                              Padding(padding: EdgeInsets.only(left: 3.29.sp)),
                                                                              SvgPicture.asset(
                                                                                "../assets/imges/plus.svg",
                                                                                // height: 20.sp,
                                                                                width: 3.sp,
                                                                                height: 3.sp,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          onTap:
                                                                              () {},
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
                                                    ),
                                                    icon: SvgPicture.asset(
                                                      "../assets/imges/add-new-white.svg",
                                                      width: 4.178.sp,
                                                      height: 3.076.sp,
                                                    ),
                                                    label: Text(
                                                      'Add new tables',
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
                                                        Expanded(
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              cshorzSpace9,
                                                              SizedBox(
                                                                width: 2.417.sp,
                                                                height: double
                                                                    .infinity,
                                                                // width: 2.50
                                                                //     .sp,
                                                                // color: Colors
                                                                //     .blue,
                                                                child: Checkbox(
                                                                  value: false,
                                                                  onChanged:
                                                                      (value) {
                                                                    // setState(() {
                                                                    //   _myBoolean = value; // rebuilds with new value
                                                                    // });
                                                                  },
                                                                ),
                                                              ),
                                                              cshorzSpace5,
                                                              Container(
                                                                // width: 50,
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Text(
                                                                    "Table Name",
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
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // height: 50,
                                                          width: 52.307.sp,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text("Action",
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
                                                    height: 100.h - 384,
                                                    padding: EdgeInsets.only(
                                                        bottom: 3.956.sp),
                                                    child: ListView.builder(
                                                      itemCount: 20,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return VenueTableRowWidget(
                                                          tName:
                                                              'Garden $index',
                                                          cbox: false,
                                                          bgColor: 'uncheck',
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
                                csvertSpace12,
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
