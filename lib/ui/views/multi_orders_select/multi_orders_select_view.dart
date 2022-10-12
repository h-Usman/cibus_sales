import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../widgets/dumb_widgets/order_list_item.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import './multi_orders_select_view_model.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MultiOrdersSelectView extends StatelessWidget {
  const MultiOrdersSelectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MultiOrdersSelectViewModel>.reactive(
      viewModelBuilder: () => MultiOrdersSelectViewModel(),
      onModelReady: (MultiOrdersSelectViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        MultiOrdersSelectViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          backgroundColor: ccNeutral0,
          body: SingleChildScrollView(
            child: Container(
              color: ccBakground,
              width: 100.w,
              // height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 51.sp,
                    // height: 50,
                    color: ccBakground,
                    // decoration: const BoxDecoration(
                    //     border: Border(
                    //         bottom: BorderSide(
                    //   width: 1.0,
                    //   color: ccNatural250,
                    // ))),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(children: [
                          Container(
                            height: 14.sp,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 1.0,
                              color: ccNatural250,
                            ))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  // width: 10.w,
                                  child: SvgPicture.asset(
                                    "../assets/imges/sidebar-logo.svg",
                                    // height: 20.sp,
                                    width: 9.7.sp,
                                    height: 9.7.sp,
                                  ),
                                ),
                                Text(
                                  "Chef n Stuff",
                                  style: GoogleFonts.sen(
                                    color: ccDanger300,
                                    fontSize: 5.71.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                            top: 9.23.sp,
                          )),
                          SizedBox(
                            height: 12.sp,
                            child: InkWell(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(
                                      left: 5.5.sp,
                                    )),
                                    SizedBox(
                                      child: SvgPicture.asset(
                                        "../assets/imges/home.svg",
                                        height: 3.95.sp,
                                        width: 3.95.sp,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                      left: 4.sp,
                                    )),
                                    Text(
                                      "Dashboard",
                                      style: GoogleFonts.sen(
                                        color: ccNutural550,
                                        fontSize: 3.73.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  model.goToPage('dashboard');
                                  // goToPageRequested('dashboard');
                                }),
                          ),
                          SizedBox(
                            height: 12.sp,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 5.5.sp,
                                )),
                                SizedBox(
                                  child: SvgPicture.asset(
                                    "../assets/imges/reports.svg",
                                    height: 3.95.sp,
                                    width: 3.95.sp,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 4.sp,
                                )),
                                Text(
                                  "Reports",
                                  style: GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 3.73.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 12.sp,
                            color: ccNetural285,
                            child: InkWell(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(
                                      left: 5.5.sp,
                                    )),
                                    SizedBox(
                                      child: SvgPicture.asset(
                                        "../assets/imges/v-order.svg",
                                        height: 3.95.sp,
                                        width: 3.95.sp,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                      left: 4.sp,
                                    )),
                                    Text(
                                      "Orders",
                                      style: GoogleFonts.sen(
                                        color: ccDanger300,
                                        fontSize: 3.95.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  // goToPageRequested('order');
                                  // goToPageRequested('dashboard');
                                  model.goToPage('order');
                                }),
                          ),
                          SizedBox(
                            height: 12.sp,
                            child: InkWell(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(
                                    left: 5.5.sp,
                                  )),
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      "../assets/imges/menu.svg",
                                      height: 3.95.sp,
                                      width: 3.95.sp,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                    left: 4.sp,
                                  )),
                                  Text(
                                    "Manage Menu",
                                    style: GoogleFonts.sen(
                                      color: ccNutural550,
                                      fontSize: 3.73.sp,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                model.goToPage('menu');
                                // goToPageRequested!('menu-management');
                              },
                            ),
                          ),
                          SizedBox(
                            height: 12.sp,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 5.5.sp,
                                )),
                                SizedBox(
                                  child: SvgPicture.asset(
                                    "../assets/imges/feedbacks.svg",
                                    height: 3.95.sp,
                                    width: 3.95.sp,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 4.sp,
                                )),
                                Text(
                                  "Feedbacks",
                                  style: GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 3.73.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12.sp,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 5.5.sp,
                                )),
                                SizedBox(
                                  child: SvgPicture.asset(
                                    "../assets/imges/venue.svg",
                                    height: 3.95.sp,
                                    width: 3.95.sp,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 4.sp,
                                )),
                                Text(
                                  "Venue Settings",
                                  style: GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 3.73.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12.sp,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 5.5.sp,
                                )),
                                SizedBox(
                                  child: SvgPicture.asset(
                                    "../assets/imges/translate.svg",
                                    height: 3.95.sp,
                                    width: 3.95.sp,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 4.sp,
                                )),
                                Text(
                                  "Translations",
                                  style: GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 3.73.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 12.sp,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 1.0,
                              color: ccNatural250,
                            ))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 5.5.sp,
                                )),
                                SizedBox(
                                  child: SvgPicture.asset(
                                    "../assets/imges/integ.svg",
                                    height: 3.95.sp,
                                    width: 3.95.sp,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 4.sp,
                                )),
                                Text(
                                  "Integrations",
                                  style: GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 3.73.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                            top: 5.05.sp,
                          )),
                          SizedBox(
                            height: 4.50.sp,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "App Configuration",
                                  style: GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 3.73.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12.sp,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 5.5.sp,
                                )),
                                SizedBox(
                                  child: SvgPicture.asset(
                                    "../assets/imges/qr.svg",
                                    height: 3.95.sp,
                                    width: 3.95.sp,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                  left: 4.sp,
                                )),
                                Text(
                                  "Dine-in QR Menu",
                                  style: GoogleFonts.sen(
                                    color: ccNutural550,
                                    fontSize: 3.73.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                            bottom: 13.20.sp,
                          )),
                        ]),
                        Container(
                            color: ccNetural350,
                            child: Column(children: [
                              Container(
                                height: 14.28.sp,
                                color: ccNetural350,
                                // decoration: const BoxDecoration(
                                //     border: Border(
                                //         bottom: BorderSide(
                                //   width: 1.0,
                                //   color: ccNatural250,
                                // ))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                        padding:
                                            EdgeInsets.only(left: 3.29.sp)),
                                    SizedBox(
                                      // width: 10.w,
                                      child: SvgPicture.asset(
                                        "../assets/imges/f-logo.svg",
                                        height: 5.71.sp,
                                        width: 8.13.sp,
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(left: 3.29.sp)),
                                    SizedBox(
                                      child: SvgPicture.asset(
                                        "../assets/imges/c-logo.svg",
                                        height: 3.95.sp,
                                        width: 13.186.sp,
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(left: 13.4.sp)),
                                    const SizedBox(
                                      child: Icon(
                                        Icons.arrow_back_ios_new,
                                        color: ccPrimary300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   child: const SizedBox(
                              //     // width: 10.w,
                              //     child: Icon(
                              //       Icons.arrow_back_ios_new,
                              //       color: ccPrimary300,
                              //     ),
                              //   ),
                              // )
                            ]))
                      ],
                    ),
                  ),
                  // LeftMenuWidget(
                  //   goToPageRequested: (val) => model.goToPage(val),
                  // ),
                  Expanded(
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
                          const TopHeaderWidget(),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            // margin: const EdgeInsets.all(15),
                            height: 12.sp,
                            color: ccNeutral0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Orders",
                                  style: GoogleFonts.sen(
                                    color: ccNetural1000,
                                    fontSize: 6.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            color: ccNeutral0,
                            // width: double.infinity,
                            // height: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 93.40.sp,
                                  // color: Colors.blue,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 5.49.sp,
                                        width: 11.64.sp,
                                        // color: Colors.red,
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                          width: 0.5,
                                          color: ccDanger300,
                                        ))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "All",
                                              style: GoogleFonts.sen(
                                                color: ccDanger300,
                                                fontSize: 3.95.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Container(
                                              width: 3.29.sp,
                                              height: 3.29.sp,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              child: Container(
                                                color: ccNetural290,
                                                child: Center(
                                                  child: Text(
                                                    "9",
                                                    style: GoogleFonts.sen(
                                                      color: ccDanger300,
                                                      fontSize: 2.63.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.49.sp,
                                        width: 15.16.sp,
                                        // color: Colors.red,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "New",
                                              style: GoogleFonts.sen(
                                                color: ccNutural550,
                                                fontSize: 3.95.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Container(
                                              width: 3.29.sp,
                                              height: 3.29.sp,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              child: Container(
                                                color: ccNetural290,
                                                child: Center(
                                                  child: Text(
                                                    "7",
                                                    style: GoogleFonts.sen(
                                                      color: const Color(
                                                          0xFF70708C),
                                                      fontSize: 2.63.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.49.sp,
                                        width: 26.59.sp,
                                        // color: Colors.red,

                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Preparing",
                                              style: GoogleFonts.sen(
                                                color: ccNutural550,
                                                fontSize: 3.95.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Container(
                                              width: 3.29.sp,
                                              height: 3.29.sp,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              child: Container(
                                                color: ccNetural290,
                                                child: Center(
                                                  child: Text(
                                                    "7",
                                                    style: GoogleFonts.sen(
                                                      color: const Color(
                                                          0xFF70708C),
                                                      fontSize: 2.63.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.49.sp,
                                        width: 18.90.sp,
                                        // color: Colors.red,

                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Ready",
                                              style: GoogleFonts.sen(
                                                color: ccNutural550,
                                                fontSize: 3.95.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Container(
                                              width: 3.29.sp,
                                              height: 3.29.sp,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              child: Container(
                                                color: ccNetural290,
                                                child: Center(
                                                  child: Text(
                                                    "7",
                                                    style: GoogleFonts.sen(
                                                      color: const Color(
                                                          0xFF70708C),
                                                      fontSize: 2.63.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: 50,
                                    // width: 135.38.sp,
                                    // color: Colors.blue,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 7.50.sp,
                                          width: 43.19.sp,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1.098.sp),
                                            border: Border.all(
                                              color: ccNutural550,
                                            ),
                                          ),
                                          child: ElevatedButton.icon(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  ccNeutral0, // foreground
                                            ),
                                            icon: SvgPicture.asset(
                                              "../assets/imges/order.svg",
                                              width: 4.175.sp,
                                              height: 4.175.sp,
                                            ),
                                            label: Text(
                                              'Change Status',
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
                                          left: 4.39.sp,
                                        )),
                                        Container(
                                          height: 7.50.sp,
                                          width: 42.56.sp,
                                          // color: Colors.green,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1.098.sp),
                                            border:
                                                Border.all(color: ccNutural550),
                                          ),
                                          child: ElevatedButton.icon(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: ccNeutral0,
                                            ),
                                            icon: SvgPicture.asset(
                                              "../assets/imges/merge.svg",
                                              width: 3.29.sp,
                                              height: 3.29.sp,
                                            ),
                                            label: Text(
                                              'Merge Orders',
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
                                          left: 4.39.sp,
                                        )),
                                        SizedBox(
                                          height: 7.50.sp,
                                          width: 29.23.sp,
                                          child: ElevatedButton.icon(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  ccDanger300, // foreground
                                            ),
                                            onPressed: () {},
                                            icon: SvgPicture.asset(
                                              "../assets/imges/delete-white.svg",
                                              width: 3.51.sp,
                                              height: 4.39.sp,
                                            ),
                                            label: Text(
                                              'Delete',
                                              style: GoogleFonts.sen(
                                                color: ccNeutral0,
                                                fontSize: 4.39.sp,
                                                fontWeight: FontWeight.w400,
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
                          // order tables
                          Container(
                            color: ccNeutral0,
                            child: Container(
                              // height: 90.sp,
                              width: 100.w,
                              margin: EdgeInsets.all(3.29.sp),
                              // padding: const EdgeInsets.all(5),
                              // color: ccNeutral0.white,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.29.sp),
                                border: Border.all(color: ccNatural250),
                                // color: Colors.transparent,
                                // border: const Border(
                                //   left: BorderSide(
                                //     color: Colors.green,
                                //     width: 3,
                                //   ),
                                // ),

                                // boxShadow: const [
                                //   BoxShadow(
                                //       color:
                                //           Color.fromRGBO(133, 133, 133, 0.15),
                                //       spreadRadius: 4),
                                // ],
                              ),
                              // decoration: BoxDecoration(
                              // color: Colors.blueAccent,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: ccNeutral0, width: 0.5),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                            padding: EdgeInsets.only(left: 15)),
                                        Expanded(
                                          child: SizedBox(
                                            height: 50,
                                            // width: 20.w,
                                            // color: Colors.red,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              // color: Colors.red,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "9 Results Listed",
                                                      style: GoogleFonts.sen(
                                                        color: const Color(
                                                            0xFF70708C),
                                                        fontSize: 3.95.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        // Expanded(
                                        //   child: SizedBox(
                                        //     height: 50,
                                        //     width: 50,
                                        //     // color: Colors.blue,
                                        //     child: Row(
                                        //       mainAxisAlignment:
                                        //           MainAxisAlignment.end,
                                        //       crossAxisAlignment:
                                        //           CrossAxisAlignment.center,
                                        //       children: <Widget>[
                                        //         Row(
                                        //           mainAxisAlignment:
                                        //               MainAxisAlignment.end,
                                        //           crossAxisAlignment:
                                        //               CrossAxisAlignment
                                        //                   .center,
                                        //           children: [
                                        //             SizedBox(
                                        //               child: Image.asset(
                                        //                 "../assets/imges/v-order.png",
                                        //                 // height: 20.sp,
                                        //                 width: 4.sp,
                                        //               ),
                                        //             ),
                                        //             const Padding(
                                        //                 padding:
                                        //                     EdgeInsets.only(
                                        //                         left: 5)),
                                        //             SizedBox(
                                        //               child: Text(
                                        //                 "View Orders",
                                        //                 style:
                                        //                     GoogleFonts.sen(
                                        //                   color: const Color(
                                        //                       0xFFE53C1F),
                                        //                   fontSize: 3.95.sp,
                                        //                   fontWeight:
                                        //                       FontWeight.w400,
                                        //                 ),
                                        //               ),
                                        //             ),
                                        //           ],
                                        //         ),
                                        //       ],
                                        //     ),
                                        //   ),
                                        // ),
                                        // const Padding(
                                        //     padding:
                                        //         EdgeInsets.only(right: 15)),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.cyanAccent,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                            color: ccNatural250, width: .5),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        // const Padding(
                                        // padding:
                                        //     EdgeInsets.only(left: 15)),
                                        Expanded(
                                          child: Container(
                                            height: 6.6.sp,
                                            // width: 20.w,
                                            // color: Colors.red,
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                SizedBox(
                                                  height: 1.97.sp,
                                                  width: 1.97.sp,
                                                  child: Checkbox(
                                                    value: false,
                                                    onChanged: (value) {
                                                      // setState(() {
                                                      //   _myBoolean = value; // rebuilds with new value
                                                      // });
                                                    },
                                                  ),
                                                ),
                                                Text(
                                                  "ID",
                                                  style: GoogleFonts.sen(
                                                    color: ccDanger300,
                                                    fontSize: 3.95.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                SizedBox(
                                                  child: SvgPicture.asset(
                                                    "../assets/imges/sort.svg",
                                                    width: 2.637.sp,
                                                    height: 2.637.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 6.6.sp,
                                            // width: 20.w,
                                            // color: Colors.red,
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                SizedBox(
                                                  child: Text(
                                                    "Daily No.",
                                                    style: GoogleFonts.sen(
                                                      color: ccDanger300,
                                                      fontSize: 3.95.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  child: SvgPicture.asset(
                                                    "../assets/imges/sort.svg",
                                                    width: 2.637.sp,
                                                    height: 2.637.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 6.6.sp,
                                            // width: 20.w,
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            // color: Colors.red,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                SizedBox(
                                                  child: Text(
                                                    "Status",
                                                    style: GoogleFonts.sen(
                                                      color: ccDanger300,
                                                      fontSize: 3.95.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                  left: 9.45.sp,
                                                )),
                                                SizedBox(
                                                  child: Image.asset(
                                                    "../assets/imges/filter-colored.png",
                                                    width: 2.637.sp,
                                                    height: 2.637.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 6.6.sp,
                                            // width: 20.w,
                                            // color: Colors.red,
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                  left: 2.sp,
                                                )),
                                                SizedBox(
                                                  child: Text(
                                                    "Type",
                                                    style: GoogleFonts.sen(
                                                      color: ccDanger300,
                                                      fontSize: 3.95.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 6.6.sp,
                                            // width: 20.w,
                                            // color: Colors.red,
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                SizedBox(
                                                  child: Text(
                                                    "Table",
                                                    style: GoogleFonts.sen(
                                                      color: ccDanger300,
                                                      fontSize: 3.95.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  child: SvgPicture.asset(
                                                    "../assets/imges/sort.svg",
                                                    width: 2.637.sp,
                                                    height: 2.637.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 6.6.sp,
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            // color: Colors.red,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                  left: 2.sp,
                                                )),
                                                SizedBox(
                                                  child: Text(
                                                    "Waiter",
                                                    style: GoogleFonts.sen(
                                                      color: ccDanger300,
                                                      fontSize: 3.95.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 6.6.sp,
                                          width: 30.38.sp,
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                  right: BorderSide(
                                            width: 0.5,
                                            color: ccNutural550,
                                          ))),
                                          // color: Colors.red,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                child: Text(
                                                  "Update Time",
                                                  style: GoogleFonts.sen(
                                                    color: ccDanger300,
                                                    fontSize: 3.95.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                child: SvgPicture.asset(
                                                  "../assets/imges/sort.svg",
                                                  width: 2.637.sp,
                                                  height: 2.637.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 6.6.sp,
                                            width: 20.w,
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                              width: 0.5,
                                              color: ccNutural550,
                                            ))),
                                            // color: Colors.red,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      child: Text(
                                                        "Total",
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 3.95.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 10.989.sp,
                                            width: 45.71.sp,
                                            // color: Colors.red,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      child: Text(
                                                        "Action",
                                                        style: GoogleFonts.sen(
                                                          color: Colors
                                                              .transparent,
                                                          fontSize: 3.95.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  OrderListItemWidget(
                                    goToModalRequested: () {},
                                    selected: false,
                                    idNo: "1001",
                                    status: "Accepted",
                                    orderItemId: "1",
                                    shopN: '',
                                    goToPageRequested: (val) =>
                                        model.goToPage(val),
                                    location: '',
                                    number: '',
                                    date: '',
                                  ),
                                  OrderListItemWidget(
                                    goToModalRequested: () {},
                                    idNo: "1002",
                                    shopN: '',
                                    orderItemId: "1",
                                    selected: false,
                                    goToPageRequested: (val) =>
                                        model.goToPage(val),
                                    status: '',
                                    location: '',
                                    number: '',
                                    date: '',
                                  ),
                                  OrderListItemWidget(
                                    goToModalRequested: () {},
                                    idNo: "1002",
                                    status: "Waiting",
                                    orderItemId: "1",
                                    selected: false,
                                    goToPageRequested: (val) =>
                                        model.goToPage(val),
                                    shopN: '',
                                    location: '',
                                    number: '',
                                    date: '',
                                  ),
                                  OrderListItemWidget(
                                    goToModalRequested: () {},
                                    selected: false,
                                    idNo: "1002",
                                    status: "Ready",
                                    orderItemId: "1",
                                    goToPageRequested: (val) =>
                                        model.goToPage(val),
                                    shopN: '',
                                    location: '',
                                    number: '',
                                    date: '',
                                  ),
                                  OrderListItemWidget(
                                    goToModalRequested: () {},
                                    selected: false,
                                    idNo: "1002",
                                    status: "Preparing",
                                    orderItemId: "1",
                                    goToPageRequested: (val) =>
                                        model.goToPage(val),
                                    shopN: '',
                                    location: '',
                                    number: '',
                                    date: '',
                                  ),
                                  OrderListItemWidget(
                                    goToModalRequested: () {},
                                    selected: false,
                                    idNo: "1002",
                                    status: "Closed",
                                    orderItemId: "1",
                                    goToPageRequested: (val) =>
                                        model.goToPage(val),
                                    shopN: '',
                                    location: '',
                                    number: '',
                                    date: '',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const FooterWidget()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
