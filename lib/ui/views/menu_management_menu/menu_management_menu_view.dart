import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/menu_lists.widget.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';
import '../../widgets/dumb_widgets/add-menu/add_menu_tabs.widget.dart';
import '../../widgets/dumb_widgets/add_text_feild.widget.dart';
import '../../widgets/dumb_widgets/manage-menu/manage_menu_tabs.widget.dart';
import '../../widgets/dumb_widgets/page_title.widget.dart';
import '../../widgets/dumb_widgets/show_side_dialogue.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import '../../widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import './menu_management_menu_view_model.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MenuManagementMenuView extends StatelessWidget {
  // final Function goToPageRequested;
  // final Function goToModalRequested;
  const MenuManagementMenuView({
    Key? key,
    // required this.goToPageRequested,
    // required this.goToModalRequested,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MenuManagementMenuViewModel>.reactive(
      viewModelBuilder: () => MenuManagementMenuViewModel(),
      onModelReady: (MenuManagementMenuViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        MenuManagementMenuViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Row(
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
                            Column(children: [
                              csvertSpace14,
                              Container(
                                padding: EdgeInsets.only(
                                    left: 3.29.sp, right: 3.29.sp),
                                height: 12.sp,
                                color: ccNeutral0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const <Widget>[
                                    PageTitlewWidget(
                                      titleName: 'Menu Management',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                        width: 0.5,
                                        color: ccNatural250,
                                      ))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                // left: 3.29.sp,
                                                right: 3.29.sp),
                                            color: ccNeutral0,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  height: 10.98.sp,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      ManageMenuTabsWidget(
                                                        goToPageRequested:
                                                            (val) => model
                                                                .goToPage(val),
                                                        selectedTabName: 'menu',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.98.sp,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        height: 7.47.sp,
                                                        // width: 36.70.sp,
                                                        child:
                                                            ElevatedButton.icon(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor: ccDanger300, // foreground
                                                          ),
                                                          onPressed: () =>
                                                              showSideDialogue(
                                                            context: context,
                                                            title:
                                                                "Add new Menu",
                                                            cancelButtonText:
                                                                "Cancel",
                                                            saveButtonText:
                                                                "Save",
                                                            saveButtonPressed:
                                                                (dynamic val) {
                                                              // ignore: avoid_print
                                                              print(
                                                                  "hello i am clicked with $val");
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              height:
                                                                  100.h - 110,
                                                              // width: 100.w,
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 4.sp,
                                                                      left: 3.50
                                                                          .sp,
                                                                      right:
                                                                          4.sp),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border(
                                                                  bottom:
                                                                      BorderSide(
                                                                    color:
                                                                        ccNutural550,
                                                                    width: 1,
                                                                  ),
                                                                  top:
                                                                      BorderSide(
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
                                                                          10.98
                                                                              .sp,
                                                                      width:
                                                                          100.w,
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          AddMenuTabsWidget(
                                                                            goToPageRequested: (val) =>
                                                                                model.goToPage(val),
                                                                            selectedTabName:
                                                                                'overview',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                        height: 100.h -
                                                                            200,
                                                                        width:
                                                                            100.w,
                                                                        child: SingleChildScrollView(
                                                                            child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                          csvertSpace8,
                                                                          AddTextFeildWidget(
                                                                            hint:
                                                                                'Menu Name',
                                                                            lebel:
                                                                                'Name *',
                                                                            // value: 'ID',
                                                                          ),
                                                                          csvertSpace8,
                                                                          Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: double.infinity,
                                                                                child: Text(
                                                                                  "Description *",
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 4.395.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccDanger300,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(padding: EdgeInsets.only(bottom: 6.95.sp)),
                                                                              TextField(
                                                                                maxLines: 5,
                                                                                style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                                                                                // controller:
                                                                                //     TextEditingController(
                                                                                //         text:
                                                                                //             "36, Jalan Perdana 6/6, Pandan Perdana, 55300 Kuala Lumpur, Selangor, Malaysia"),
                                                                                decoration: InputDecoration(
                                                                                  contentPadding: EdgeInsets.all(2.63.sp),
                                                                                  border: OutlineInputBorder(
                                                                                      borderRadius: BorderRadius.circular(3.296.sp),
                                                                                      borderSide: const BorderSide(
                                                                                        color: ccPrimary300,
                                                                                        width: 1,
                                                                                      )),
                                                                                  hintText: "Add description",
                                                                                  hintStyle: TextStyle(
                                                                                    color: ccPrimary300,
                                                                                    fontSize: 3.956.sp,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                            ],
                                                                          ),
                                                                          csvertSpace8,
                                                                          AddTextFeildWidget(
                                                                            hint:
                                                                                'e.g. 10% service charge included.',
                                                                            lebel:
                                                                                'Note *',
                                                                            // value: 'ID',
                                                                          ),
                                                                          csvertSpace8,
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                "Display Menu ",
                                                                                style: GoogleFonts.sen(
                                                                                  fontSize: 4.395.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                  color: ccDanger300,
                                                                                ),
                                                                              ),
                                                                              SvgPicture.asset(
                                                                                "../assets/imges/warning.svg",
                                                                                width: 2.417.sp,
                                                                                height: 2.417.sp,
                                                                              ),
                                                                              cshorzSpace16,
                                                                              SizedBox(
                                                                                child: FlutterSwitch(width: 9.67.sp, height: 5.274.sp, activeColor: ccSuccess700, onToggle: (bool value) {}, value: true),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          csvertSpace2,
                                                                        ])))
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          icon:
                                                              SvgPicture.asset(
                                                            "../assets/imges/add-new-white.svg",
                                                            width: 4.178.sp,
                                                            height: 4.178.sp,
                                                          ),
                                                          label: Text(
                                                            'Create Menu',
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
                                              ],
                                            ),
                                          ),

                                          // no menu data widget
                                          // NoMenuWidget(),
                                          Container(
                                            color: ccNeutral0,
                                            margin: EdgeInsets.only(
                                              left: 3.29.sp,
                                              right: 3.29.sp,
                                            ),
                                            child: Container(
                                              color: const Color(0xFFFBF2F0),
                                              padding: EdgeInsets.only(
                                                top: 5.054.sp,
                                                bottom: 5.054.sp,
                                                right: 5.sp,
                                                left: 4.615.sp,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
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
                                                  RichText(
                                                    text: TextSpan(
                                                      text:
                                                          'You can translate your menu in multiple languages with ',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.395.sp,
                                                      ),
                                                      children: const <
                                                          TextSpan>[
                                                        TextSpan(
                                                            text:
                                                                'Translation Center.',
                                                            style: TextStyle(
                                                              color:
                                                                  ccDanger300,
                                                            )),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 100.h - 315,
                                            width: 100.w,
                                            margin: EdgeInsets.only(
                                                // top: 3.29.sp,
                                                left: 3.29.sp,
                                                right: 3.29.sp,
                                                bottom: 11.sp),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(3.269.sp),
                                                bottomRight:
                                                    Radius.circular(3.269.sp),
                                              ),
                                              border: Border.all(
                                                color: ccNatural250,
                                              ),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  cshorzSpace4,
                                                  MenusWidget(
                                                    mName: 'Main Menu',
                                                    status: true,
                                                    goToPageRequested: (val) =>
                                                        model.goToPage(val),
                                                  ),
                                                  MenusWidget(
                                                    mName: 'Old Menu',
                                                    status: false,
                                                    goToPageRequested: (val) =>
                                                        model.goToPage(val),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ])
                          ])),
                  Align(
                    alignment: Alignment.topCenter,
                    child: TopHeaderWidget(),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter, child: FooterWidget()),
                ]),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ignore: camel_case_types
class requrid {}
