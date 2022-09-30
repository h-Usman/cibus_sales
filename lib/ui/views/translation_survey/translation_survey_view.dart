import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/TranslationTabs/translation_tabs.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/question_textfeild.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/select_language.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './translation_survey_view_model.dart';

class TranslationSurveyView extends StatelessWidget {
  const TranslationSurveyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TranslationSurveyViewModel>.reactive(
      viewModelBuilder: () => TranslationSurveyViewModel(),
      onModelReady: (TranslationSurveyViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        TranslationSurveyViewModel model,
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
                                                  selectedTabName: 'survey',
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      color: ccNeutral0,
                                      height: 100.h - 240,
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
                                              width: 100.w - 60.sp,
                                              height: 100.h - 240,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(3.269.sp),
                                                ),
                                                border: Border.all(
                                                  color: ccNatural250,
                                                ),
                                              ),
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
                                                        width: 113.sp,
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
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
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
                                                                        csvertSpace4,
                                                                        Container(
                                                                          padding: EdgeInsets.only(
                                                                              left: 3.sp,
                                                                              right: 3.sp,
                                                                              bottom: 3.5.sp),
                                                                          child:
                                                                              Text(
                                                                            'Welcome Message',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccNutural550,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'Is this your first time at our restaurant?',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'What is your overall satisfaction with our restaurant?',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'How would you rate the hygiene?',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'How would you rate the taste of our food?',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'Would you come back to eat with us again?',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'Name',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'Email address',
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
                                                        // height: 110.sp,
                                                        width: 113.sp,
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
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
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
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        csvertSpace4,
                                                                        Container(
                                                                          padding: EdgeInsets.only(
                                                                              left: 3.sp,
                                                                              right: 3.sp,
                                                                              bottom: 3.5.sp),
                                                                          child:
                                                                              Text(
                                                                            'Modifier Group Name',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccNutural550,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'Is this your first time at our restaurant?',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'What is your overall satisfaction with our restaurant?',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'How would you rate the hygiene?',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'How would you rate the taste of our food?',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'Would you come back to eat with us again?',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'Name',
                                                                        ),
                                                                        TextFeildWidget(
                                                                          hint:
                                                                              'Email address',
                                                                        ),
                                                                        csvertSpace2,
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
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
