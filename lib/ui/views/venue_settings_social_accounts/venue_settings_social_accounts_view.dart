import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';
import '../../theme/cibus.colors.dart';
import '../../widgets/dumb_widgets/footer.widget.dart';
import '../../widgets/dumb_widgets/page_title.widget.dart';
import '../../widgets/dumb_widgets/social_textfeild.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import '../../widgets/dumb_widgets/venu-settings/venu_settings_tabs.widget.dart';
import '../../widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import './venue_settings_social_accounts_view_model.dart';

class VenueSettingsSocialAccountsView extends StatelessWidget {
  const VenueSettingsSocialAccountsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VenueSettingsSocialAccountsViewModel>.reactive(
      viewModelBuilder: () => VenueSettingsSocialAccountsViewModel(),
      onModelReady: (VenueSettingsSocialAccountsViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        VenueSettingsSocialAccountsViewModel model,
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
                      child: Stack(
                        children: [
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      VenuSettingsTabsWidget(
                                        goToPageRequested: (val) =>
                                            model.goToPage(val),
                                        selectedTabName: 'social-accounts',
                                      ),
                                      // order tables
                                      Container(
                                        color: ccNeutral0,
                                        height: 100.h - 225,
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
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
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
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 3
                                                                            .sp)),
                                                            const SocialMediaWidget(
                                                              hint:
                                                                  'instagram.com/',
                                                              lebel:
                                                                  'Instagram',
                                                              // value:
                                                              //     'instagram.com/',
                                                              icon: 'insta',
                                                            ),
                                                            const SocialMediaWidget(
                                                              hint:
                                                                  'twitter.com/',
                                                              lebel: 'Twitter',
                                                              // value:
                                                              //     'twitter.com/',
                                                              icon: 'twitter',
                                                            ),
                                                            const SocialMediaWidget(
                                                              hint:
                                                                  'youtube.com/',
                                                              lebel: 'Youtube',
                                                              // value:
                                                              //     'youtube.com/',
                                                              icon: 'youtube',
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 3
                                                                            .sp)),
                                                            const SocialMediaWidget(
                                                              hint:
                                                                  'facebook.com/',
                                                              lebel: 'Facebook',
                                                              // value:
                                                              //     'instagram.com/',
                                                              icon: 'facebook',
                                                            ),
                                                            const SocialMediaWidget(
                                                              hint:
                                                                  'snapchat.com/',
                                                              lebel: 'Snapchat',
                                                              // value:
                                                              //     'twitter.com/',
                                                              icon: 'schat',
                                                            ),
                                                            const SocialMediaWidget(
                                                              hint:
                                                                  'tiktok.com/@',
                                                              lebel: 'Tiktok',
                                                              // value:
                                                              //     'youtube.com/',
                                                              icon: 'ticktok',
                                                            ),
                                                            Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                              bottom: 2.39.sp,
                                                            )),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
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
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      // Padding(
                                                      //     padding: EdgeInsets.only(
                                                      //   left: 4.39.sp,
                                                      // )),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 4.5.sp,
                                                        ),
                                                        height: 7.47.sp,
                                                        // width: 36.70.sp,
                                                        child:
                                                            ElevatedButton.icon(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                ccDanger300,
                                                          ),
                                                          onPressed: () {},
                                                          icon:
                                                              SvgPicture.asset(
                                                            "../assets/imges/check-white.svg",
                                                            width: 4.178.sp,
                                                            height: 3.076.sp,
                                                          ),
                                                          label: Text(
                                                            'Save',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color: ccNeutral0,
                                                              fontSize:
                                                                  4.395.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ), // <-- Text
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
                                      csvertSpace12,
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
                        ],
                      ),
                    ),
                  ],
                ),
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
