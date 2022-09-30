import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/add_text_feild.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/feedback_forms_question.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/show_side_dialogue.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './feedback_form_add_questions_view_model.dart';

class FeedbackFormAddQuestionsView extends StatelessWidget {
  const FeedbackFormAddQuestionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FeedbackFormAddQuestionsViewModel>.reactive(
      viewModelBuilder: () => FeedbackFormAddQuestionsViewModel(),
      onModelReady: (FeedbackFormAddQuestionsViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        FeedbackFormAddQuestionsViewModel model,
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
                    SizedBox(
                      width: 100.w - 52.sp,
                      height: 100.h,
                      child: Stack(children: [
                        SingleChildScrollView(
                          child: Container(
                            // width: 15.w,
                            // height: 50,
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
                                            width: 52.747.sp,
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "../assets/imges/left-arrow-selected.svg",
                                                  width: 2.637.sp,
                                                  // height: 2.417.sp,
                                                ),
                                                cshorzSpace4,
                                                PageTitlewWidget(
                                                  titleName: 'Form 1',
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.98.sp,
                                            width: 135.38.sp,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 7.47.sp,
                                                  // width: 29.23.sp,
                                                  color: ccNeutral0,
                                                  // padding: EdgeInsets.only(
                                                  //     left: 1.758.sp,
                                                  //     right: 1.758.sp),
                                                  child: ElevatedButton.icon(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          ccDanger300,
                                                      padding: EdgeInsets.only(
                                                          left: 2.758.sp,
                                                          right: 2.758
                                                              .sp), // foreground
                                                    ),
                                                    onPressed: () =>
                                                        showSideDialogue(
                                                      context: context,
                                                      title: "Add Section",
                                                      cancelButtonText:
                                                          "Cancel",
                                                      saveButtonText: "Save",
                                                      saveButtonPressed:
                                                          (dynamic val) {
                                                        // print(
                                                        //     "hello i am clicked with $val");
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        height: 100.h - 110,
                                                        // width: 100.w,
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 4.sp,
                                                                left: 3.50.sp,
                                                                right: 4.sp),
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
                                                              csvertSpace2,
                                                              SizedBox(
                                                                  height:
                                                                      100.h -
                                                                          200,
                                                                  width: 100.w,
                                                                  child:
                                                                      SingleChildScrollView(
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                        csvertSpace4,
                                                                        AddTextFeildWidget(
                                                                          hint:
                                                                              'Form 1',
                                                                          lebel:
                                                                              'Form Name *',
                                                                          // value: 'ID',
                                                                        ),
                                                                        csvertSpace4,
                                                                        AddTextFeildWidget(
                                                                          hint:
                                                                              'Please Give Us 60 Seconds!',
                                                                          lebel:
                                                                              'Header Text',
                                                                          // value: 'ID',
                                                                        ),
                                                                        csvertSpace2,
                                                                      ])))
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    icon: SvgPicture.asset(
                                                      "../assets/imges/settings-white.svg",
                                                      width: 3.51.sp,
                                                      height: 4.39.sp,
                                                    ),
                                                    label: Text(
                                                      'Settings',
                                                      style: GoogleFonts.sen(
                                                        color: ccNeutral0,
                                                        fontSize: 4.39.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ), // <-- Text
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // order tables
                                    Container(
                                      color: ccNeutral0,
                                      child: Column(children: [
                                        Container(
                                          width: 100.w,
                                          margin: EdgeInsets.all(3.29.sp),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3.29.sp),
                                            border:
                                                Border.all(color: ccNatural250),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 100.h - 64.sp,
                                                margin:
                                                    EdgeInsets.only(top: 1.sp),
                                                child: ListView.builder(
                                                    itemCount: 3,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return FormQuestionWidget();
                                                    }),
                                              ),
                                              csvertSpace8,
                                              SizedBox(
                                                height: 6.sp,
                                                // color: Colors.amber,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        cshorzSpace8,
                                                        Text(
                                                          "Add Question",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccDanger300,
                                                            fontSize: 4.395.sp,
                                                          ),
                                                        ),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 3.29
                                                                        .sp)),
                                                        SvgPicture.asset(
                                                          "../assets/imges/plus.svg",
                                                          // height: 20.sp,
                                                          width: 3.sp,
                                                          height: 3.sp,
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                        right: 4.5.sp,
                                                      ),
                                                      height: 7.47.sp,
                                                      child:
                                                          ElevatedButton.icon(
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
                                                          style:
                                                              GoogleFonts.sen(
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
                                              csvertSpace4,
                                            ],
                                          ),
                                        ),
                                        csvertSpace12,
                                      ]),
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
