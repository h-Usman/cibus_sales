import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';
import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';
import '../../widgets/dumb_widgets/footer.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import '../../widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import './add_new_veune_view_model.dart';

class AddNewVeuneView extends StatelessWidget {
  // final Function goToPageRequested;
  const AddNewVeuneView({
    Key? key,
    // required this.goToPageRequested,
  }) : super(key: key);
  get goToModalRequested => null;
  // get goToPageRequested => null;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddNewVeuneViewModel>.reactive(
      viewModelBuilder: () => AddNewVeuneViewModel(),
      onModelReady: (AddNewVeuneViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        AddNewVeuneViewModel model,
        Widget? child,
      ) {
        return Scaffold(
            body: SingleChildScrollView(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // LeftMenuWidget(
                //   goToPageRequested: goToPageRequested,
                //   goToModalRequested: goToModalRequested,
                // ),
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
                      SingleChildScrollView(
                        child: Column(children: [
                          Container(
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
                                csvertSpace14,
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 3.29.sp, right: 3.29.sp),
                                      // margin: const EdgeInsets.all(15),
                                      height: 12.sp,
                                      color: ccNeutral0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const <Widget>[
                                          PageTitlewWidget(
                                            titleName: 'Venue Settings',
                                          )
                                        ],
                                      ),
                                    ),

                                    // empty venue list of widget
                                    // AddVenueEmptyWidget(
                                    //   goToPageRequested: (val) =>
                                    //       model.goToPage(val),
                                    // ),
                                    // list of venues widget
                                    // VenuelistWidget(
                                    // goToPageRequested: (val) =>
                                    //     model.goToPage(val)
                                    // ),
                                    // end list of venues
                                    // empty venue widget in add venue ww
                                    Container(
                                      color: ccNeutral0,
                                      height: 100.h - 174,
                                      child: Container(
                                        // height: 90.sp,
                                        width: 100.w,
                                        margin: EdgeInsets.all(3.29.sp),
                                        // padding: const EdgeInsets.all(5),
                                        // color: ccNeutral0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3.29.sp),
                                          border:
                                              Border.all(color: ccNatural250),
                                        ),

                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          // if no data found
                                                          SizedBox(
                                                            width:
                                                                double.infinity,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                csvertSpace24,
                                                                SvgPicture
                                                                    .asset(
                                                                  "../assets/imges/data.svg",
                                                                  // height: 20.sp,
                                                                  width:
                                                                      19.12.sp,
                                                                  height:
                                                                      12.747.sp,
                                                                ),
                                                                csvertSpace4,
                                                                Text("No Data",
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
                                                          SizedBox(
                                                            width:
                                                                double.infinity,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                csvertSpace16,
                                                                Text(
                                                                    "No Venue  added yet!",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccDanger300,
                                                                      fontSize:
                                                                          5.714
                                                                              .sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    )),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 100.w,
                                                            child: InkWell(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  csvertSpace12,
                                                                  SvgPicture
                                                                      .asset(
                                                                    "../assets/imges/add-new.svg",
                                                                    // height: 20.sp,
                                                                    width:
                                                                        4.8.sp,
                                                                  ),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              3.29.sp)),
                                                                  Text(
                                                                    "Add venue",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color:
                                                                          ccDanger300,
                                                                      fontSize:
                                                                          3.95.sp,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              onTap: () {
                                                                model.goToRequestedPage(
                                                                    'venue_loaction');
                                                              },
                                                            ),
                                                          ),
                                                          // empty box with folder
                                                        ],
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
                                  ],
                                ),
                                csvertSpace12,
                              ],
                            ),
                          ),
                        ]),
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
              ]),
        ));
      },
    );
  }

  // void goToRequestedPage(String s) {}
}
