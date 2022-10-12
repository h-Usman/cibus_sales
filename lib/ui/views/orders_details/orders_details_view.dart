import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/fill_check_box.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/texeFeild_lable.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../widgets/dumb_widgets/multi_order_select_view_list.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import './orders_details_view_model.dart';

class OrdersDetailsView extends StatelessWidget {
  final bool multiOption = true;
  const OrdersDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'All';
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
        // String dropdownValue = 'All';
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
                        Container(
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
                                height: 90.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 57.36.sp,
                                      decoration: const BoxDecoration(
                                        color: ccNeutral0,
                                        boxShadow: [
                                          BoxShadow(blurRadius: 0.5),
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
                                                top: 2.296.sp, bottom: 6.59.sp),
                                            alignment: Alignment.center,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  // padding:
                                                  //     EdgeInsets.only(
                                                  //   right: 4.5.sp,
                                                  //   // bottom: 5.sp,
                                                  // ),
                                                  width: 50.989.sp,
                                                  height: 7.47.sp,
                                                  child: TextField(
                                                    textAlign: TextAlign.left,
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    1.098.sp),
                                                      ),
                                                      contentPadding:
                                                          EdgeInsets.all(
                                                              2.197.sp),
                                                      filled: true,
                                                      hintStyle:
                                                          const TextStyle(
                                                        color: ccNutural550,
                                                      ),
                                                      hintText:
                                                          "Type to Search",
                                                      fillColor: ccNeutral0,
                                                      suffixIcon: Container(
                                                        padding: EdgeInsets.all(
                                                            2.sp),
                                                        child: SvgPicture.asset(
                                                          "../assets/imges/search.svg",
                                                          width: 3.736.sp,
                                                          height: 3.736.sp,
                                                        ),
                                                      ),
                                                    ),
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
                                                'In Progress',
                                                'KIV',
                                                'Cancelled'
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left:
                                                                      3.29.sp)),
                                                      Text(value),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left:
                                                                      2.64.sp)),
                                                      Container(
                                                        width: 3.29.sp,
                                                        height: 3.29.sp,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(2),
                                                        ),
                                                        child: Container(
                                                          color: ccNetural290,
                                                          child: Center(
                                                            child: Text(
                                                              "9",
                                                              style: GoogleFonts
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
                                                  titleName: 'Leads',
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 100.h - 340,
                                            child: ListView.builder(
                                                itemCount: 18,
                                                itemBuilder: (context, index) {
                                                  return MulriOrderListSelectItemWidget(
                                                    goToModalRequested: () {},
                                                    idNo: "1001",
                                                    status: "In Progress",
                                                    table: "Table No 2",
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 100.w - 109.50.sp,
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
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
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
                                                            "#1001",
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
                                                          cshorzSpace4,
                                                          Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    1.sp),
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  ccSuccess400,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          1.0989
                                                                              .sp),
                                                            ),
                                                            child: Text(
                                                              "In Progress",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccSuccess800,
                                                                fontSize:
                                                                    3.9560.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                          cshorzSpace4,
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 1.sp,
                                                                    bottom:
                                                                        1.sp,
                                                                    left: 2.sp,
                                                                    right:
                                                                        2.sp),
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  ccNatural250,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          1.0989
                                                                              .sp),
                                                            ),
                                                            child: Text(
                                                              "12/07/2022",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    3.9560.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10.98.sp,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height: 7.50.sp,
                                                            width: 9.23.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    ccNutural550,
                                                              ),
                                                            ),
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            child: Container(
                                                              color: ccNeutral0,
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
                                                                    ccNeutral0,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
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
                                                                  EdgeInsets
                                                                      .only(
                                                            left: 4.39.sp,
                                                          )),
                                                          Container(
                                                            height: 7.4725.sp,
                                                            width: 9.23.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    ccNutural550,
                                                              ),
                                                            ),
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            child: Container(
                                                              color: ccNeutral0,
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
                                                                    ccNeutral0,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  "../assets/imges/mail.svg",
                                                                  width: 4.61538
                                                                      .sp,
                                                                  height:
                                                                      3.07692
                                                                          .sp,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                            left: 4.39.sp,
                                                          )),
                                                          Container(
                                                            height: 7.4725.sp,
                                                            width: 9.23.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    ccNutural550,
                                                              ),
                                                            ),
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            child: Container(
                                                              color: ccNeutral0,
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
                                                                    ccNeutral0,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  "../assets/imges/delete.svg",
                                                                  width: 3.07692
                                                                      .sp,
                                                                  height:
                                                                      3.9560.sp,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                            left: 4.39.sp,
                                                          )),
                                                          Container(
                                                            height: 7.4725.sp,
                                                            width: 9.23.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    ccNutural550,
                                                              ),
                                                            ),
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            child: Container(
                                                              color: ccNeutral0,
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
                                                                    ccNeutral0,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  "../assets/imges/reload.svg",
                                                                  width: 4.17582
                                                                      .sp,
                                                                  height:
                                                                      4.17582
                                                                          .sp,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                            left: 4.39.sp,
                                                          )),
                                                          Container(
                                                            height: 7.4725.sp,
                                                            width: 9.23.sp,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    ccDanger300,
                                                              ),
                                                            ),
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            child: Container(
                                                              color:
                                                                  ccDanger300,
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
                                                                    ccDanger300,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
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
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 100.h - 43.sp,
                                                  child: SingleChildScrollView(
                                                      child: Column(
                                                    children: [
                                                      SizedBox(
                                                        width: 100.w,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
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
                                                                      padding: EdgeInsets.only(
                                                                          top: 3
                                                                              .sp)),
                                                                  const TextFeildWidget(
                                                                    hint:
                                                                        'Chef n Stuff Sdn Bhd',
                                                                    lebel:
                                                                        'Company Name *',
                                                                    // value: 'Chef n Stuff Sdn Bhd',
                                                                  ),
                                                                  csvertSpace2,
                                                                  const TextFeildWidget(
                                                                    hint:
                                                                        'Chef n Stuff Sdn Bhd',
                                                                    lebel:
                                                                        'Shop Name',
                                                                    // value: 'Chef n Stuff Sdn Bhd',
                                                                  ),
                                                                  csvertSpace2,
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 5.912
                                                                          .sp,
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              Text(
                                                                            "Address",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccDanger300,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 3.95.sp)),
                                                                        TextField(
                                                                          maxLines:
                                                                              3,
                                                                          style: TextStyle(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp),
                                                                          // controller:
                                                                          //     TextEditingController(
                                                                          //         text:
                                                                          //             "36, Jalan Perdana 6/6, Pandan Perdana, 55300 Kuala Lumpur, Selangor, All"),
                                                                          decoration:
                                                                              InputDecoration(
                                                                            contentPadding:
                                                                                EdgeInsets.all(2.63.sp),
                                                                            border: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.circular(3.296.sp),
                                                                                borderSide: const BorderSide(
                                                                                  color: ccPrimary300,
                                                                                  width: 1,
                                                                                )),
                                                                            hintText:
                                                                                "36, Jalan Perdana 6/6, Pandan Perdana, 55300 Kuala Lumpur, Selangor, Malaysia",
                                                                            hintStyle:
                                                                                TextStyle(
                                                                              color: ccPrimary300,
                                                                              fontSize: 3.956.sp,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 1.95.sp)),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  csvertSpace2,
                                                                  const TextFeildWidget(
                                                                    hint:
                                                                        'Selangor',
                                                                    lebel:
                                                                        'City',
                                                                    // value: 'Chef n Stuff Sdn Bhd',
                                                                  ),
                                                                  csvertSpace2,
                                                                  const TextFeildWidget(
                                                                    hint:
                                                                        'Selangor',
                                                                    lebel:
                                                                        'State',
                                                                    // value: 'Chef n Stuff Sdn Bhd',
                                                                  ),
                                                                  csvertSpace2,
                                                                  SizedBox(
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          padding:
                                                                              EdgeInsets.only(left: 5.912.sp),
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              Text(
                                                                            "Country",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccDanger300,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 3.95.sp)),
                                                                        Container(
                                                                          padding:
                                                                              EdgeInsets.only(
                                                                            left:
                                                                                5.912.sp,
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                128.79.sp,
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                              left: 3.52.sp,
                                                                              right: 2.sp,
                                                                            ),
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              shape: RoundedRectangleBorder(
                                                                                side: const BorderSide(
                                                                                  width: 1,
                                                                                  style: BorderStyle.solid,
                                                                                  color: ccPrimary300,
                                                                                ),
                                                                                borderRadius: BorderRadius.all(Radius.circular(3.296.sp)),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                DropdownButton<String>(
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
                                                                                color: ccNutural550,
                                                                                fontSize: 3.956.sp,
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
                                                                                'USA',
                                                                                'UAE',
                                                                              ].map<DropdownMenuItem<String>>((String value) {
                                                                                return DropdownMenuItem<String>(
                                                                                  value: value,
                                                                                  child: Text(value),
                                                                                );
                                                                              }).toList(),
                                                                              dropdownColor: ccNeutral0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 1.95.sp)),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  csvertSpace2,
                                                                  const TextFeildWidget(
                                                                    hint:
                                                                        'abbasali@gmail.com',
                                                                    lebel:
                                                                        'Email',
                                                                    // value: 'Chef n Stuff Sdn Bhd',
                                                                  ),
                                                                  csvertSpace2,
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 5.912
                                                                          .sp,
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              Text(
                                                                            "Remarks",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccDanger300,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 3.95.sp)),
                                                                        TextField(
                                                                          maxLines:
                                                                              7,
                                                                          style: TextStyle(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp),
                                                                          // controller:
                                                                          //     TextEditingController(
                                                                          //         text:
                                                                          //             "Type here"),
                                                                          decoration:
                                                                              InputDecoration(
                                                                            contentPadding:
                                                                                EdgeInsets.all(2.63.sp),
                                                                            border: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.circular(3.296.sp),
                                                                                borderSide: const BorderSide(
                                                                                  color: ccPrimary300,
                                                                                  width: 1,
                                                                                )),
                                                                            hintText:
                                                                                "Type here",
                                                                            hintStyle:
                                                                                TextStyle(
                                                                              color: ccPrimary300,
                                                                              fontSize: 3.956.sp,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 1.95.sp)),
                                                                      ],
                                                                    ),
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
                                                                        .end,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          top: 3
                                                                              .sp)),
                                                                  Container(
                                                                    padding: EdgeInsets.only(
                                                                        left: 5.912
                                                                            .sp),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              Text(
                                                                            "Venue ID",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccDanger300,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 3.95.sp)),
                                                                        Container(
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              TextField(
                                                                            // maxLines: 3,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            textDirection:
                                                                                TextDirection.rtl,
                                                                            enabled:
                                                                                false,
                                                                            // readOnly: true,
                                                                            style:
                                                                                TextStyle(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.956.sp,
                                                                            ),
                                                                            controller:
                                                                                TextEditingController(text: "bGFDhg243Fh"),
                                                                            decoration:
                                                                                InputDecoration(
                                                                              // fillColor: Colors.white,
                                                                              filled: true,
                                                                              contentPadding: EdgeInsets.all(2.63.sp),
                                                                              fillColor: ccBakground,
                                                                              border: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.circular(3.296.sp),
                                                                                borderSide: const BorderSide(
                                                                                  color: ccPrimary300,
                                                                                  width: 1,
                                                                                ),
                                                                              ),
                                                                              suffixIcon: Container(
                                                                                  height: 10.109.sp,
                                                                                  width: 11.86.sp,
                                                                                  decoration:
                                                                                      // ignore: prefer_const_constructors
                                                                                      BoxDecoration(
                                                                                    borderRadius: BorderRadius.only(
                                                                                      topRight: Radius.circular(3.269.sp),
                                                                                      bottomRight: Radius.circular(3.269.sp),
                                                                                    ),
                                                                                  ),
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  margin: EdgeInsets.only(left: 3.296.sp),
                                                                                  child: Container(
                                                                                    padding: EdgeInsets.all(2.50.sp),
                                                                                    color: ccNeutral0,
                                                                                    child: SvgPicture.asset(
                                                                                      "../assets/imges/file.svg",
                                                                                      width: 4.615.sp,
                                                                                      height: 5.494.sp,
                                                                                    ),
                                                                                  )),
                                                                              hintText: "bGFDhg243Fh",
                                                                              hintStyle: TextStyle(
                                                                                color: ccPrimary300,
                                                                                fontSize: 3.956.sp,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 1.95.sp)),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  csvertSpace2,
                                                                  const TextFeildWidget(
                                                                    hint:
                                                                        'CHT21545784',
                                                                    lebel:
                                                                        'Company Reg. No.',
                                                                    // value: 'Chef n Stuff Sdn Bhd',
                                                                  ),
                                                                  csvertSpace2,
                                                                  SizedBox(
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          padding:
                                                                              EdgeInsets.only(left: 5.912.sp),
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              Text(
                                                                            "Logo",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccDanger300,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 3.95.sp)),
                                                                        Container(
                                                                          width:
                                                                              68.79.sp,
                                                                          height:
                                                                              41.sp,
                                                                          margin:
                                                                              EdgeInsets.only(left: 5.912.sp),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(3.29.sp),
                                                                            border:
                                                                                Border.all(
                                                                              color: ccPrimary300,
                                                                              width: 0.2197.sp,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              SizedBox(
                                                                                child: SvgPicture.asset(
                                                                                  "../assets/imges/upload.svg",
                                                                                  width: 9.85.sp,
                                                                                  height: 7.032.sp,
                                                                                ),
                                                                              ),
                                                                              Padding(padding: EdgeInsets.only(bottom: 5.054.sp)),
                                                                              Text(
                                                                                "Upload",
                                                                                style: GoogleFonts.sen(
                                                                                  fontSize: 3.956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                  color: ccNutural550,
                                                                                ),
                                                                              ),
                                                                              Padding(padding: EdgeInsets.only(bottom: 3.516.sp)),
                                                                              Container(
                                                                                alignment: Alignment.center,
                                                                                width: 42.20.sp,
                                                                                child: Text(
                                                                                  "Only .jpg, .jpeg, .png files are supported",
                                                                                  textAlign: TextAlign.center,
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 3.516.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccNutural550,
                                                                                    height: 1.5,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 1.95.sp)),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  csvertSpace2,
                                                                  const TextFeildWidget(
                                                                    hint:
                                                                        '55300',
                                                                    lebel:
                                                                        'Zip Code',
                                                                    // value: '55300',
                                                                  ),
                                                                  csvertSpace2,
                                                                  Container(
                                                                    padding: EdgeInsets.only(
                                                                        left: 5.912
                                                                            .sp),
                                                                    child:
                                                                        Column(
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
                                                                          child:
                                                                              Text(
                                                                            "Phone Number",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              fontSize: 4.395.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: ccDanger300,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 3.95.sp)),
                                                                        TextField(
                                                                          style:
                                                                              const TextStyle(color: ccNutural550),
                                                                          // controller:
                                                                          //     TextEditingController(
                                                                          //         text: "1127314677"),
                                                                          decoration:
                                                                              InputDecoration(
                                                                            // fillColor: Colors.white,
                                                                            // filled: true,
                                                                            contentPadding:
                                                                                EdgeInsets.all(2.63.sp),
                                                                            // fillColor:
                                                                            //     ccBakground,
                                                                            border:
                                                                                OutlineInputBorder(
                                                                              borderRadius: BorderRadius.circular(3.296.sp),
                                                                              borderSide: const BorderSide(
                                                                                color: ccPrimary300,
                                                                                width: 1,
                                                                              ),
                                                                            ),

                                                                            prefixIcon: Container(
                                                                                decoration:
                                                                                    // ignore: prefer_const_constructors
                                                                                    BoxDecoration(
                                                                                  borderRadius: BorderRadius.only(
                                                                                    topLeft: Radius.circular(4.269.sp),
                                                                                    bottomLeft: Radius.circular(4.269.sp),
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
                                                                                margin: EdgeInsets.only(right: 3.296.sp),
                                                                                // color:
                                                                                //     ccNeutral0, // background color
                                                                                child: Container(
                                                                                  color: ccNetural350,
                                                                                  margin: EdgeInsets.only(left: 1),
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      "+60",
                                                                                      style: GoogleFonts.sen(
                                                                                        fontSize: 3.956.sp,
                                                                                        fontWeight: FontWeight.w400,
                                                                                        color: ccNutural550,
                                                                                      ),
                                                                                      textAlign: TextAlign.center,
                                                                                    ),
                                                                                  ),
                                                                                )
                                                                                // icon
                                                                                ),
                                                                            hintText:
                                                                                "1127314677",
                                                                            hintStyle:
                                                                                TextStyle(
                                                                              color: ccPrimary300,
                                                                              fontSize: 3.956.sp,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 1.95.sp)),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  csvertSpace3,
                                                                  const TextFeildWidget(
                                                                    hint:
                                                                        'www.chefandstuff.com',
                                                                    lebel:
                                                                        'Website',
                                                                    // value: 'www.chefnstuff.com',
                                                                  ),
                                                                  csvertSpace2,
                                                                  Container(
                                                                    padding: EdgeInsets.only(
                                                                        left: 5.912
                                                                            .sp),
                                                                    child: Row(
                                                                      children: [
                                                                        Text(
                                                                          "Attach Files",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            fontSize:
                                                                                4.3956.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            color:
                                                                                ccDanger300,
                                                                          ),
                                                                        ),
                                                                        cshorzSpace4,
                                                                        SvgPicture
                                                                            .asset(
                                                                          "../assets/imges/upload.svg",
                                                                          width:
                                                                              5.9340.sp,
                                                                          height:
                                                                              4.17582.sp,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    padding: EdgeInsets.only(
                                                                        left: 5.912
                                                                            .sp),
                                                                    child: Row(
                                                                      children: [
                                                                        Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            SvgPicture.asset(
                                                                              "../assets/imges/data.svg",
                                                                              width: 5.4945.sp,
                                                                              height: 3.6835.sp,
                                                                            ),
                                                                            csvertSpace2,
                                                                            Text(
                                                                              "Attachment 1",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 2.63736.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccNutural550,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        cshorzSpace5,
                                                                        Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            SvgPicture.asset(
                                                                              "../assets/imges/data.svg",
                                                                              width: 5.4945.sp,
                                                                              height: 3.6835.sp,
                                                                            ),
                                                                            csvertSpace2,
                                                                            Text(
                                                                              "Attachment 2",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 2.63736.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccNutural550,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        cshorzSpace5,
                                                                        Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            SvgPicture.asset(
                                                                              "../assets/imges/data.svg",
                                                                              width: 5.4945.sp,
                                                                              height: 3.6835.sp,
                                                                            ),
                                                                            csvertSpace2,
                                                                            Text(
                                                                              "Attachment 3",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 2.63736.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccNutural550,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  csvertSpace4,
                                                                  Container(
                                                                    padding: EdgeInsets.only(
                                                                        left: 3.912
                                                                            .sp),
                                                                    child:
                                                                        FillCheckBoxCircleWidget(
                                                                      check:
                                                                          false,
                                                                      text:
                                                                          'Convert to Sales',
                                                                    ),
                                                                  ),
                                                                  csvertSpace3,
                                                                  SizedBox(
                                                                    height:
                                                                        10.98
                                                                            .sp,
                                                                    // width: 135.38.sp,
                                                                    // color: Colors.blue,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          decoration: BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(1.0989.sp),
                                                                              border: Border.all(
                                                                                width: 0.5,
                                                                                color: ccNutural550,
                                                                              )),
                                                                          height:
                                                                              7.47.sp,
                                                                              width:
                                                                              29.sp,
                                                                          child:
                                                                              ElevatedButton.icon(
                                                                            style:
                                                                                ElevatedButton.styleFrom(
                                                                              backgroundColor: ccNeutral0,
                                                                            ),
                                                                            onPressed:
                                                                                () {},
                                                                            icon:
                                                                                Icon(
                                                                              Icons.close_rounded,
                                                                              color: ccNutural550,
                                                                            ),
                                                                            label:
                                                                                Text(
                                                                              'Cancel',
                                                                              style: GoogleFonts.sen(
                                                                                color: ccNutural550,
                                                                                fontSize: 4.395.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ), // <-- Text
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                          left:
                                                                              4.39.sp,
                                                                        )),
                                                                        SizedBox(
                                                                          height:
                                                                              7.47.sp,
                                                                          width:
                                                                              29.sp,
                                                                          child:
                                                                              ElevatedButton.icon(
                                                                            style:
                                                                                ElevatedButton.styleFrom(
                                                                              backgroundColor: ccDanger300,
                                                                            ),
                                                                            onPressed:
                                                                                () {
                                                                              model.goToPage('convert_sales');
                                                                            },
                                                                            icon:
                                                                                SvgPicture.asset(
                                                                              "../assets/imges/check-white.svg",
                                                                              width: 4.178.sp,
                                                                              height: 3.076.sp,
                                                                            ),
                                                                            label:
                                                                                Text(
                                                                              'Save',
                                                                              style: GoogleFonts.sen(
                                                                                color: ccNeutral0,
                                                                                fontSize: 4.395.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                              ),
                                                                            ), // <-- Text
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                    bottom:
                                                                        2.39.sp,
                                                                  )),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      // Container(
                                                      //   padding:
                                                      //       EdgeInsets.only(
                                                      //     left: 3.29.sp,
                                                      //     right: 3.29.sp,
                                                      //     bottom: 3.95.sp,
                                                      //   ),
                                                      //   // margin: const EdgeInsets.all(15),
                                                      //   // height: 12.sp,
                                                      //   color: ccNeutral0,
                                                      //   child: Row(
                                                      //     mainAxisAlignment:
                                                      //         MainAxisAlignment
                                                      //             .start,
                                                      //     crossAxisAlignment:
                                                      //         CrossAxisAlignment
                                                      //             .center,
                                                      //     children: <Widget>[
                                                      //       Text(
                                                      //         "Order Details",
                                                      //         style: GoogleFonts
                                                      //             .sen(
                                                      //           color:
                                                      //               ccNetural1000,
                                                      //           fontSize:
                                                      //               4.39.sp,
                                                      //           fontWeight:
                                                      //               FontWeight
                                                      //                   .w400,
                                                      //         ),
                                                      //       ),
                                                      //     ],
                                                      //   ),
                                                      // ),
                                                      // Container(
                                                      //   padding:
                                                      //       EdgeInsets.only(
                                                      //     left: 3.29.sp,
                                                      //     right: 3.29.sp,
                                                      //     bottom: 6.15.sp,
                                                      //   ),
                                                      //   // margin: const EdgeInsets.all(15),
                                                      //   // height: 12.sp,
                                                      //   color: ccNeutral0,
                                                      //   child: Column(
                                                      //     mainAxisAlignment:
                                                      //         MainAxisAlignment
                                                      //             .start,
                                                      //     crossAxisAlignment:
                                                      //         CrossAxisAlignment
                                                      //             .start,
                                                      //     children: [
                                                      //       Row(
                                                      //         mainAxisAlignment:
                                                      //             MainAxisAlignment
                                                      //                 .start,
                                                      //         crossAxisAlignment:
                                                      //             CrossAxisAlignment
                                                      //                 .center,
                                                      //         children: <
                                                      //             Widget>[
                                                      //           Expanded(
                                                      //             child: Column(
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Row(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.start,
                                                      //                   crossAxisAlignment:
                                                      //                       CrossAxisAlignment.start,
                                                      //                   children: [
                                                      //                     Text(
                                                      //                       "Sent Time:",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                         padding: EdgeInsets.only(
                                                      //                       left:
                                                      //                           2.sp,
                                                      //                     )),
                                                      //                     Text(
                                                      //                       "Jun 17th 2022, 2:43:15 am",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //           Expanded(
                                                      //             child: Column(
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Row(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.start,
                                                      //                   crossAxisAlignment:
                                                      //                       CrossAxisAlignment.start,
                                                      //                   children: [
                                                      //                     Text(
                                                      //                       "Table:",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                         padding: EdgeInsets.only(
                                                      //                       left:
                                                      //                           2.sp,
                                                      //                     )),
                                                      //                     Text(
                                                      //                       "Garden Table 2",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //         ],
                                                      //       ),
                                                      //       Padding(
                                                      //           padding:
                                                      //               EdgeInsets
                                                      //                   .only(
                                                      //         bottom: 3.7.sp,
                                                      //       )),
                                                      //       Row(
                                                      //         mainAxisAlignment:
                                                      //             MainAxisAlignment
                                                      //                 .start,
                                                      //         crossAxisAlignment:
                                                      //             CrossAxisAlignment
                                                      //                 .center,
                                                      //         children: <
                                                      //             Widget>[
                                                      //           Expanded(
                                                      //             child: Column(
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Row(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.start,
                                                      //                   crossAxisAlignment:
                                                      //                       CrossAxisAlignment.start,
                                                      //                   children: [
                                                      //                     Text(
                                                      //                       "Update Time:",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                         padding: EdgeInsets.only(
                                                      //                       left:
                                                      //                           2.sp,
                                                      //                     )),
                                                      //                     Text(
                                                      //                       "Jun 28th 2022, 4:29:00 pm",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //           Expanded(
                                                      //             child: Column(
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Row(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.start,
                                                      //                   crossAxisAlignment:
                                                      //                       CrossAxisAlignment.start,
                                                      //                   children: [
                                                      //                     Text(
                                                      //                       "Req. Payment Method:",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                         padding: EdgeInsets.only(
                                                      //                       left:
                                                      //                           2.sp,
                                                      //                     )),
                                                      //                     Text(
                                                      //                       "Cash",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //         ],
                                                      //       ),
                                                      //     ],
                                                      //   ),
                                                      // ),
                                                      // Container(
                                                      //   padding:
                                                      //       EdgeInsets.only(
                                                      //     left: 3.29.sp,
                                                      //     right: 3.29.sp,
                                                      //     bottom: 3.95.sp,
                                                      //   ),
                                                      //   // margin: const EdgeInsets.all(15),
                                                      //   // height: 12.sp,
                                                      //   color: ccNeutral0,
                                                      //   child: Row(
                                                      //     mainAxisAlignment:
                                                      //         MainAxisAlignment
                                                      //             .start,
                                                      //     crossAxisAlignment:
                                                      //         CrossAxisAlignment
                                                      //             .center,
                                                      //     children: <Widget>[
                                                      //       Text(
                                                      //         "Payment Details",
                                                      //         style: GoogleFonts
                                                      //             .sen(
                                                      //           color:
                                                      //               ccNetural1000,
                                                      //           fontSize:
                                                      //               4.39.sp,
                                                      //           fontWeight:
                                                      //               FontWeight
                                                      //                   .w400,
                                                      //         ),
                                                      //       ),
                                                      //     ],
                                                      //   ),
                                                      // ),
                                                      // Container(
                                                      //   padding:
                                                      //       EdgeInsets.only(
                                                      //     left: 3.29.sp,
                                                      //     right: 3.29.sp,
                                                      //     bottom: 6.15.sp,
                                                      //   ),
                                                      //   // margin: const EdgeInsets.all(15),
                                                      //   // height: 12.sp,
                                                      //   color: ccNeutral0,
                                                      //   child: Column(
                                                      //     mainAxisAlignment:
                                                      //         MainAxisAlignment
                                                      //             .start,
                                                      //     crossAxisAlignment:
                                                      //         CrossAxisAlignment
                                                      //             .start,
                                                      //     children: [
                                                      //       Row(
                                                      //         mainAxisAlignment:
                                                      //             MainAxisAlignment
                                                      //                 .start,
                                                      //         crossAxisAlignment:
                                                      //             CrossAxisAlignment
                                                      //                 .center,
                                                      //         children: <
                                                      //             Widget>[
                                                      //           Expanded(
                                                      //             child: Column(
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Row(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.start,
                                                      //                   crossAxisAlignment:
                                                      //                       CrossAxisAlignment.start,
                                                      //                   children: [
                                                      //                     Text(
                                                      //                       "Sub Total:",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                         padding: EdgeInsets.only(
                                                      //                       left:
                                                      //                           2.sp,
                                                      //                     )),
                                                      //                     Text(
                                                      //                       "RM 35.00",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //           Expanded(
                                                      //             child: Column(
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Row(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.start,
                                                      //                   crossAxisAlignment:
                                                      //                       CrossAxisAlignment.start,
                                                      //                   children: [
                                                      //                     Text(
                                                      //                       "Tip:",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                         padding: EdgeInsets.only(
                                                      //                       left:
                                                      //                           2.sp,
                                                      //                     )),
                                                      //                     Text(
                                                      //                       "RM 3.50",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //         ],
                                                      //       ),
                                                      //       Padding(
                                                      //           padding:
                                                      //               EdgeInsets
                                                      //                   .only(
                                                      //         bottom: 3.7.sp,
                                                      //       )),
                                                      //       Row(
                                                      //         mainAxisAlignment:
                                                      //             MainAxisAlignment
                                                      //                 .start,
                                                      //         crossAxisAlignment:
                                                      //             CrossAxisAlignment
                                                      //                 .center,
                                                      //         children: <
                                                      //             Widget>[
                                                      //           Expanded(
                                                      //             child: Column(
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Row(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.start,
                                                      //                   crossAxisAlignment:
                                                      //                       CrossAxisAlignment.start,
                                                      //                   children: [
                                                      //                     Text(
                                                      //                       "Service Charge:",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                         padding: EdgeInsets.only(
                                                      //                       left:
                                                      //                           2.sp,
                                                      //                     )),
                                                      //                     Text(
                                                      //                       "Garden Table 2",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //           Expanded(
                                                      //             child: Column(
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Row(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.start,
                                                      //                   crossAxisAlignment:
                                                      //                       CrossAxisAlignment.start,
                                                      //                   children: [
                                                      //                     Text(
                                                      //                       "Req. Payment Method:",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                         padding: EdgeInsets.only(
                                                      //                       left:
                                                      //                           2.sp,
                                                      //                     )),
                                                      //                     Text(
                                                      //                       "Cash",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //         ],
                                                      //       ),
                                                      //       Padding(
                                                      //           padding:
                                                      //               EdgeInsets
                                                      //                   .only(
                                                      //         bottom: 3.7.sp,
                                                      //       )),
                                                      //       Row(
                                                      //         mainAxisAlignment:
                                                      //             MainAxisAlignment
                                                      //                 .start,
                                                      //         crossAxisAlignment:
                                                      //             CrossAxisAlignment
                                                      //                 .center,
                                                      //         children: <
                                                      //             Widget>[
                                                      //           Expanded(
                                                      //             child: Column(
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Row(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.start,
                                                      //                   crossAxisAlignment:
                                                      //                       CrossAxisAlignment.start,
                                                      //                   children: [
                                                      //                     Text(
                                                      //                       "Tax:",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                         padding: EdgeInsets.only(
                                                      //                       left:
                                                      //                           2.sp,
                                                      //                     )),
                                                      //                     Text(
                                                      //                       "RM 0.00",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //           Expanded(
                                                      //             child: Column(
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Row(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.start,
                                                      //                   crossAxisAlignment:
                                                      //                       CrossAxisAlignment.start,
                                                      //                   children: [
                                                      //                     Text(
                                                      //                       "Total Billed:",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                         padding: EdgeInsets.only(
                                                      //                       left:
                                                      //                           2.sp,
                                                      //                     )),
                                                      //                     Text(
                                                      //                       "RM 38.50",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //         ],
                                                      //       ),
                                                      //       Padding(
                                                      //           padding:
                                                      //               EdgeInsets
                                                      //                   .only(
                                                      //         bottom: 3.7.sp,
                                                      //       )),
                                                      //       Row(
                                                      //         mainAxisAlignment:
                                                      //             MainAxisAlignment
                                                      //                 .start,
                                                      //         crossAxisAlignment:
                                                      //             CrossAxisAlignment
                                                      //                 .center,
                                                      //         children: <
                                                      //             Widget>[
                                                      //           Expanded(
                                                      //             child: Column(
                                                      //               mainAxisAlignment:
                                                      //                   MainAxisAlignment
                                                      //                       .start,
                                                      //               crossAxisAlignment:
                                                      //                   CrossAxisAlignment
                                                      //                       .start,
                                                      //               children: [
                                                      //                 Row(
                                                      //                   mainAxisAlignment:
                                                      //                       MainAxisAlignment.start,
                                                      //                   crossAxisAlignment:
                                                      //                       CrossAxisAlignment.start,
                                                      //                   children: [
                                                      //                     Text(
                                                      //                       "Paid:",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                     Padding(
                                                      //                         padding: EdgeInsets.only(
                                                      //                       left:
                                                      //                           2.sp,
                                                      //                     )),
                                                      //                     Text(
                                                      //                       "RM 0.00",
                                                      //                       style:
                                                      //                           GoogleFonts.sen(
                                                      //                         color: ccNutural550,
                                                      //                         fontSize: 3.39.sp,
                                                      //                         fontWeight: FontWeight.w400,
                                                      //                       ),
                                                      //                     ),
                                                      //                   ],
                                                      //                 ),
                                                      //               ],
                                                      //             ),
                                                      //           ),
                                                      //         ],
                                                      //       ),
                                                      //     ],
                                                      //   ),
                                                      // ),
                                                    ],
                                                  )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
