import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/add_text_feild.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/qr_menu_tabs.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './qr_menu_feedback_view_model.dart';

class QrMenuFeedbackView extends StatelessWidget {
  const QrMenuFeedbackView({super.key});

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Form 1';
    return ViewModelBuilder<QrMenuFeedbackViewModel>.reactive(
      viewModelBuilder: () => QrMenuFeedbackViewModel(),
      onModelReady: (QrMenuFeedbackViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        QrMenuFeedbackViewModel model,
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
                                  selectedTabName: 'feedback',
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
                                                                          'type email id’s',
                                                                      lebel:
                                                                          'Email addresses for survey results',
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
                                                                        "Default feedback form",
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
                                                                            'Form 1',
                                                                            'Form 2',
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
                                                                      RichText(
                                                                        text:
                                                                            TextSpan(
                                                                          text:
                                                                              'You can add more feedback forms from the ',
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.956.sp,
                                                                          ),
                                                                          children: const <
                                                                              TextSpan>[
                                                                            TextSpan(
                                                                                text: 'Feedbacks ',
                                                                                style: TextStyle(
                                                                                  color: ccDanger300,
                                                                                )),
                                                                            TextSpan(
                                                                              text: 'section.',
                                                                              // style: TextStyle(
                                                                              //   color: ccDanger300,
                                                                              // ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      )
                                                                    ],
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
