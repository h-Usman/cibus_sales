import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import '../../widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import './convert_to_sales_view_model.dart';

class ConvertToSalesView extends StatelessWidget {
  const ConvertToSalesView({super.key});

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Standard';
    return ViewModelBuilder<ConvertToSalesViewModel>.reactive(
      viewModelBuilder: () => ConvertToSalesViewModel(),
      onModelReady: (ConvertToSalesViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        ConvertToSalesViewModel model,
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
                                child: Container(
                                  width: 100.w - 52.sp,
                                  padding: EdgeInsets.only(
                                    top: 3.39.sp,
                                    right: 3.39.sp,
                                  ),
                                  color: ccNeutral0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      InkWell(
                                                        child: Row(
                                                          children: [
                                                            SvgPicture.asset(
                                                              "../assets/imges/back-r.svg",
                                                              width: 5.0549.sp,
                                                              height:
                                                                  2.63736.sp,
                                                            ),
                                                            cshorzSpace3,
                                                            Text(
                                                              "Back",
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
                                                          ],
                                                        ),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      cshorzSpace4,
                                                      Text(
                                                        "Convert #1001 lead to Sales",
                                                        style: GoogleFonts.sen(
                                                          color: ccNetural1000,
                                                          fontSize: 5.7142.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
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
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: 7.50.sp,
                                                        width: 9.23.sp,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          border: Border.all(
                                                            color: ccNutural550,
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
                                                            child: SvgPicture
                                                                .asset(
                                                              "../assets/imges/print.svg",
                                                              width: 3.73.sp,
                                                              height: 3.73.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                        left: 4.39.sp,
                                                      )),
                                                      Container(
                                                        height: 7.4725.sp,
                                                        width: 9.23.sp,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          border: Border.all(
                                                            color: ccNutural550,
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
                                                            child: SvgPicture
                                                                .asset(
                                                              "../assets/imges/mail.svg",
                                                              width: 4.61538.sp,
                                                              height:
                                                                  3.07692.sp,
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
                                                        Row(
                                                          children: [
                                                            SizedBox(
                                                              // width: 97.142857.sp,
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
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 3.29
                                                                          .sp,
                                                                      right: 3.29
                                                                          .sp,
                                                                      bottom:
                                                                          4.93.sp,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: <
                                                                          Widget>[
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Lead Details",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNetural1000,
                                                                                  fontSize: 4.39.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace1,
                                                                              Text(
                                                                                "12/07/2022",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.9560.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              "Venue ID",
                                                                              style: GoogleFonts.sen(
                                                                                fontSize: 4.395.sp,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: ccDanger300,
                                                                              ),
                                                                            ),
                                                                            cshorzSpace5,
                                                                            Container(
                                                                              width: 87.912.sp,
                                                                              height: 10.10989.sp,
                                                                              color: Colors.transparent,
                                                                              child: TextField(
                                                                                // maxLines: 3,
                                                                                textAlign: TextAlign.left,
                                                                                textDirection: TextDirection.rtl,
                                                                                enabled: false,
                                                                                // readOnly: true,
                                                                                style: TextStyle(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.956.sp,
                                                                                ),
                                                                                controller: TextEditingController(text: ""),
                                                                                decoration: InputDecoration(
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
                                                                                  hintText: "",
                                                                                  hintStyle: TextStyle(
                                                                                    color: ccPrimary300,
                                                                                    fontSize: 3.956.sp,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 3.29
                                                                          .sp,
                                                                      right: 3.29
                                                                          .sp,
                                                                      bottom:
                                                                          4.93.sp,
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Company Name",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Text(
                                                                                "Chef n Stuff Sdn Bhd",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.7362.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Company Reg. No.",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Text(
                                                                                "Chef n Stuff Sdn Bhd",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.7362.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Shop Name",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Text(
                                                                                "Chef n Stuff Sdn Bhd",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.7362.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 3.29
                                                                          .sp,
                                                                      right: 3.29
                                                                          .sp,
                                                                      bottom:
                                                                          4.93.sp,
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Address",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Text(
                                                                                "36, Jalan Perdana 6/6, Pandan Perdana, 55300 Kuala Lumpur, Selangor, Malaysia",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.7362.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "State",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Text(
                                                                                "Selangor",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.7362.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "City",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Text(
                                                                                "Selangor",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.7362.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 3.29
                                                                          .sp,
                                                                      right: 3.29
                                                                          .sp,
                                                                      bottom:
                                                                          4.93.sp,
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Zip Code",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Text(
                                                                                "55300",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.7362.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Country",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Text(
                                                                                "Malaysia",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.7362.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Phone Number",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Text(
                                                                                "+60 11 2731 4677",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.7362.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 3.29
                                                                          .sp,
                                                                      right: 3.29
                                                                          .sp,
                                                                      bottom:
                                                                          4.93.sp,
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Email",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Text(
                                                                                "abbasali@gmail.com",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.7362.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Website",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Text(
                                                                                "www.chefandstuff.com",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccNutural550,
                                                                                  fontSize: 3.7362.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Create Password",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Container(
                                                                                width: 55.sp,
                                                                                height: 10.10989.sp,
                                                                                color: Colors.transparent,
                                                                                child: TextField(
                                                                                  obscureText: true,
                                                                                  textAlign: TextAlign.left,
                                                                                  textDirection: TextDirection.rtl,
                                                                                  style: TextStyle(
                                                                                    color: ccNutural550,
                                                                                    fontSize: 3.956.sp,
                                                                                  ),
                                                                                  controller: TextEditingController(text: "12345678"),
                                                                                  decoration: InputDecoration(
                                                                                    contentPadding: EdgeInsets.all(2.63.sp),
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
                                                                                        margin: EdgeInsets.only(left: 3.296.sp),
                                                                                        child: Container(
                                                                                          padding: EdgeInsets.all(2.50.sp),
                                                                                          child: SvgPicture.asset(
                                                                                            "../assets/imges/eye.svg",
                                                                                            width: 4.226373.sp,
                                                                                            height: 3.076923.sp,
                                                                                          ),
                                                                                        )),
                                                                                    hintText: "",
                                                                                    hintStyle: TextStyle(
                                                                                      color: ccPrimary300,
                                                                                      fontSize: 3.956.sp,
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
                                                                  Container(
                                                                      width: 100
                                                                              .w -
                                                                          55.40
                                                                              .sp,
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: 3.29
                                                                            .sp,
                                                                        right: 3.29
                                                                            .sp,
                                                                        bottom:
                                                                            4.93.sp,
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            "Remarks",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccDanger300,
                                                                              fontSize: 4.3956.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                          csvertSpace3,
                                                                          Text(
                                                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vel placerat velit. Fusce viverra venenatis lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vel placerat velit. Fusce viverra venenatis lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 3.7362.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      )),
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 3.29
                                                                          .sp,
                                                                      right: 3.29
                                                                          .sp,
                                                                      bottom:
                                                                          3.95.sp,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: <
                                                                          Widget>[
                                                                        Text(
                                                                          "Contract Details",
                                                                          style:
                                                                              GoogleFonts.sen(
                                                                            color:
                                                                                ccNetural1000,
                                                                            fontSize:
                                                                                4.39.sp,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 3.29
                                                                          .sp,
                                                                      right: 3.29
                                                                          .sp,
                                                                      bottom:
                                                                          4.93.sp,
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Plan Type",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              SizedBox(
                                                                                height: 10.10989.sp,
                                                                                child: Container(
                                                                                  width: 59.78.sp,
                                                                                  padding: EdgeInsets.only(
                                                                                    left: 3.52.sp,
                                                                                    right: 2.sp,
                                                                                  ),
                                                                                  decoration: ShapeDecoration(
                                                                                    shape: RoundedRectangleBorder(
                                                                                      side: const BorderSide(
                                                                                        width: 1,
                                                                                        style: BorderStyle.solid,
                                                                                        color: ccPrimary300,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.all(Radius.circular(3.296.sp)),
                                                                                    ),
                                                                                  ),
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
                                                                                      'Standard',
                                                                                      'Monthly',
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
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Subscription",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              SizedBox(
                                                                                height: 10.10989.sp,
                                                                                child: Container(
                                                                                  width: 59.78.sp,
                                                                                  padding: EdgeInsets.only(
                                                                                    left: 3.52.sp,
                                                                                    right: 2.sp,
                                                                                  ),
                                                                                  decoration: ShapeDecoration(
                                                                                    shape: RoundedRectangleBorder(
                                                                                      side: const BorderSide(
                                                                                        width: 1,
                                                                                        style: BorderStyle.solid,
                                                                                        color: ccPrimary300,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.all(Radius.circular(3.296.sp)),
                                                                                    ),
                                                                                  ),
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
                                                                                      'Standard',
                                                                                      'Monthly',
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
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              79.34.sp,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Amount",
                                                                                style: GoogleFonts.sen(
                                                                                  color: ccDanger300,
                                                                                  fontSize: 4.3956.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                ),
                                                                              ),
                                                                              csvertSpace3,
                                                                              Container(
                                                                                width: 55.sp,
                                                                                height: 10.10989.sp,
                                                                                color: Colors.transparent,
                                                                                child: SizedBox(
                                                                                  height: 10.10989.sp,
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
                                                                                            borderRadius: BorderRadius.circular(3.296.sp),
                                                                                            borderSide: BorderSide(
                                                                                              color: ccPrimary300,
                                                                                              width: 0.2197.sp,
                                                                                            )),
                                                                                        hintText: 'RM 500 / Month',
                                                                                        hintStyle: TextStyle(
                                                                                          color: ccPrimary300,
                                                                                          fontSize: 3.956.sp,
                                                                                        ),
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
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 3.29
                                                                          .sp,
                                                                      right: 3.29
                                                                          .sp,
                                                                      bottom:
                                                                          4.93.sp,
                                                                    ),
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
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: 3.29
                                                                          .sp,
                                                                      right: 3.29
                                                                          .sp,
                                                                      bottom:
                                                                          4.93.sp,
                                                                    ),
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
                                                                  SizedBox(
                                                                    height:
                                                                        10.98
                                                                            .sp,
                                                                    width: 100
                                                                            .w -
                                                                        55.50
                                                                            .sp,
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
                                                                              model.goToPage('success_sales');
                                                                            },
                                                                            icon:
                                                                                SvgPicture.asset(
                                                                              "../assets/imges/check-white.svg",
                                                                              width: 4.178.sp,
                                                                              height: 3.076.sp,
                                                                            ),
                                                                            label:
                                                                                Text(
                                                                              'Convert',
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
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )),
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
