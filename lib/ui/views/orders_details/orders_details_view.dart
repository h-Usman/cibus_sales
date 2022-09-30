import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../widgets/dumb_widgets/multi_order_select_view_list.widget.dart';
import '../../widgets/dumb_widgets/orderlists_details.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import './orders_details_view_model.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OrdersDetailsView extends StatelessWidget {
  final bool multiOption = true;
  const OrdersDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersDetailsViewModel>.reactive(
      viewModelBuilder: () => OrdersDetailsViewModel(),
      onModelReady: (OrdersDetailsViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        OrdersDetailsViewModel model,
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
                              color: ccNutural550,
                            ))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                csvertSpace14,
                                SizedBox(
                                  height: 100.h,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 57.36.sp,
                                        decoration: const BoxDecoration(
                                          color: ccNeutral0,
                                          boxShadow: [
                                            BoxShadow(blurRadius: 8.0),
                                            // BoxShadow(
                                            //     color: ccDanger300,
                                            //     offset: Offset(0, -16)),
                                            // BoxShadow(
                                            //     color: ccDanger300,
                                            //     offset: Offset(0, 16)),
                                            // BoxShadow(
                                            //     color: ccDanger300,
                                            //     offset: Offset(-16, -16)),
                                            // BoxShadow(
                                            //     color: ccDanger300,
                                            //     offset: Offset(-16, 16)),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                  top: 2.296.sp,
                                                  bottom: 6.59.sp),
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(
                                                        2.197.sp),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                        color: ccNutural550,
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
                                                        Text(
                                                          'Start Date',
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccNutural550,
                                                            fontSize: 3.07.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 5.79
                                                                        .sp)),
                                                        Text(
                                                          'End Date',
                                                          style:
                                                              GoogleFonts.sen(
                                                            color: ccNutural550,
                                                            fontSize: 3.07.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 6.15
                                                                        .sp)),
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
                                              decoration: const BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                width: 0.5,
                                                color: ccNutural550,
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
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 3.29
                                                                        .sp)),
                                                        Text(value),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 2.64
                                                                        .sp)),
                                                        Container(
                                                          width: 3.29.sp,
                                                          height: 3.29.sp,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2),
                                                          ),
                                                          child: Container(
                                                            color: ccNetural290,
                                                            child: Center(
                                                              child: Text(
                                                                "9",
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccDanger300,
                                                                  fontSize:
                                                                      2.63.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
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
                                                bottom: 3.sp,
                                                left: 3.29.sp,
                                                right: 3.29.sp,
                                              ),
                                              decoration: const BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                width: 0.5,
                                                color: ccNutural550,
                                              ))),
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
                                                  PageTitlewWidget(
                                                    titleName: 'Orders',
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 100.h - 310,
                                              child: ListView.builder(
                                                  itemCount: 18,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return MulriOrderListSelectItemWidget(
                                                      goToModalRequested: () {},
                                                      idNo: "1001",
                                                      status: "Preparing",
                                                      table: "Table No 2",
                                                    );
                                                  }),
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
                                                      child:
                                                          multiOption == false
                                                              ? Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          7.50.sp,
                                                                      width: 9.23
                                                                          .sp,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              ccNutural550,
                                                                        ),
                                                                      ),
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      child:
                                                                          Container(
                                                                        color:
                                                                            ccNeutral0,
                                                                        child:
                                                                            FloatingActionButton(
                                                                          onPressed:
                                                                              () {
                                                                            // do your thing here
                                                                          },
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                          ),
                                                                          backgroundColor:
                                                                              ccNeutral0,
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            "../assets/imges/print.svg",
                                                                            width:
                                                                                3.73.sp,
                                                                            height:
                                                                                3.73.sp,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                      left: 4.39
                                                                          .sp,
                                                                    )),
                                                                    Container(
                                                                      height:
                                                                          7.50.sp,
                                                                      width: 9.23
                                                                          .sp,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              ccNutural550,
                                                                        ),
                                                                      ),
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      child:
                                                                          Container(
                                                                        color:
                                                                            ccNeutral0,
                                                                        child:
                                                                            FloatingActionButton(
                                                                          onPressed:
                                                                              () {
                                                                            // do your thing here
                                                                          },
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                          ),
                                                                          backgroundColor:
                                                                              ccNeutral0,
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            "../assets/imges/order.svg",
                                                                            width:
                                                                                4.175.sp,
                                                                            height:
                                                                                4.175.sp,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                      left: 4.39
                                                                          .sp,
                                                                    )),
                                                                    Container(
                                                                      height:
                                                                          7.50.sp,
                                                                      width: 9.23
                                                                          .sp,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              ccNutural550,
                                                                        ),
                                                                      ),
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      child:
                                                                          Container(
                                                                        color:
                                                                            ccNeutral0,
                                                                        child:
                                                                            FloatingActionButton(
                                                                          onPressed:
                                                                              () {
                                                                            // do your thing here
                                                                          },
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                          ),
                                                                          backgroundColor:
                                                                              ccNeutral0,
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            "../assets/imges/change-table.svg",
                                                                            width:
                                                                                4.53.sp,
                                                                            height:
                                                                                3.17.sp,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                      left: 4.39
                                                                          .sp,
                                                                    )),
                                                                    Container(
                                                                      height:
                                                                          7.50.sp,
                                                                      width: 9.23
                                                                          .sp,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              ccNutural550,
                                                                        ),
                                                                      ),
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      child:
                                                                          Container(
                                                                        color:
                                                                            ccNeutral0,
                                                                        child:
                                                                            FloatingActionButton(
                                                                          onPressed:
                                                                              () {
                                                                            // do your thing here
                                                                          },
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                          ),
                                                                          backgroundColor:
                                                                              ccNeutral0,
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            "../assets/imges/delete.svg",
                                                                            width:
                                                                                4.53.sp,
                                                                            height:
                                                                                3.17.sp,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                      left: 4.39
                                                                          .sp,
                                                                    )),
                                                                    Container(
                                                                      height:
                                                                          7.50.sp,
                                                                      width: 9.23
                                                                          .sp,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              ccNutural550,
                                                                        ),
                                                                      ),
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      child:
                                                                          Container(
                                                                        color:
                                                                            ccNeutral0,
                                                                        child:
                                                                            FloatingActionButton(
                                                                          onPressed:
                                                                              () {
                                                                            // do your thing here
                                                                          },
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                          ),
                                                                          backgroundColor:
                                                                              ccNeutral0,
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            "../assets/imges/reload.svg",
                                                                            width:
                                                                                4.53.sp,
                                                                            height:
                                                                                3.17.sp,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                      left: 4.39
                                                                          .sp,
                                                                    )),
                                                                    Container(
                                                                      height:
                                                                          7.50.sp,
                                                                      width: 9.23
                                                                          .sp,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              ccDanger300,
                                                                        ),
                                                                      ),
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      child:
                                                                          Container(
                                                                        color:
                                                                            ccDanger300,
                                                                        child:
                                                                            FloatingActionButton(
                                                                          onPressed:
                                                                              () {
                                                                            // do your thing here
                                                                          },
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                          ),
                                                                          backgroundColor:
                                                                              ccDanger300,
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            "../assets/imges/close-white.svg",
                                                                            width:
                                                                                3.51.sp,
                                                                            height:
                                                                                3.51.sp,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )
                                                              : Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          7.50.sp,
                                                                      width: 43.19
                                                                          .sp,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              ccNutural550,
                                                                        ),
                                                                      ),
                                                                      child: ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {},
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          backgroundColor:
                                                                              ccNeutral0, // foreground
                                                                        ),
                                                                        icon: SvgPicture
                                                                            .asset(
                                                                          "../assets/imges/order.svg",
                                                                          width:
                                                                              4.175.sp,
                                                                          height:
                                                                              4.175.sp,
                                                                        ),
                                                                        label:
                                                                            Text(
                                                                          'Change Status',
                                                                          style:
                                                                              GoogleFonts.sen(
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
                                                                            EdgeInsets.only(
                                                                      left: 4.39
                                                                          .sp,
                                                                    )),
                                                                    Container(
                                                                      height:
                                                                          7.50.sp,
                                                                      width: 42.56
                                                                          .sp,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                        border: Border.all(
                                                                            color:
                                                                                ccNutural550),
                                                                      ),
                                                                      child: ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () =>
                                                                                showDialog(
                                                                          context:
                                                                              context,
                                                                          barrierDismissible:
                                                                              false,
                                                                          builder: (_) =>
                                                                              AlertDialog(
                                                                            shape:
                                                                                RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                            content:
                                                                                Container(
                                                                              width: 183.076.sp,
                                                                              height: 78.68.sp,
                                                                              decoration: const BoxDecoration(
                                                                                  border: Border(
                                                                                      bottom: BorderSide(
                                                                                width: 0.5,
                                                                                color: ccNatural250,
                                                                              ))),
                                                                              child: SizedBox(
                                                                                child: Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      decoration: const BoxDecoration(
                                                                                          border: Border(
                                                                                              bottom: BorderSide(
                                                                                        width: 0.5,
                                                                                        color: ccNatural250,
                                                                                      ))),
                                                                                      height: 14.62.sp,
                                                                                      child: Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              height: 10.62.sp,
                                                                                              alignment: Alignment.centerLeft,
                                                                                              child: Row(
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                children: [
                                                                                                  SizedBox(
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
                                                                                                  Text(
                                                                                                    'Are You Sure?',
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
                                                                                            height: 10.62.sp,
                                                                                            width: 10.sp,
                                                                                            child: ElevatedButton(
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
                                                                                    Padding(
                                                                                      padding: EdgeInsets.only(top: 4.83.sp),
                                                                                    ),
                                                                                    // SizedBox
                                                                                    Text(
                                                                                      'Selected tickets will be merged and this action cannot be undone.',
                                                                                      style: GoogleFonts.sen(
                                                                                        color: ccNutural550,
                                                                                        fontSize: 4.395.sp,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            actions: [
                                                                              Container(
                                                                                height: 7.25.sp,
                                                                                width: 29.23.sp,
                                                                                margin: EdgeInsets.only(
                                                                                  bottom: 4.39.sp,
                                                                                ),
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(1.098.sp),
                                                                                  border: Border.all(color: ccNutural550),
                                                                                ),
                                                                                child: ElevatedButton.icon(
                                                                                  onPressed: () {
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  style: ElevatedButton.styleFrom(
                                                                                    backgroundColor: ccNeutral0, // foreground
                                                                                  ),
                                                                                  icon: SvgPicture.asset(
                                                                                    "../assets/imges/close.svg",
                                                                                    width: 2.85.sp,
                                                                                    height: 2.85.sp,
                                                                                  ),
                                                                                  label: Text(
                                                                                    'NO',
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
                                                                                left: 7.25.sp,
                                                                              )),
                                                                              Container(
                                                                                height: 7.25.sp,
                                                                                width: 29.23.sp,
                                                                                margin: EdgeInsets.only(
                                                                                  bottom: 4.39.sp,
                                                                                ),
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(1.098.sp),
                                                                                  border: Border.all(color: ccDanger300),
                                                                                ),
                                                                                child: ElevatedButton.icon(
                                                                                  onPressed: () {
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  style: ElevatedButton.styleFrom(
                                                                                    backgroundColor: ccDanger300,
                                                                                    elevation: 0,
                                                                                    shadowColor: Colors.transparent,
                                                                                  ),
                                                                                  icon: SvgPicture.asset(
                                                                                    "../assets/imges/check-white.svg",
                                                                                    width: 4.17.sp,
                                                                                    height: 3.07.sp,
                                                                                  ),
                                                                                  label: Text(
                                                                                    'Yes',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNeutral0,
                                                                                      fontSize: 4.39.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ), // <-- Text
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                  padding: EdgeInsets.only(
                                                                                left: 5.25.sp,
                                                                              )),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          backgroundColor:
                                                                              ccNeutral0, // foreground
                                                                        ),
                                                                        icon: SvgPicture
                                                                            .asset(
                                                                          "../assets/imges/merge.svg",
                                                                          width:
                                                                              3.29.sp,
                                                                          height:
                                                                              3.29.sp,
                                                                        ),
                                                                        label:
                                                                            Text(
                                                                          'Merge Orders',
                                                                          style:
                                                                              GoogleFonts.sen(
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
                                                                            EdgeInsets.only(
                                                                      left: 4.39
                                                                          .sp,
                                                                    )),
                                                                    SizedBox(
                                                                      height:
                                                                          7.50.sp,
                                                                      width: 29.23
                                                                          .sp,
                                                                      child: ElevatedButton
                                                                          .icon(
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          backgroundColor:
                                                                              ccDanger300,
                                                                        ),
                                                                        onPressed:
                                                                            () =>
                                                                                showDialog(
                                                                          context:
                                                                              context,
                                                                          barrierDismissible:
                                                                              false,
                                                                          builder: (_) =>
                                                                              AlertDialog(
                                                                            shape:
                                                                                RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                            content:
                                                                                Container(
                                                                              width: 183.076.sp,
                                                                              height: 78.68.sp,
                                                                              decoration: const BoxDecoration(
                                                                                  border: Border(
                                                                                      bottom: BorderSide(
                                                                                width: 0.5,
                                                                                color: ccNatural250,
                                                                              ))),
                                                                              child: SizedBox(
                                                                                child: Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      decoration: const BoxDecoration(
                                                                                          border: Border(
                                                                                              bottom: BorderSide(
                                                                                        width: 0.5,
                                                                                        color: ccNatural250,
                                                                                      ))),
                                                                                      height: 14.62.sp,
                                                                                      child: Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              height: 10.62.sp,
                                                                                              alignment: Alignment.centerLeft,
                                                                                              child: Row(
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                children: [
                                                                                                  SizedBox(
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
                                                                                                  Text(
                                                                                                    'Are You Sure?',
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
                                                                                            height: 10.62.sp,
                                                                                            width: 10.sp,
                                                                                            child: ElevatedButton(
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
                                                                                    Padding(
                                                                                      padding: EdgeInsets.only(top: 4.83.sp),
                                                                                    ),
                                                                                    // SizedBox
                                                                                    Text(
                                                                                      'Selected tickets will be Deleted and this action cannot be undone.',
                                                                                      style: GoogleFonts.sen(
                                                                                        color: ccNutural550,
                                                                                        fontSize: 4.395.sp,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            actions: [
                                                                              Container(
                                                                                height: 7.25.sp,
                                                                                width: 29.23.sp,
                                                                                margin: EdgeInsets.only(
                                                                                  bottom: 4.39.sp,
                                                                                ),
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(1.098.sp),
                                                                                  border: Border.all(color: ccNutural550),
                                                                                ),
                                                                                child: ElevatedButton.icon(
                                                                                  onPressed: () {
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  style: ElevatedButton.styleFrom(
                                                                                    backgroundColor: ccNeutral0, // foreground
                                                                                  ),
                                                                                  icon: SvgPicture.asset(
                                                                                    "../assets/imges/close.svg",
                                                                                    width: 2.85.sp,
                                                                                    height: 2.85.sp,
                                                                                  ),
                                                                                  label: Text(
                                                                                    'NO',
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
                                                                                left: 7.25.sp,
                                                                              )),
                                                                              Container(
                                                                                height: 7.25.sp,
                                                                                width: 29.23.sp,
                                                                                margin: EdgeInsets.only(
                                                                                  bottom: 4.39.sp,
                                                                                ),
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(1.098.sp),
                                                                                  border: Border.all(color: ccDanger300),
                                                                                ),
                                                                                child: ElevatedButton.icon(
                                                                                  onPressed: () {
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  style: ElevatedButton.styleFrom(
                                                                                    backgroundColor: ccDanger300,
                                                                                    elevation: 0,
                                                                                    shadowColor: Colors.transparent,
                                                                                  ),
                                                                                  icon: SvgPicture.asset(
                                                                                    "../assets/imges/check-white.svg",
                                                                                    width: 4.17.sp,
                                                                                    height: 3.07.sp,
                                                                                  ),
                                                                                  label: Text(
                                                                                    'Yes',
                                                                                    style: GoogleFonts.sen(
                                                                                      color: ccNeutral0,
                                                                                      fontSize: 4.39.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ), // <-- Text
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                  padding: EdgeInsets.only(
                                                                                left: 5.25.sp,
                                                                              )),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        icon: SvgPicture
                                                                            .asset(
                                                                          "../assets/imges/delete-white.svg",
                                                                          width:
                                                                              3.51.sp,
                                                                          height:
                                                                              4.39.sp,
                                                                        ),
                                                                        label:
                                                                            Text(
                                                                          'Delete',
                                                                          style:
                                                                              GoogleFonts.sen(
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
                                                                            EdgeInsets.only(
                                                                      left: 4.39
                                                                          .sp,
                                                                    )),
                                                                    Container(
                                                                      height:
                                                                          7.50.sp,
                                                                      width: 9.23
                                                                          .sp,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              ccDanger300,
                                                                        ),
                                                                      ),
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      child:
                                                                          Container(
                                                                        color:
                                                                            ccDanger300,
                                                                        child:
                                                                            FloatingActionButton(
                                                                          onPressed:
                                                                              () {
                                                                            // do your thing here
                                                                          },
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                          ),
                                                                          backgroundColor:
                                                                              ccDanger300,
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            "../assets/imges/close-white.svg",
                                                                            width:
                                                                                3.51.sp,
                                                                            height:
                                                                                3.51.sp,
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
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          Text(
                                                            "Order 1 - #1001",
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccDanger300,
                                                              fontSize:
                                                                  5.714.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          Text(
                                                            "Order Details",
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNetural1000,
                                                              fontSize: 4.39.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              2.sp,
                                                                        )),
                                                                        Text(
                                                                          "Jun 17th 2022, 2:43:15 am",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
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
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              2.sp,
                                                                        )),
                                                                        Text(
                                                                          "Garden Table 2",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
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
                                                                  EdgeInsets
                                                                      .only(
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
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              2.sp,
                                                                        )),
                                                                        Text(
                                                                          "Jun 28th 2022, 4:29:00 pm",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
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
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              2.sp,
                                                                        )),
                                                                        Text(
                                                                          "Cash",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
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
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          Text(
                                                            "Payment Details",
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNetural1000,
                                                              fontSize: 4.39.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              2.sp,
                                                                        )),
                                                                        Text(
                                                                          "RM 35.00",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
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
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              2.sp,
                                                                        )),
                                                                        Text(
                                                                          "RM 3.50",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
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
                                                                  EdgeInsets
                                                                      .only(
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
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              2.sp,
                                                                        )),
                                                                        Text(
                                                                          "Garden Table 2",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
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
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              2.sp,
                                                                        )),
                                                                        Text(
                                                                          "Cash",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
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
                                                                  EdgeInsets
                                                                      .only(
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
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              2.sp,
                                                                        )),
                                                                        Text(
                                                                          "RM 0.00",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
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
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              2.sp,
                                                                        )),
                                                                        Text(
                                                                          "RM 38.50",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
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
                                                                  EdgeInsets
                                                                      .only(
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
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              2.sp,
                                                                        )),
                                                                        Text(
                                                                          "RM 0.00",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNutural550,
                                                                            fontSize:
                                                                                3.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
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
                                                        margin: EdgeInsets.all(
                                                            3.51.sp),
                                                        // padding: const EdgeInsets.all(5),
                                                        // color: ccNeutral0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      3.51.sp),
                                                          border: Border.all(
                                                              color:
                                                                  ccNatural250),
                                                        ),
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              color:
                                                                  ccDanger100,
                                                              height: 10.54.sp,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    height:
                                                                        6.6.sp,
                                                                    width: 52.38
                                                                        .sp,
                                                                    decoration: const BoxDecoration(
                                                                        border: Border(
                                                                            right: BorderSide(
                                                                      width:
                                                                          0.5,
                                                                      color:
                                                                          ccNutural550,
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
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              3.0.sp,
                                                                        )),
                                                                        Text(
                                                                          "Item",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccDanger300,
                                                                            fontSize:
                                                                                3.95.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        6.6.sp,
                                                                    width:
                                                                        12.sp,
                                                                    decoration: const BoxDecoration(
                                                                        border: Border(
                                                                            right: BorderSide(
                                                                      width:
                                                                          0.5,
                                                                      color:
                                                                          ccNutural550,
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
                                                                          child:
                                                                              Text(
                                                                            "Qty",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccDanger300,
                                                                              fontSize: 3.95.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        6.6.sp,
                                                                    width:
                                                                        24.sp,
                                                                    // width: 20.w,
                                                                    decoration: const BoxDecoration(
                                                                        border: Border(
                                                                            right: BorderSide(
                                                                      width:
                                                                          0.5,
                                                                      color:
                                                                          ccNutural550,
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
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              3.0.sp,
                                                                        )),
                                                                        SizedBox(
                                                                          child:
                                                                              Text(
                                                                            "Unit Price",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccDanger300,
                                                                              fontSize: 3.95.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        6.6.sp,
                                                                    width:
                                                                        23.sp,
                                                                    // width: 20.w,
                                                                    decoration: const BoxDecoration(
                                                                        border: Border(
                                                                            right: BorderSide(
                                                                      width:
                                                                          0.5,
                                                                      color:
                                                                          ccNutural550,
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
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              3.0.sp,
                                                                        )),
                                                                        SizedBox(
                                                                          child:
                                                                              Text(
                                                                            "Total",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccDanger300,
                                                                              fontSize: 3.95.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        6.6.sp,
                                                                    width: 27.31
                                                                        .sp,
                                                                    decoration: const BoxDecoration(
                                                                        border: Border(
                                                                            right: BorderSide(
                                                                      width:
                                                                          0.5,
                                                                      color:
                                                                          ccNutural550,
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
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              3.0.sp,
                                                                        )),
                                                                        SizedBox(
                                                                          child:
                                                                              Text(
                                                                            "Sent Time",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccDanger300,
                                                                              fontSize: 3.95.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        SizedBox(
                                                                      height:
                                                                          6.6.sp,
                                                                      // width: 28.79
                                                                      //     .sp,
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: <
                                                                            Widget>[
                                                                          Padding(
                                                                              padding: EdgeInsets.only(
                                                                            left:
                                                                                3.0.sp,
                                                                          )),
                                                                          SizedBox(
                                                                            child:
                                                                                Text(
                                                                              "Notes",
                                                                              style: GoogleFonts.sen(
                                                                                color: ccDanger300,
                                                                                fontSize: 3.95.sp,
                                                                                fontWeight: FontWeight.w400,
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
                      ]))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
