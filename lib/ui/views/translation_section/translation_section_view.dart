import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/TranslationTabs/translation_tabs.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/select_language.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/textarea.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/translation_texefeild.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './translation_section_view_model.dart';

class TranslationSectionView extends StatelessWidget {
  const TranslationSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TranslationSectionViewModel>.reactive(
      viewModelBuilder: () => TranslationSectionViewModel(),
      onModelReady: (TranslationSectionViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        TranslationSectionViewModel model,
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
                    Container(
                      color: ccNeutral0,
                      width: 100.w - 52.sp,
                      height: 100.h,
                      child: Stack(children: [
                        SingleChildScrollView(
                          child: Container(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const <Widget>[
                                          PageTitlewWidget(
                                            titleName: 'Menu Management',
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
                                                TranslationTabsWidget(
                                                  goToPageRequested: (val) =>
                                                      model.goToPage(val),
                                                  selectedTabName: 'menu',
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      color: ccNeutral0,
                                      height: 100.h - 235,
                                      width: 100.w,
                                      padding: EdgeInsets.only(left: 4.sp),
                                      margin: EdgeInsets.only(bottom: 11.sp),
                                      child: SingleChildScrollView(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 59.780219.sp,
                                              height: 100.h - 240,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(3.269.sp),
                                                  bottomRight:
                                                      Radius.circular(3.269.sp),
                                                ),
                                                border: Border.all(
                                                  color: ccNatural250,
                                                ),
                                              ),
                                              padding: EdgeInsets.only(
                                                  top: 2.714.sp,
                                                  bottom: 2.714.sp,
                                                  left: 1.956.sp,
                                                  right: 1.956.sp),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Menus',
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccNutural550,
                                                            fontSize: 4.3956.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    csvertSpace2,
                                                    ExpansionTile(
                                                      initiallyExpanded: true,
                                                      tilePadding:
                                                          EdgeInsets.only(
                                                              left: 0, top: 0),
                                                      collapsedIconColor:
                                                          ccDanger300,
                                                      iconColor: ccDanger300,
                                                      title: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    1.sp),
                                                            child: InkWell(
                                                                child: Text(
                                                                  'Main Menu',
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccNutural550,
                                                                    fontSize:
                                                                        3.956
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                onTap: () {
                                                                  model.goToPage(
                                                                      'translation');
                                                                }),
                                                          ),
                                                        ],
                                                      ),
                                                      children: [
                                                        Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              ExpansionTile(
                                                                tilePadding:
                                                                    EdgeInsets.only(
                                                                        left: 0,
                                                                        top: 0),
                                                                collapsedIconColor:
                                                                    ccDanger300,
                                                                iconColor:
                                                                    ccDanger300,
                                                                title: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    cshorzSpace5,
                                                                    Container(
                                                                      padding: EdgeInsets
                                                                          .all(1
                                                                              .sp),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color:
                                                                            ccDanger100,
                                                                        borderRadius:
                                                                            BorderRadius.all(
                                                                          Radius.circular(
                                                                              0.87912.sp),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          InkWell(
                                                                        child:
                                                                            Text(
                                                                          'Starters',
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.956.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        onTap:
                                                                            () {
                                                                          model.goToPage(
                                                                              'section_translate');
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: [
                                                                  // cshorzSpace8,
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          InkWell(
                                                                            child:
                                                                                Text(
                                                                              'Gazpacho',
                                                                              style: GoogleFonts.sen(
                                                                                color: ccNutural550,
                                                                                fontSize: 3.956.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                            onTap:
                                                                                () {
                                                                              model.goToPage('item_translate');
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Butternut Squash Soup',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Sea Salt Fries',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Cheese Fondue',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Mini Bacon Quiche',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              ExpansionTile(
                                                                tilePadding:
                                                                    EdgeInsets.only(
                                                                        left: 0,
                                                                        top: 0),
                                                                collapsedIconColor:
                                                                    ccDanger300,
                                                                iconColor:
                                                                    ccDanger300,
                                                                title: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    cshorzSpace5,
                                                                    Container(
                                                                      padding: EdgeInsets
                                                                          .all(1
                                                                              .sp),
                                                                      child:
                                                                          Text(
                                                                        'Salads',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.956.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: [
                                                                  // cshorzSpace8,
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Gazpacho',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Butternut Squash Soup',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Sea Salt Fries',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Cheese Fondue',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Mini Bacon Quiche',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              ExpansionTile(
                                                                tilePadding:
                                                                    EdgeInsets.only(
                                                                        left: 0,
                                                                        top: 0),
                                                                collapsedIconColor:
                                                                    ccDanger300,
                                                                iconColor:
                                                                    ccDanger300,
                                                                title: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    cshorzSpace5,
                                                                    Container(
                                                                      padding: EdgeInsets
                                                                          .all(1
                                                                              .sp),
                                                                      child:
                                                                          Text(
                                                                        'Main Course',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.956.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: [
                                                                  // cshorzSpace8,
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      ExpansionTile(
                                                                        tilePadding: EdgeInsets.only(
                                                                            left:
                                                                                0,
                                                                            top:
                                                                                0),
                                                                        collapsedIconColor:
                                                                            ccDanger300,
                                                                        iconColor:
                                                                            ccDanger300,
                                                                        title:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            cshorzSpace8,
                                                                            Text(
                                                                              'Wraps',
                                                                              style: GoogleFonts.sen(
                                                                                color: ccNutural550,
                                                                                fontSize: 3.956.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        children: [
                                                                          // cshorzSpace8,
                                                                          Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Veggie Wrap',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Chicken Wrap',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Beef Wrap',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Meat Wrap',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Salmon Wrap',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      ExpansionTile(
                                                                        tilePadding: EdgeInsets.only(
                                                                            left:
                                                                                0,
                                                                            top:
                                                                                0),
                                                                        collapsedIconColor:
                                                                            ccDanger300,
                                                                        iconColor:
                                                                            ccDanger300,
                                                                        title:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            cshorzSpace8,
                                                                            Text(
                                                                              'Chicken',
                                                                              style: GoogleFonts.sen(
                                                                                color: ccNutural550,
                                                                                fontSize: 3.956.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        children: [
                                                                          // cshorzSpace8,
                                                                          Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Gazpacho',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Butternut Squash Soup',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Sea Salt Fries',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Cheese Fondue',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Mini Bacon Quiche',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      ExpansionTile(
                                                                        tilePadding: EdgeInsets.only(
                                                                            left:
                                                                                0,
                                                                            top:
                                                                                0),
                                                                        collapsedIconColor:
                                                                            ccDanger300,
                                                                        iconColor:
                                                                            ccDanger300,
                                                                        title:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            cshorzSpace8,
                                                                            Text(
                                                                              'Burgers',
                                                                              style: GoogleFonts.sen(
                                                                                color: ccNutural550,
                                                                                fontSize: 3.956.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        children: [
                                                                          // cshorzSpace8,
                                                                          Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Gazpacho',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Butternut Squash Soup',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Sea Salt Fries',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Cheese Fondue',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Mini Bacon Quiche',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      ExpansionTile(
                                                                        tilePadding: EdgeInsets.only(
                                                                            left:
                                                                                0,
                                                                            top:
                                                                                0),
                                                                        collapsedIconColor:
                                                                            ccDanger300,
                                                                        iconColor:
                                                                            ccDanger300,
                                                                        title:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            cshorzSpace8,
                                                                            Text(
                                                                              'Red Meats',
                                                                              style: GoogleFonts.sen(
                                                                                color: ccNutural550,
                                                                                fontSize: 3.956.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        children: [
                                                                          // cshorzSpace8,
                                                                          Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Gazpacho',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Butternut Squash Soup',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Sea Salt Fries',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Cheese Fondue',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              csvertSpace3,
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  cshorzSpace12,
                                                                                  Text(
                                                                                    'Mini Bacon Quiche',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNutural550,
                                                                                      fontSize: 3.956.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              ExpansionTile(
                                                                tilePadding:
                                                                    EdgeInsets.only(
                                                                        left: 0,
                                                                        top: 0),
                                                                collapsedIconColor:
                                                                    ccDanger300,
                                                                iconColor:
                                                                    ccDanger300,
                                                                title: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    cshorzSpace5,
                                                                    Container(
                                                                      padding: EdgeInsets
                                                                          .all(1
                                                                              .sp),
                                                                      child:
                                                                          Text(
                                                                        'Desserts',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.956.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: [
                                                                  // cshorzSpace8,
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Gazpacho',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Butternut Squash Soup',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Sea Salt Fries',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Cheese Fondue',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      csvertSpace3,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          cshorzSpace8,
                                                                          Text(
                                                                            'Mini Bacon Quiche',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ])
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100.w - 122.sp,
                                              height: 100.h - 240,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(3.269.sp),
                                                ),
                                                border: Border.all(
                                                  color: ccNatural250,
                                                ),
                                              ),
                                              margin:
                                                  EdgeInsets.only(left: 2.5.sp),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SelectLanguageWidget(),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                      top: 3.sp,
                                                      right: 5.sp,
                                                      left: 4.615.sp,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                        bottom: BorderSide(
                                                          width: 0.5,
                                                          color: ccNatural250,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Opacity(
                                                              opacity: .5,
                                                              child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            3.5.sp),
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
                                                                          5.sp,
                                                                      height:
                                                                          5.sp,
                                                                      decoration: BoxDecoration(
                                                                          border: Border.all(
                                                                            color:
                                                                                ccNeutral0,
                                                                            //  check == true ? ccDanger300 :
                                                                          ),
                                                                          borderRadius: BorderRadius.all(Radius.circular(100))),
                                                                      child:
                                                                          Checkbox(
                                                                        // shape: CircleBorder(),
                                                                        activeColor:
                                                                            ccDanger300,
                                                                        checkColor:
                                                                            ccNeutral0,
                                                                        value:
                                                                            true,
                                                                        onChanged:
                                                                            (value) {
                                                                          // setState(() {
                                                                          //   _myBoolean = value; // rebuilds with new value
                                                                          // });
                                                                        },
                                                                      ),
                                                                    ),
                                                                    cshorzSpace4,
                                                                    Text(
                                                                      "English",
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
                                                              )),
                                                          cshorzSpace4,
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        3.5.sp),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 5.sp,
                                                                  height: 5.sp,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          border: Border
                                                                              .all(
                                                                            color:
                                                                                ccNeutral0,
                                                                            //  check == true ? ccDanger300 :
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.all(Radius.circular(100))),
                                                                  child:
                                                                      Checkbox(
                                                                    // shape: CircleBorder(),
                                                                    activeColor:
                                                                        ccDanger300,
                                                                    checkColor:
                                                                        ccNeutral0,
                                                                    value: true,
                                                                    onChanged:
                                                                        (value) {
                                                                      // setState(() {
                                                                      //   _myBoolean = value; // rebuilds with new value
                                                                      // });
                                                                    },
                                                                  ),
                                                                ),
                                                                cshorzSpace4,
                                                                Text(
                                                                  'Bahasa Indonesia',
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    fontSize:
                                                                        4.395
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color:
                                                                        ccNutural550,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ]),
                                                  ),
                                                  csvertSpace3,
                                                  Row(
                                                    children: [
                                                      cshorzSpace4,
                                                      Container(
                                                        // height: 115.934.sp,
                                                        width: 67.912.sp,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(
                                                                3.269.sp),
                                                          ),
                                                          border: Border.all(
                                                            color: ccNatural250,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Column(
                                                              children: [
                                                                Container(
                                                                  height: 14.sp,
                                                                  padding: EdgeInsets.only(
                                                                      left:
                                                                          3.sp,
                                                                      right:
                                                                          3.sp),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border(
                                                                      bottom:
                                                                          BorderSide(
                                                                        width:
                                                                            1,
                                                                        color:
                                                                            ccNatural250,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'English',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccDanger300,
                                                                          fontSize:
                                                                              3.956.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            SvgPicture.asset(
                                                                              "../assets/imges/file-r.svg",
                                                                              height: 2.857.sp,
                                                                              width: 2.417.sp,
                                                                            ),
                                                                            cshorzSpace1,
                                                                            Text(
                                                                              'Copy',
                                                                              style: GoogleFonts.sen(
                                                                                color: ccDanger300,
                                                                                fontSize: 3.956.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        onTap:
                                                                            () {},
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      100.h -
                                                                          530,
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        TranslateTextFeildWidget(
                                                                          hint:
                                                                              'Starters',
                                                                          lebel:
                                                                              'Name',
                                                                        ),
                                                                        TextAreaWidget(
                                                                          hint:
                                                                              'Soup & Tapas',
                                                                          lebel:
                                                                              'Description',
                                                                        ),
                                                                        TranslateTextFeildWidget(
                                                                          hint:
                                                                              '',
                                                                          lebel:
                                                                              'Note',
                                                                        ),
                                                                        csvertSpace2,
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),

                                                            // csvertSpace,
                                                            Container(
                                                              height: 14.sp,
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          3.sp,
                                                                      right:
                                                                          3.sp),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border(
                                                                  top:
                                                                      BorderSide(
                                                                    width: 1,
                                                                    color:
                                                                        ccNatural250,
                                                                  ),
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  InkWell(
                                                                    child: Row(
                                                                      children: [
                                                                        Text(
                                                                          'Save',
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccDanger300,
                                                                            fontSize:
                                                                                3.956.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    onTap:
                                                                        () {},
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      cshorzSpace5,
                                                      Container(
                                                        // height: 115.934.sp,
                                                        width: 67.912.sp,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(
                                                                3.269.sp),
                                                          ),
                                                          border: Border.all(
                                                            color: ccNatural250,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Column(
                                                              children: [
                                                                Container(
                                                                  height: 14.sp,
                                                                  padding: EdgeInsets.only(
                                                                      left:
                                                                          3.sp,
                                                                      right:
                                                                          3.sp),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border(
                                                                      bottom:
                                                                          BorderSide(
                                                                        width:
                                                                            1,
                                                                        color:
                                                                            ccNatural250,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Bahasa Indonesia',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccDanger300,
                                                                          fontSize:
                                                                              3.956.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            SvgPicture.asset(
                                                                              "../assets/imges/language-r.svg",
                                                                              height: 6.0659.sp,
                                                                              width: 4.3956.sp,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        onTap:
                                                                            () {},
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      100.h -
                                                                          530,
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child: Column(
                                                                        children: [
                                                                          TranslateTextFeildWidget(
                                                                            hint:
                                                                                'Starters',
                                                                            lebel:
                                                                                'Name',
                                                                          ),
                                                                          TextAreaWidget(
                                                                            hint:
                                                                                'Soup & Tapas',
                                                                            lebel:
                                                                                'Description',
                                                                          ),
                                                                          TranslateTextFeildWidget(
                                                                            hint:
                                                                                '',
                                                                            lebel:
                                                                                'Note',
                                                                          ),
                                                                          csvertSpace2,
                                                                        ]),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),

                                                            // csvertSpace,
                                                            Container(
                                                              height: 14.sp,
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          3.sp,
                                                                      right:
                                                                          3.sp),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border(
                                                                  top:
                                                                      BorderSide(
                                                                    width: 1,
                                                                    color:
                                                                        ccNatural250,
                                                                  ),
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  InkWell(
                                                                    child: Row(
                                                                      children: [
                                                                        Text(
                                                                          'Save',
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccDanger300,
                                                                            fontSize:
                                                                                3.956.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    onTap:
                                                                        () {},
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  csvertSpace3,
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
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
