import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../widgets/dumb_widgets/multi_order_select_view_list.widget.dart';
import '../../widgets/dumb_widgets/orderlists_details.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import './order_details_multi_select_view_model.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OrderDetailsMultiSelectView extends StatelessWidget {
  const OrderDetailsMultiSelectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderDetailsMultiSelectViewModel>.reactive(
      viewModelBuilder: () => OrderDetailsMultiSelectViewModel(),
      onModelReady: (OrderDetailsMultiSelectViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        OrderDetailsMultiSelectViewModel model,
        Widget? child,
      ) {
        String dropdownValue = 'All';
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
                              onTap: () {
                                model.goToPage('milti_select_orders');
                              },
                            ),
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
                              onTap: () {
                                model.goToPage('details_milti_select_orders');
                                // model.goToPage('orders_details');
                              },
                            ),
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
                                onTap: () {
                                  model.goToPage('orders_details');
                                }),
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
                          SizedBox(
                            height: 100.h,
                            // color: ccNeutral0 Color(0xFFFFFFFF),
                            // padding: EdgeInsets.only(
                            //                 top: 2.296.sp, bottom: 6.59.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // height: 100.h,
                                  width: 57.36.sp,
                                  decoration: const BoxDecoration(
                                    color: ccNeutral0,
                                    // borderRadius: const BorderRadius.only(
                                    //     topLeft: Radius.circular(10),
                                    //     topRight: Radius.circular(10),
                                    //     bottomLeft: Radius.circular(10),
                                    //     bottomRight: Radius.circular(10)),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.grey.withOpacity(0.5),
                                    //     spreadRadius: 5,
                                    //     blurRadius: 7,
                                    //     offset: const Offset(0,
                                    //         7), // changes position of shadow
                                    //   ),
                                    // ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // height: 7.47.sp,
                                        // color: Colors.red,
                                        padding: EdgeInsets.only(
                                            top: 2.296.sp, bottom: 6.59.sp),
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // color: Colors.green,
                                              padding: EdgeInsets.all(2.197.sp),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1.098.sp),
                                                border: Border.all(
                                                  color: ccNutural550,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Start Date',
                                                    style: GoogleFonts.sen(
                                                      color: const Color(
                                                          0xFF70708C),
                                                      fontSize: 3.07.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 5.79.sp)),
                                                  Text(
                                                    'End Date',
                                                    style: GoogleFonts.sen(
                                                      color: const Color(
                                                          0xFF70708C),
                                                      fontSize: 3.07.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 6.15.sp)),
                                                  SvgPicture.asset(
                                                    "../assets/imges/calender.svg",
                                                    width: 3.296.sp,
                                                    height: 3.736.sp,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          bottom: 2.296.sp,
                                        ),

                                        // color: Colors.green,
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                          width: 0.5,
                                          color: ccNatural250,
                                        ))),
                                        child: DropdownButton<String>(
                                          value: dropdownValue,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: ccNutural550,
                                            size: 5.395.sp,
                                          ),
                                          elevation: 16,
                                          isExpanded: true,
                                          // isDense: true,
                                          style: TextStyle(
                                            color: ccDanger300,
                                            fontSize: 4.395.sp,
                                          ),
                                          underline: Container(
                                            height: 0.0,
                                            color: Colors.transparent,
                                          ),
                                          onChanged: (String? newValue) {
                                            // setState(() {
                                            //   dropdownValue = newValue!;
                                            // });
                                          },
                                          items: <String>[
                                            'All',
                                            'New',
                                            'Preparing',
                                            'Ready'
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 3.29.sp)),
                                                  Text(value),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.64.sp)),
                                                  Container(
                                                    width: 3.29.sp,
                                                    height: 3.29.sp,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2),
                                                    ),
                                                    child: Container(
                                                      color: const Color(
                                                          0xFFD9D9D9),
                                                      child: Center(
                                                        child: Text(
                                                          "9",
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: const Color(
                                                                0xFFE53C1F),
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
                                            );
                                          }).toList(),
                                          dropdownColor: ccNeutral0,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 2.296.sp,
                                          bottom: 6.59.sp,
                                          left: 3.29.sp,
                                          right: 3.29.sp,
                                        ),
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                          width: 0.5,
                                          color: ccNatural250,
                                        ))),
                                        // color: Colors.blue,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 3.95.sp)),
                                            Text(
                                              "Orders",
                                              style: GoogleFonts.sen(
                                                color: ccNetural1000,
                                                fontSize: 5.714.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      MulriOrderListSelectItemWidget(
                                        goToModalRequested: () {},
                                        idNo: "1001",
                                        status: "Preparing",
                                        table: "Table No 2",
                                      ),
                                      MulriOrderListSelectItemWidget(
                                        goToModalRequested: () {},
                                        idNo: "1001",
                                        status: "Accepted",
                                        table: "Table No 2",
                                      ),
                                      MulriOrderListSelectItemWidget(
                                        goToModalRequested: () {},
                                        idNo: "1001",
                                        status: "Ready",
                                        table: "Table No 2",
                                      ),
                                      MulriOrderListSelectItemWidget(
                                        goToModalRequested: () {},
                                        idNo: "1001",
                                        status: "Cancelled",
                                        table: "Table No 2",
                                      ),
                                      MulriOrderListSelectItemWidget(
                                        goToModalRequested: () {},
                                        idNo: "1001",
                                        status: "Waiting",
                                        table: "Table No 2",
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    // height: 100.h,
                                    padding: EdgeInsets.only(
                                      top: 3.39.sp,
                                      right: 3.39.sp,
                                    ),
                                    color: ccNeutral0,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 10.98.sp,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 7.50.sp,
                                                      width: 43.19.sp,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color: const Color(
                                                              0xFF70708C),
                                                        ),
                                                      ),
                                                      child:
                                                          ElevatedButton.icon(
                                                        onPressed: () {},
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor: ccNeutral0, // foreground
                                                        ),
                                                        icon: SvgPicture.asset(
                                                          "../assets/imges/order.svg",
                                                          width: 4.175.sp,
                                                          height: 4.175.sp,
                                                        ),
                                                        label: Text(
                                                          'Change Status',
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: const Color(
                                                                0xFF70708C),
                                                            fontSize: 4.39.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ), // <-- Text
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                      left: 4.39.sp,
                                                    )),
                                                    Container(
                                                      height: 7.50.sp,
                                                      width: 42.56.sp,
                                                      // color: Colors.green,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xFF70708C)),
                                                      ),
                                                      child:
                                                          ElevatedButton.icon(
                                                        onPressed: () {},
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor: ccNeutral0, 
                                                        ),
                                                        icon: SvgPicture.asset(
                                                          "../assets/imges/merge.svg",
                                                          width: 3.29.sp,
                                                          height: 3.29.sp,
                                                        ),
                                                        label: Text(
                                                          'Merge Orders',
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: const Color(
                                                                0xFF70708C),
                                                            fontSize: 4.39.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ), // <-- Text
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                      left: 4.39.sp,
                                                    )),
                                                    SizedBox(
                                                      height: 7.50.sp,
                                                      width: 29.23.sp,
                                                      child:
                                                          ElevatedButton.icon(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor: ccDanger300, // foreground
                                                        ),
                                                        onPressed: () {},
                                                        icon: SvgPicture.asset(
                                                          "../assets/imges/delete-white.svg",
                                                          width: 3.51.sp,
                                                          height: 4.39.sp,
                                                        ),
                                                        label: Text(
                                                          'Delete',
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: const Color(
                                                                0xFFFFFFFF),
                                                            fontSize: 4.39.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ), // <-- Text
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                      left: 4.39.sp,
                                                    )),
                                                    Container(
                                                      height: 7.50.sp,
                                                      width: 9.23.sp,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color: const Color(
                                                              0xffe53c1f),
                                                        ),
                                                      ),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      child: Container(
                                                        color: const Color(
                                                            0xffe53c1f),
                                                        child:
                                                            FloatingActionButton(
                                                          onPressed: () {
                                                            // do your thing here
                                                          },
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                          backgroundColor:
                                                              const Color(
                                                                  0xffe53c1f),
                                                          child:
                                                              SvgPicture.asset(
                                                            "../assets/imges/close-white.svg",
                                                            width: 3.51.sp,
                                                            height: 3.51.sp,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 3.29.sp,
                                                  right: 3.29.sp,
                                                  bottom: 4.93.sp,
                                                ),
                                                // margin: const EdgeInsets.all(15),
                                                // height: 12.sp,
                                                color: ccNeutral0,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(
                                                      "Order 1 - #1001",
                                                      style: GoogleFonts.sen(
                                                        color: const Color(
                                                            0xFFE53C1F),
                                                        fontSize: 5.714.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 3.29.sp,
                                                  right: 3.29.sp,
                                                  bottom: 3.95.sp,
                                                ),
                                                // margin: const EdgeInsets.all(15),
                                                // height: 12.sp,
                                                color: ccNeutral0,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(
                                                      "Order Details",
                                                      style: GoogleFonts.sen(
                                                        color: const Color(
                                                            0xFF000000),
                                                        fontSize: 4.39.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 3.29.sp,
                                                  right: 3.29.sp,
                                                  bottom: 6.15.sp,
                                                ),
                                                // margin: const EdgeInsets.all(15),
                                                // height: 12.sp,
                                                color: ccNeutral0,
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
                                                              .center,
                                                      children: <Widget>[
                                                        Expanded(
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
                                                                  Text(
                                                                    "Sent Time:",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left: 2.sp,
                                                                  )),
                                                                  Text(
                                                                    "Jun 17th 2022, 2:43:15 am",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
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
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Table:",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left: 2.sp,
                                                                  )),
                                                                  Text(
                                                                    "Garden Table 2",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                      bottom: 3.7.sp,
                                                    )),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Expanded(
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
                                                                  Text(
                                                                    "Update Time:",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left: 2.sp,
                                                                  )),
                                                                  Text(
                                                                    "Jun 28th 2022, 4:29:00 pm",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
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
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Req. Payment Method:",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left: 2.sp,
                                                                  )),
                                                                  Text(
                                                                    "Cash",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 3.29.sp,
                                                  right: 3.29.sp,
                                                  bottom: 3.95.sp,
                                                ),
                                                // margin: const EdgeInsets.all(15),
                                                // height: 12.sp,
                                                color: ccNeutral0,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(
                                                      "Payment Details",
                                                      style: GoogleFonts.sen(
                                                        color: const Color(
                                                            0xFF000000),
                                                        fontSize: 4.39.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 3.29.sp,
                                                  right: 3.29.sp,
                                                  bottom: 6.15.sp,
                                                ),
                                                // margin: const EdgeInsets.all(15),
                                                // height: 12.sp,
                                                color: ccNeutral0,
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
                                                              .center,
                                                      children: <Widget>[
                                                        Expanded(
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
                                                                  Text(
                                                                    "Sub Total:",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left: 2.sp,
                                                                  )),
                                                                  Text(
                                                                    "RM 35.00",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
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
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Tip:",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left: 2.sp,
                                                                  )),
                                                                  Text(
                                                                    "RM 3.50",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                      bottom: 3.7.sp,
                                                    )),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Expanded(
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
                                                                  Text(
                                                                    "Service Charge:",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left: 2.sp,
                                                                  )),
                                                                  Text(
                                                                    "Garden Table 2",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
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
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Req. Payment Method:",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left: 2.sp,
                                                                  )),
                                                                  Text(
                                                                    "Cash",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                      bottom: 3.7.sp,
                                                    )),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Expanded(
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
                                                                  Text(
                                                                    "Tax:",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left: 2.sp,
                                                                  )),
                                                                  Text(
                                                                    "RM 0.00",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
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
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Total Billed:",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left: 2.sp,
                                                                  )),
                                                                  Text(
                                                                    "RM 38.50",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                      bottom: 3.7.sp,
                                                    )),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Expanded(
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
                                                                  Text(
                                                                    "Paid:",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left: 2.sp,
                                                                  )),
                                                                  Text(
                                                                    "RM 0.00",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFF70708C),
                                                                      fontSize:
                                                                          3.39.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                color: ccNeutral0,
                                                child: Container(
                                                  // height: 90.sp,
                                                  width: 100.w,
                                                  margin:
                                                      EdgeInsets.all(3.51.sp),
                                                  // padding: const EdgeInsets.all(5),
                                                  // color: ccNeutral0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3.51.sp),
                                                    border: Border.all(
                                                        color: const Color(
                                                            0xFFDEDEDE)),
                                                  ),
                                                  clipBehavior: Clip.antiAlias,
                                                  // decoration: BoxDecoration(
                                                  // color: Colors.blueAccent,
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        color: const Color(
                                                            0xFFFBF2F0),
                                                        height: 10.54.sp,
                                                        // width: 55.38.sp,
                                                        // decoration: BoxDecoration(
                                                        //   borderRadius:
                                                        //       BorderRadius
                                                        //           .circular(15),
                                                        // ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            // const Padding(
                                                            // padding:
                                                            //     EdgeInsets.only(left: 15)),
                                                            Container(
                                                              height: 6.6.sp,
                                                              width: 55.38.sp,
                                                              // width: 20.w,
                                                              // color: Colors.red,
                                                              decoration: const BoxDecoration(
                                                                  border: Border(
                                                                      right: BorderSide(
                                                                width: 0.5,
                                                                color: Color(
                                                                    0xff70708C),
                                                              ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left:
                                                                        3.0.sp,
                                                                  )),
                                                                  Text(
                                                                    "Item",
                                                                    style:
                                                                        GoogleFonts
                                                                            .sen(
                                                                      color: const Color(
                                                                          0xFFE53C1F),
                                                                      fontSize:
                                                                          3.95.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 6.6.sp,
                                                              width: 14.95.sp,
                                                              // width: 20.w,
                                                              // color: Colors.red,
                                                              decoration: const BoxDecoration(
                                                                  border: Border(
                                                                      right: BorderSide(
                                                                width: 0.5,
                                                                color: Color(
                                                                    0xff70708C),
                                                              ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  SizedBox(
                                                                    child: Text(
                                                                      "Qty",
                                                                      style: GoogleFonts
                                                                          .sen(
                                                                        color: const Color(
                                                                            0xFFE53C1F),
                                                                        fontSize:
                                                                            3.95.sp,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 6.6.sp,
                                                              width: 25.24.sp,
                                                              // width: 20.w,
                                                              decoration: const BoxDecoration(
                                                                  border: Border(
                                                                      right: BorderSide(
                                                                width: 0.5,
                                                                color: Color(
                                                                    0xff70708C),
                                                              ))),
                                                              // color: Colors.red,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left:
                                                                        3.0.sp,
                                                                  )),
                                                                  SizedBox(
                                                                    child: Text(
                                                                      "Unit Price",
                                                                      style: GoogleFonts
                                                                          .sen(
                                                                        color: const Color(
                                                                            0xFFE53C1F),
                                                                        fontSize:
                                                                            3.95.sp,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 6.6.sp,
                                                              width: 23.29.sp,
                                                              // width: 20.w,
                                                              // color: Colors.red,
                                                              decoration: const BoxDecoration(
                                                                  border: Border(
                                                                      right: BorderSide(
                                                                width: 0.5,
                                                                color: Color(
                                                                    0xff70708C),
                                                              ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left:
                                                                        3.0.sp,
                                                                  )),
                                                                  SizedBox(
                                                                    child: Text(
                                                                      "Total",
                                                                      style: GoogleFonts
                                                                          .sen(
                                                                        color: const Color(
                                                                            0xFFE53C1F),
                                                                        fontSize:
                                                                            3.95.sp,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 6.6.sp,
                                                              width: 28.31.sp,
                                                              // width: 20.w,
                                                              // color: Colors.red,
                                                              decoration: const BoxDecoration(
                                                                  border: Border(
                                                                      right: BorderSide(
                                                                width: 0.5,
                                                                color: Color(
                                                                    0xff70708C),
                                                              ))),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left:
                                                                        3.0.sp,
                                                                  )),
                                                                  SizedBox(
                                                                    child: Text(
                                                                      "Sent Time",
                                                                      style: GoogleFonts
                                                                          .sen(
                                                                        color: const Color(
                                                                            0xFFE53C1F),
                                                                        fontSize:
                                                                            3.95.sp,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 6.6.sp,
                                                              width: 28.79.sp,
                                                              // decoration:
                                                              //     const BoxDecoration(
                                                              //         border: Border(
                                                              //             right: BorderSide(
                                                              //   width: 0.5,
                                                              //   color: Color(
                                                              //       0xff70708C),
                                                              // ))),
                                                              // color: Colors.red,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    left:
                                                                        3.0.sp,
                                                                  )),
                                                                  SizedBox(
                                                                    child: Text(
                                                                      "Notes",
                                                                      style: GoogleFonts
                                                                          .sen(
                                                                        color: const Color(
                                                                            0xFFE53C1F),
                                                                        fontSize:
                                                                            3.95.sp,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      OrderListDetailsWidget(
                                                        goToModalRequested:
                                                            () {},
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
                                ),
                              ],
                            ),
                          ),
                          const FooterWidget(),
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
