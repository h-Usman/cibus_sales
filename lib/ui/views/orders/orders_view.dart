import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/order_list_item.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/leadsTabs/leads_tab.widget.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/dumb_widgets/footer.widget.dart';
import '../../widgets/dumb_widgets/page_title.widget.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import '../../widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import './orders_view_model.dart';

class OrdersView extends StatelessWidget {
  final bool selectOrder = true;
  const OrdersView({
    Key? key,
  }) : super(key: key);

  get goToModalRequested => null;

  get selected => null;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersViewModel>.reactive(
      viewModelBuilder: () => OrdersViewModel(),
      onModelReady: (OrdersViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        OrdersViewModel model,
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
                                            titleName: 'Leads',
                                          )
                                        ],
                                      ),
                                    ),
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
                                            height: 10.98.sp,
                                            width: 113.40.sp,
                                            // color: Colors.blue,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                LeadsTabsWidget(
                                                  goToPageRequested: (val) =>
                                                      model.goToPage(val),
                                                  selectedTabName: 'all',
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.98.sp,
                                            width: 112.38.sp,
                                            child: selectOrder == true
                                                ? Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 4.5.sp,
                                                          // bottom: 5.sp,
                                                        ),
                                                        width: 63.131.sp,
                                                        height: 7.47.sp,
                                                        child: TextField(
                                                          textAlign:
                                                              TextAlign.left,
                                                          decoration:
                                                              InputDecoration(
                                                            border:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          1.098
                                                                              .sp),
                                                            ),
                                                            contentPadding:
                                                                EdgeInsets.all(
                                                                    2.197.sp),
                                                            filled: true,
                                                            hintStyle:
                                                                const TextStyle(
                                                              color:
                                                                  ccNutural550,
                                                            ),
                                                            hintText:
                                                                "Type to Search",
                                                            fillColor:
                                                                ccNeutral0,
                                                            suffixIcon:
                                                                Container(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          2.sp),
                                                              child: SvgPicture
                                                                  .asset(
                                                                "../assets/imges/search.svg",
                                                                width: 3.736.sp,
                                                                height:
                                                                    3.736.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      cshorzSpace2,
                                                      Container(
                                                        height: 7.47.sp,
                                                        // width: 29.23.sp,
                                                        color: ccNeutral0,
                                                        // padding: EdgeInsets.only(
                                                        //     left: 1.758.sp,
                                                        //     right: 1.758.sp),
                                                        child:
                                                            ElevatedButton.icon(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                ccDanger300,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 2.758
                                                                        .sp,
                                                                    right: 2.758
                                                                        .sp), // foreground
                                                          ),
                                                          onPressed: () {},
                                                          icon:
                                                              SvgPicture.asset(
                                                            "../assets/imges/add-new-white.svg",
                                                            width: 3.51.sp,
                                                            height: 4.39.sp,
                                                          ),
                                                          label: Text(
                                                            'Add new',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color: ccNeutral0,
                                                              fontSize: 4.39.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ), // <-- Text
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                : Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        height: 7.50.sp,
                                                        width: 43.19.sp,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      1.098.sp),
                                                          border: Border.all(
                                                            color: ccNutural550,
                                                          ),
                                                        ),
                                                        child:
                                                            ElevatedButton.icon(
                                                          onPressed: () {},
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                ccNeutral0, // foreground
                                                          ),
                                                          icon:
                                                              SvgPicture.asset(
                                                            "../assets/imges/order.svg",
                                                            width: 4.175.sp,
                                                            height: 4.175.sp,
                                                          ),
                                                          label: Text(
                                                            'Change Status',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 4.39.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      1.098.sp),
                                                          border: Border.all(
                                                              color:
                                                                  ccNutural550),
                                                        ),
                                                        child:
                                                            ElevatedButton.icon(
                                                          onPressed: () {},
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                ccNeutral0,
                                                          ),
                                                          icon:
                                                              SvgPicture.asset(
                                                            "../assets/imges/merge.svg",
                                                            width: 3.29.sp,
                                                            height: 3.29.sp,
                                                          ),
                                                          label: Text(
                                                            'Merge Orders',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccNutural550,
                                                              fontSize: 4.39.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                                            backgroundColor:
                                                                ccDanger300, // foreground
                                                          ),
                                                          onPressed: () {},
                                                          icon:
                                                              SvgPicture.asset(
                                                            "../assets/imges/delete-white.svg",
                                                            width: 3.51.sp,
                                                            height: 4.39.sp,
                                                          ),
                                                          label: Text(
                                                            'Delete',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color: ccNeutral0,
                                                              fontSize: 4.39.sp,
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
                                    // order tables
                                    Container(
                                      color: ccNeutral0,
                                      child: Column(children: [
                                        Container(
                                          width: 100.w,
                                          margin: EdgeInsets.only(
                                              left: 3.29.sp,
                                              right: 3.29.sp,
                                              top: 3.29.sp),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3.29.sp),
                                            border:
                                                Border.all(color: ccNatural250),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                decoration: const BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                        color: ccNeutral0,
                                                        width: 0.5),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 3.29.sp)),
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: 10.98.sp,
                                                        // width: 20.w,
                                                        // color: Colors.red,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          // color: Colors.red,
                                                          children: <Widget>[
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "9 Results Listed",
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    color:
                                                                        ccNutural550,
                                                                    fontSize:
                                                                        3.95.sp,
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
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 16.sp,
                                                decoration: BoxDecoration(
                                                  color: ccDanger100,
                                                  border: Border(
                                                    top: BorderSide(
                                                        color: ccNatural250,
                                                        width: .5),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 6.6.sp,
                                                      width: 30.989.sp,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          cshorzSpace3,
                                                          SizedBox(
                                                            height: 1.97.sp,
                                                            width: 1.97.sp,
                                                            child: Checkbox(
                                                              value: false,
                                                              onChanged:
                                                                  (value) {
                                                                // setState(() {
                                                                //   _myBoolean = value; // rebuilds with new value
                                                                // });
                                                              },
                                                            ),
                                                          ),
                                                          cshorzSpace3,
                                                          Text(
                                                            "ID",
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccDanger300,
                                                              fontSize:
                                                                  3.9560.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                          cshorzSpace3,
                                                          SizedBox(
                                                            child: SvgPicture
                                                                .asset(
                                                              "../assets/imges/sort.svg",
                                                              width: 2.63.sp,
                                                              height: 2.63.sp,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 6.6.sp,
                                                      width: 55.1648.sp,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          SizedBox(
                                                            child: Text(
                                                              "Shop Name",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccDanger300,
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
                                                      height: 6.6.sp,
                                                      width: 44.1758.sp,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          SizedBox(
                                                            child: Text(
                                                              "Location",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccDanger300,
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
                                                      height: 6.6.sp,
                                                      width: 46.813.sp,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          SizedBox(
                                                            child: Text(
                                                              "Number",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccDanger300,
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
                                                      height: 6.6.sp,
                                                      width: 30.0989.sp,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          SizedBox(
                                                            child: Text(
                                                              "Date",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccDanger300,
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
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: 6.6.sp,
                                                        // width: 18.681.sp,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              child: Text(
                                                                "Status",
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccDanger300,
                                                                  fontSize:
                                                                      3.9560.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ),
                                                            cshorzSpace3,
                                                            SizedBox(
                                                              child:
                                                                  Image.asset(
                                                                "../assets/imges/filter-colored.png",
                                                                width: 2.63.sp,
                                                                height: 2.63.sp,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 100.h - 85.sp,
                                                child: ListView.builder(
                                                    itemCount: 18,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return OrderListItemWidget(
                                                        goToModalRequested:
                                                            () {},
                                                        selected: false,
                                                        idNo: "1001",
                                                        shopN:
                                                            "Restaurant Chef n Stuff",
                                                        status: "In Progress",
                                                        date: "12/07/2022",
                                                        orderItemId: "1",
                                                        location:
                                                            'Kuala Lumpur',
                                                        number: '+601127314677',
                                                        goToPageRequested:
                                                            (val) => model
                                                                .goToPage(val),
                                                      );
                                                    }),
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
