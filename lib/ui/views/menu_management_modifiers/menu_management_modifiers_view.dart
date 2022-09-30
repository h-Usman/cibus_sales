import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';
import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';
import '../../widgets/dumb_widgets/footer.widget.dart';
import '../../widgets/dumb_widgets/manage-menu/manage_menu_tabs.widget.dart';
import '../../widgets/dumb_widgets/modifiers_list.widget.dart';
import '../../widgets/dumb_widgets/page_title.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import '../../widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import './menu_management_modifiers_view_model.dart';

class MenuManagementModifiersView extends StatelessWidget {
  const MenuManagementModifiersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MenuManagementModifiersViewModel>.reactive(
      viewModelBuilder: () => MenuManagementModifiersViewModel(),
      onModelReady: (MenuManagementModifiersViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        MenuManagementModifiersViewModel model,
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
                                                        selectedTabName:
                                                            'modifiers',
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
                                                            backgroundColor:
                                                                ccDanger300, // foreground
                                                          ),
                                                          onPressed: () =>
                                                              showDialog(
                                                            context: context,
                                                            builder: (_) =>
                                                                AlertDialog(
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              2.197.sp))),
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
                                                                  color:
                                                                      ccNatural250,
                                                                ))),
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      decoration: const BoxDecoration(
                                                                          border: Border(
                                                                              bottom: BorderSide(
                                                                        width:
                                                                            0.5,
                                                                        color:
                                                                            ccNatural250,
                                                                      ))),
                                                                      height:
                                                                          14.62
                                                                              .sp,
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Container(
                                                                              height: 10.62.sp,
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Text(
                                                                                    'Add a modifier group',
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
                                                                            height:
                                                                                10.62.sp,
                                                                            width:
                                                                                10.sp,
                                                                            child:
                                                                                ElevatedButton(
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
                                                                    SizedBox(
                                                                      height:
                                                                          55.sp,
                                                                      width: double
                                                                          .infinity,
                                                                      child:
                                                                          SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.only(top: 4.83.sp),
                                                                            ),
                                                                            SizedBox(
                                                                              width: double.infinity,
                                                                              child: SizedBox(
                                                                                width: double.infinity,
                                                                                child: Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    SizedBox(
                                                                                      width: double.infinity,
                                                                                      child: Text(
                                                                                        "Group Name *",
                                                                                        style: GoogleFonts.sen(
                                                                                          fontSize: 4.395.sp,
                                                                                          fontWeight: FontWeight.w400,
                                                                                          color: ccDanger300,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(padding: EdgeInsets.only(bottom: 2.sp)),
                                                                                    SizedBox(
                                                                                      width: 87.362.sp,
                                                                                      height: 8.791.sp,
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.symmetric(
                                                                                            // horizontal: 5.054.sp,
                                                                                            horizontal: 0,
                                                                                            vertical: 0),
                                                                                        child: TextField(
                                                                                          style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                                                                                          // controller: TextEditingController(
                                                                                          //   text: value,
                                                                                          // ),
                                                                                          decoration: InputDecoration(
                                                                                            contentPadding: EdgeInsets.only(left: 2.63.sp),
                                                                                            border: OutlineInputBorder(
                                                                                                borderRadius: BorderRadius.circular(1.098.sp),
                                                                                                borderSide: BorderSide(
                                                                                                  color: ccPrimary300,
                                                                                                  width: 0.2197.sp,
                                                                                                )),
                                                                                            hintText: 'Set to New Amount',
                                                                                            hintStyle: TextStyle(
                                                                                              color: ccPrimary300,
                                                                                              fontSize: 3.956.sp,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(padding: EdgeInsets.only(bottom: 4.sp)),
                                                                                    Text(
                                                                                      "Modifiers",
                                                                                      style: GoogleFonts.sen(
                                                                                        fontSize: 4.395.sp,
                                                                                        fontWeight: FontWeight.w400,
                                                                                        color: ccDanger300,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              children: [
                                                                                Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(padding: EdgeInsets.only(bottom: 4.sp)),
                                                                                    Text("Name",
                                                                                        style: GoogleFonts.sen(
                                                                                          color: ccDanger300,
                                                                                          fontSize: 4.395.sp,
                                                                                          fontWeight: FontWeight.w400,
                                                                                        )),
                                                                                    Padding(padding: EdgeInsets.only(bottom: 2.sp)),
                                                                                    SizedBox(
                                                                                      width: 55.sp,
                                                                                      height: 8.791.sp,
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.symmetric(
                                                                                            // horizontal: 5.054.sp,
                                                                                            horizontal: 0,
                                                                                            vertical: 0),
                                                                                        child: TextField(
                                                                                          style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                                                                                          // controller: TextEditingController(
                                                                                          //   text: value,
                                                                                          // ),
                                                                                          decoration: InputDecoration(
                                                                                            contentPadding: EdgeInsets.only(left: 2.63.sp),
                                                                                            border: OutlineInputBorder(
                                                                                                borderRadius: BorderRadius.circular(1.098.sp),
                                                                                                borderSide: BorderSide(
                                                                                                  color: ccPrimary300,
                                                                                                  width: 0.2197.sp,
                                                                                                )),
                                                                                            hintText: 'Cheese',
                                                                                            hintStyle: TextStyle(
                                                                                              color: ccPrimary300,
                                                                                              fontSize: 3.956.sp,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                cshorzSpace4,
                                                                                Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(padding: EdgeInsets.only(bottom: 4.sp)),
                                                                                    Text("Price",
                                                                                        style: GoogleFonts.sen(
                                                                                          color: ccDanger300,
                                                                                          fontSize: 4.395.sp,
                                                                                          fontWeight: FontWeight.w400,
                                                                                        )),
                                                                                    Padding(padding: EdgeInsets.only(bottom: 2.sp)),
                                                                                    SizedBox(
                                                                                      width: 42.sp,
                                                                                      height: 8.791.sp,
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.symmetric(
                                                                                            // horizontal: 5.054.sp,
                                                                                            horizontal: 0,
                                                                                            vertical: 0),
                                                                                        child: TextField(
                                                                                          style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                                                                                          // controller: TextEditingController(
                                                                                          //   text: value,
                                                                                          // ),
                                                                                          decoration: InputDecoration(
                                                                                            contentPadding: EdgeInsets.only(left: 2.63.sp),
                                                                                            border: OutlineInputBorder(
                                                                                                borderRadius: BorderRadius.circular(1.098.sp),
                                                                                                borderSide: BorderSide(
                                                                                                  color: ccPrimary300,
                                                                                                  width: 0.2197.sp,
                                                                                                )),
                                                                                            prefixIcon: Container(
                                                                                                decoration:
                                                                                                    // ignore: prefer_const_constructors
                                                                                                    BoxDecoration(
                                                                                                  borderRadius: BorderRadius.only(
                                                                                                    topLeft: Radius.circular(1.758.sp),
                                                                                                    bottomLeft: Radius.circular(1.758.sp),
                                                                                                  ),
                                                                                                  border: Border.all(
                                                                                                    color: ccPrimary300,
                                                                                                    width: 1,
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
                                                                                                  color: ccBakground,
                                                                                                  margin: EdgeInsets.only(left: 1),
                                                                                                  child: Center(
                                                                                                    child: Text(
                                                                                                      "RM",
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
                                                                                            hintText: '5.00',
                                                                                            hintStyle: TextStyle(
                                                                                              color: ccPrimary300,
                                                                                              fontSize: 3.956.sp,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                cshorzSpace4,
                                                                                Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(padding: EdgeInsets.only(bottom: 4.sp)),
                                                                                    Text("Calories",
                                                                                        style: GoogleFonts.sen(
                                                                                          color: ccDanger300,
                                                                                          fontSize: 4.395.sp,
                                                                                          fontWeight: FontWeight.w400,
                                                                                        )),
                                                                                    Padding(padding: EdgeInsets.only(bottom: 2.sp)),
                                                                                    SizedBox(
                                                                                      width: 42.sp,
                                                                                      height: 8.791.sp,
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.symmetric(
                                                                                            // horizontal: 5.054.sp,
                                                                                            horizontal: 0,
                                                                                            vertical: 0),
                                                                                        child: TextField(
                                                                                          style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
                                                                                          // controller: TextEditingController(
                                                                                          //   text: value,
                                                                                          // ),
                                                                                          decoration: InputDecoration(
                                                                                            contentPadding: EdgeInsets.only(left: 2.63.sp),
                                                                                            border: OutlineInputBorder(
                                                                                                borderRadius: BorderRadius.circular(1.098.sp),
                                                                                                borderSide: BorderSide(
                                                                                                  color: ccPrimary300,
                                                                                                  width: 0.2197.sp,
                                                                                                )),
                                                                                            prefixIcon: Container(
                                                                                                decoration:
                                                                                                    // ignore: prefer_const_constructors
                                                                                                    BoxDecoration(
                                                                                                  borderRadius: BorderRadius.only(
                                                                                                    topLeft: Radius.circular(1.758.sp),
                                                                                                    bottomLeft: Radius.circular(1.758.sp),
                                                                                                  ),
                                                                                                  border: Border.all(
                                                                                                    color: ccPrimary300,
                                                                                                    width: 1,
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
                                                                                                  color: ccBakground,
                                                                                                  margin: EdgeInsets.only(left: 1),
                                                                                                  child: Center(
                                                                                                    child: Text(
                                                                                                      "cal",
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
                                                                                            hintText: '200',
                                                                                            hintStyle: TextStyle(
                                                                                              color: ccPrimary300,
                                                                                              fontSize: 3.956.sp,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                cshorzSpace4,
                                                                                SizedBox(
                                                                                  child: FlutterSwitch(width: 9.67.sp, height: 5.274.sp, activeColor: ccSuccess700, onToggle: (bool value) {}, value: true),
                                                                                ),
                                                                                cshorzSpace4,
                                                                                SvgPicture.asset(
                                                                                  "../assets/imges/move.svg",
                                                                                  width: 3.516.sp,
                                                                                  height: 5.275.sp,
                                                                                ),
                                                                                cshorzSpace4,
                                                                                Tooltip(
                                                                                  message: "Delete Modifiers",
                                                                                  textStyle: TextStyle(
                                                                                    color: ccNeutral0,
                                                                                  ),
                                                                                  child: SvgPicture.asset(
                                                                                    "../assets/imges/close-red.svg",
                                                                                    width: 3.956.sp,
                                                                                    height: 3.736.sp,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            csvertSpace4,
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    // end scrool
                                                                    SizedBox(
                                                                      width:
                                                                          50.sp,
                                                                      child:
                                                                          InkWell(
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Text(
                                                                              "Add More Modifiers",
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
                                                                            () {
                                                                          // model.goToPage('');
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              actions: [
                                                                Container(
                                                                  height:
                                                                      7.25.sp,
                                                                  width:
                                                                      29.23.sp,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .only(
                                                                    bottom:
                                                                        4.39.sp,
                                                                  ),
                                                                  // color: Colors.green,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            1.098.sp),
                                                                    border: Border.all(
                                                                        color:
                                                                            ccNutural550),
                                                                  ),
                                                                  child:
                                                                      ElevatedButton
                                                                          .icon(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      backgroundColor:
                                                                          ccNeutral0, // foreground
                                                                    ),
                                                                    icon: SvgPicture
                                                                        .asset(
                                                                      "../assets/imges/close.svg",
                                                                      width: 2.85
                                                                          .sp,
                                                                      height:
                                                                          2.85.sp,
                                                                    ),
                                                                    label: Text(
                                                                      'Cancel',
                                                                      style: GoogleFonts
                                                                          .sen(
                                                                        color:
                                                                            ccNutural550,
                                                                        fontSize:
                                                                            4.39.sp,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                    ), // <-- Text
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                  left: 7.25.sp,
                                                                )),
                                                                Container(
                                                                  height:
                                                                      7.25.sp,
                                                                  width:
                                                                      29.23.sp,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .only(
                                                                    bottom:
                                                                        4.39.sp,
                                                                  ),
                                                                  // color: Colors.green,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            1.098.sp),
                                                                    border: Border.all(
                                                                        color:
                                                                            ccDanger300),
                                                                  ),
                                                                  child:
                                                                      ElevatedButton
                                                                          .icon(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      backgroundColor:
                                                                          ccDanger300,
                                                                      elevation:
                                                                          0,
                                                                      shadowColor:
                                                                          Colors
                                                                              .transparent,
                                                                    ),
                                                                    icon: SvgPicture
                                                                        .asset(
                                                                      "../assets/imges/check-white.svg",
                                                                      width: 4.17
                                                                          .sp,
                                                                      height:
                                                                          3.07.sp,
                                                                    ),
                                                                    label: Text(
                                                                      'OK',
                                                                      style: GoogleFonts
                                                                          .sen(
                                                                        color:
                                                                            ccNeutral0,
                                                                        fontSize:
                                                                            4.39.sp,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                    ), // <-- Text
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                  left: 5.25.sp,
                                                                )),
                                                              ],
                                                            ),
                                                          ),
                                                          icon:
                                                              SvgPicture.asset(
                                                            "../assets/imges/add-new-white.svg",
                                                            width: 4.178.sp,
                                                            height: 4.178.sp,
                                                          ),
                                                          label: Text(
                                                            'Add a Modifier group',
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
                                            height: 100.h - 310,
                                            width: 100.w,
                                            margin: EdgeInsets.only(
                                                top: 3.29.sp,
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
                                                  Container(
                                                    height: 100.h - 381,
                                                    decoration: BoxDecoration(
                                                      // color: ccDanger300,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.29.sp),
                                                      border: Border.all(
                                                          color: ccDanger300,
                                                          width: 0.5),
                                                    ),
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    margin: EdgeInsets.all(
                                                        8.351.sp),
                                                    child: Container(
                                                      // height: 90.sp,
                                                      width: 100.w,
                                                      // margin: EdgeInsets.all(
                                                      //     3.29.sp),
                                                      // padding: const EdgeInsets.all(5),
                                                      // color: ccNeutral0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    3.29.sp),
                                                        border: Border.all(
                                                            color:
                                                                ccNatural250),
                                                      ),

                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                            width:
                                                                double.infinity,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  height:
                                                                      14.945.sp,
                                                                  color:
                                                                      ccDanger100,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      cshorzSpace4,
                                                                      Container(
                                                                        width: 92.747
                                                                            .sp,
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Text(
                                                                            "Group Name",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            )),
                                                                      ),
                                                                      Container(
                                                                        width: 96.483
                                                                            .sp,
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Text(
                                                                            "Modifier",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            )),
                                                                      ),
                                                                      Container(
                                                                        // height: 50,
                                                                        // width:
                                                                        //     52.307.sp,
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Text(
                                                                            "Actions",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            )),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                // if no modifilers found
                                                                // NoModifiresWidget(),
                                                                Container(
                                                                  height: 45.sp,
                                                                  padding: EdgeInsets.only(
                                                                      bottom: 3.956
                                                                          .sp),
                                                                  child: ListView
                                                                      .builder(
                                                                    itemCount:
                                                                        2,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      return ModifiresListWidget();
                                                                    },
                                                                  ),
                                                                ),
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
