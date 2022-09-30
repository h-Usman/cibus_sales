import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/prefix_dropdown_textfeild.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/section_edit_price.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './price_edit_view_model.dart';

class PriceEditView extends StatelessWidget {
  final bool check = false;
  const PriceEditView({super.key});

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Set to New Amount';
    return ViewModelBuilder<PriceEditViewModel>.reactive(
      viewModelBuilder: () => PriceEditViewModel(),
      onModelReady: (PriceEditViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        PriceEditViewModel model,
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
              Container(
                width: 100.w - 52.sp,
                height: 100.h,
                color: ccNeutral0,
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
                                      titleName: 'Main Menu Price Edit',
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
                                                Container(
                                                  height: 10.98.sp,
                                                  padding: EdgeInsets.only(
                                                      left: 3.29.sp,
                                                      right: 3.29.sp),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        '96 Items Listed',
                                                        style: GoogleFonts.sen(
                                                          color: ccDanger300,
                                                          fontSize: 4.395.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                        right: 4.5.sp,
                                                        // bottom: 5.sp,
                                                      ),
                                                      width: 68.131.sp,
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
                                                            color: ccNutural550,
                                                          ),
                                                          hintText:
                                                              "Type to Search",
                                                          fillColor: ccNeutral0,
                                                          suffixIcon: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    2.sp),
                                                            child: SvgPicture
                                                                .asset(
                                                              "../assets/imges/search.svg",
                                                              width: 3.736.sp,
                                                              height: 3.736.sp,
                                                            ),
                                                          ),
                                                        ),
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
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            height: 7.47.sp,
                                                            // width: 36.70.sp,
                                                            child:
                                                                ElevatedButton
                                                                    .icon(
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    ccDanger300, // foreground
                                                              ),
                                                              onPressed: () =>
                                                                  showDialog(
                                                                context:
                                                                    context,
                                                                barrierDismissible:
                                                                    false,
                                                                builder: (_) =>
                                                                    AlertDialog(
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(2.197.sp))),
                                                                  content:
                                                                      Container(
                                                                    // color: Colors.white,
                                                                    width:
                                                                        183.076
                                                                            .sp,
                                                                    height:
                                                                        78.68
                                                                            .sp,
                                                                    decoration: const BoxDecoration(
                                                                        border: Border(
                                                                            bottom: BorderSide(
                                                                      width:
                                                                          0.5,
                                                                      color:
                                                                          ccNatural250,
                                                                    ))),
                                                                    child:
                                                                        SizedBox(
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                            decoration: const BoxDecoration(
                                                                                border: Border(
                                                                                    bottom: BorderSide(
                                                                              width: 0.5,
                                                                              color: ccNatural250,
                                                                            ))),
                                                                            height:
                                                                                14.62.sp,
                                                                            child:
                                                                                Row(
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
                                                                                        Text(
                                                                                          'Bulk edit Price',
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
                                                                            padding:
                                                                                EdgeInsets.only(top: 4.83.sp),
                                                                          ),
                                                                          // SizedBox
                                                                          Text(
                                                                            'Change Price',
                                                                            style:
                                                                                GoogleFonts.sen(
                                                                              color: ccNutural550,
                                                                              fontSize: 4.395.sp,
                                                                            ),
                                                                          ),
                                                                          csvertSpace4,
                                                                          Row(
                                                                            children: [
                                                                              Container(
                                                                                height: 9.230769.sp,
                                                                                width: 78.sp,
                                                                                padding: EdgeInsets.only(left: 3.153.sp, right: 1.318.sp),
                                                                                decoration: ShapeDecoration(
                                                                                  shape: RoundedRectangleBorder(
                                                                                    side: const BorderSide(
                                                                                      width: 0.5,
                                                                                      style: BorderStyle.solid,
                                                                                      color: ccNatural250,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.all(Radius.circular(1.098.sp)),
                                                                                  ),
                                                                                ),
                                                                                child: DropdownButton<String>(
                                                                                  value: dropdownValue,
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down,
                                                                                    color: ccDanger300,
                                                                                    size: 5.395.sp,
                                                                                  ),
                                                                                  elevation: 16,
                                                                                  isExpanded: true,
                                                                                  // isDense: true,
                                                                                  style: TextStyle(
                                                                                    color: ccNutural550,
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
                                                                                    'Set to New Amount',
                                                                                    'Increase by',
                                                                                    'Decrease by',
                                                                                  ].map<DropdownMenuItem<String>>((String value) {
                                                                                    return DropdownMenuItem<String>(
                                                                                      value: value,
                                                                                      child: Text(value),
                                                                                    );
                                                                                  }).toList(),
                                                                                  dropdownColor: ccNeutral0,
                                                                                ),
                                                                              ),
                                                                              cshorzSpace8,
                                                                              PrefixDropdownTextFeildWidget(
                                                                                hint: '20.00',
                                                                                preVal: 'RM',
                                                                              ),
                                                                            ],
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  actions: [
                                                                    Container(
                                                                      height:
                                                                          7.25.sp,
                                                                      width: 29.23
                                                                          .sp,
                                                                      margin: EdgeInsets
                                                                          .only(
                                                                        bottom:
                                                                            4.39.sp,
                                                                      ),
                                                                      // color: Colors.green,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(1.098.sp),
                                                                        border: Border.all(
                                                                            color:
                                                                                ccNutural550),
                                                                      ),
                                                                      child: ElevatedButton
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
                                                                          width:
                                                                              2.85.sp,
                                                                          height:
                                                                              2.85.sp,
                                                                        ),
                                                                        label:
                                                                            Text(
                                                                          'NO',
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
                                                                      left: 7.25
                                                                          .sp,
                                                                    )),
                                                                    Container(
                                                                      height:
                                                                          7.25.sp,
                                                                      width: 29.23
                                                                          .sp,
                                                                      margin: EdgeInsets
                                                                          .only(
                                                                        bottom:
                                                                            4.39.sp,
                                                                      ),
                                                                      // color: Colors.green,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(1.098.sp),
                                                                        border: Border.all(
                                                                            color:
                                                                                ccDanger300),
                                                                      ),
                                                                      child: ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                          showDialog(
                                                                            context:
                                                                                context,
                                                                            barrierDismissible:
                                                                                false,
                                                                            builder: (_) =>
                                                                                AlertDialog(
                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                              content: Container(
                                                                                // color: Colors.white,
                                                                                width: 183.076.sp,
                                                                                height: 100.68.sp,
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
                                                                                                    Text(
                                                                                                      'Bulk edit Price',
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
                                                                                        'Selected prices will be updated as the list below.',
                                                                                        style: GoogleFonts.sen(
                                                                                          color: ccNutural550,
                                                                                          fontSize: 4.395.sp,
                                                                                        ),
                                                                                      ),
                                                                                      csvertSpace4,
                                                                                      Container(
                                                                                        decoration: BoxDecoration(
                                                                                          // color: ccDanger300,
                                                                                          borderRadius: BorderRadius.circular(3.29.sp),
                                                                                          border: Border.all(color: ccPrimary300, width: 0.5),
                                                                                        ),
                                                                                        clipBehavior: Clip.antiAlias,
                                                                                        width: double.infinity,
                                                                                        child: Column(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Container(
                                                                                              height: 14.945.sp,
                                                                                              color: ccDanger100,
                                                                                              child: Row(
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  cshorzSpace4,
                                                                                                  Container(
                                                                                                    width: 115.593.sp,
                                                                                                    alignment: Alignment.centerLeft,
                                                                                                    child: Text("Item",
                                                                                                        style: GoogleFonts.sen(
                                                                                                          color: ccDanger300,
                                                                                                          fontSize: 4.395.sp,
                                                                                                          fontWeight: FontWeight.w400,
                                                                                                        )),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    width: 36.483.sp,
                                                                                                    alignment: Alignment.centerLeft,
                                                                                                    child: Text("Old Price",
                                                                                                        style: GoogleFonts.sen(
                                                                                                          color: ccDanger300,
                                                                                                          fontSize: 4.395.sp,
                                                                                                          fontWeight: FontWeight.w400,
                                                                                                        )),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    alignment: Alignment.centerLeft,
                                                                                                    child: Text("New Price",
                                                                                                        style: GoogleFonts.sen(
                                                                                                          color: ccDanger300,
                                                                                                          fontSize: 4.395.sp,
                                                                                                          fontWeight: FontWeight.w400,
                                                                                                        )),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              height: 56.sp,
                                                                                              padding: EdgeInsets.only(bottom: 3.956.sp),
                                                                                              child: ListView.builder(
                                                                                                itemCount: 2,
                                                                                                itemBuilder: (context, index) {
                                                                                                  return Container(
                                                                                                    // height: 12.945.sp,
                                                                                                    color: ccNeutral0,
                                                                                                    child: Column(
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Container(
                                                                                                          height: 10.sp,
                                                                                                          decoration: const BoxDecoration(
                                                                                                              color: ccNetural350,
                                                                                                              border: Border(
                                                                                                                  bottom: BorderSide(
                                                                                                                width: 0.5,
                                                                                                                color: ccPrimary300,
                                                                                                              ))),
                                                                                                          child: Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              cshorzSpace4,
                                                                                                              Container(
                                                                                                                width: 115.593.sp,
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("Gazpaco",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccNutural550,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          decoration: const BoxDecoration(
                                                                                                              color: ccNetural350,
                                                                                                              border: Border(
                                                                                                                  bottom: BorderSide(
                                                                                                                width: 0.5,
                                                                                                                color: ccPrimary300,
                                                                                                              ))),
                                                                                                          height: 10.sp,
                                                                                                          child: Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              cshorzSpace4,
                                                                                                              Container(
                                                                                                                width: 115.593.sp,
                                                                                                                padding: EdgeInsets.only(left: 4.sp),
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("Medium Portion",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccNutural550,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                width: 36.483.sp,
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("RM 11.00",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccPrimary300,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("RM 21.00",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccNutural550,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          decoration: const BoxDecoration(
                                                                                                              color: ccNetural350,
                                                                                                              border: Border(
                                                                                                                  bottom: BorderSide(
                                                                                                                width: 0.5,
                                                                                                                color: ccPrimary300,
                                                                                                              ))),
                                                                                                          height: 10.sp,
                                                                                                          child: Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              cshorzSpace4,
                                                                                                              Container(
                                                                                                                width: 115.593.sp,
                                                                                                                padding: EdgeInsets.only(left: 4.sp),
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("Large Portion",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccNutural550,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                width: 36.483.sp,
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("RM 11.00",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccPrimary300,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("RM 21.00",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccNutural550,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 10.sp,
                                                                                                          decoration: const BoxDecoration(
                                                                                                              color: ccNetural350,
                                                                                                              border: Border(
                                                                                                                  bottom: BorderSide(
                                                                                                                width: 0.5,
                                                                                                                color: ccPrimary300,
                                                                                                              ))),
                                                                                                          child: Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              cshorzSpace4,
                                                                                                              Container(
                                                                                                                width: 115.593.sp,
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("Butternut Squash Soup",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccNutural550,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                width: 36.483.sp,
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("RM 11.00",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccPrimary300,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("RM 21.00",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccNutural550,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Container(
                                                                                                          height: 10.sp,
                                                                                                          decoration: const BoxDecoration(
                                                                                                              color: ccNetural350,
                                                                                                              border: Border(
                                                                                                                  bottom: BorderSide(
                                                                                                                width: 0.5,
                                                                                                                color: ccPrimary300,
                                                                                                              ))),
                                                                                                          child: Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                            children: [
                                                                                                              cshorzSpace4,
                                                                                                              Container(
                                                                                                                width: 115.593.sp,
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("Sea Salt Price",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccNutural550,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                width: 36.483.sp,
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("RM 11.00",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccPrimary300,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                                child: Text("RM 21.00",
                                                                                                                    style: GoogleFonts.sen(
                                                                                                                      color: ccNutural550,
                                                                                                                      fontSize: 4.395.sp,
                                                                                                                      fontWeight: FontWeight.w400,
                                                                                                                    )),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  );
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
                                                                              actions: [
                                                                                Container(
                                                                                  height: 7.25.sp,
                                                                                  width: 29.23.sp,
                                                                                  margin: EdgeInsets.only(
                                                                                    bottom: 4.39.sp,
                                                                                  ),
                                                                                  // color: Colors.green,
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
                                                                                      "../assets/imges/left-arrow.svg",
                                                                                      width: 2.85.sp,
                                                                                      height: 2.85.sp,
                                                                                    ),
                                                                                    label: Text(
                                                                                      'Back',
                                                                                      style: GoogleFonts.sen(
                                                                                        color: ccNutural550,
                                                                                        fontSize: 4.39.sp,
                                                                                        fontWeight: FontWeight.w400,
                                                                                      ),
                                                                                    ), // <-- Text
                                                                                  ),
                                                                                ),
                                                                                cshorzSpace64,
                                                                                cshorzSpace12,
                                                                                Container(
                                                                                  height: 7.25.sp,
                                                                                  width: 29.23.sp,
                                                                                  margin: EdgeInsets.only(
                                                                                    bottom: 4.39.sp,
                                                                                  ),
                                                                                  // color: Colors.green,
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
                                                                                  // color: Colors.green,
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
                                                                          );
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          backgroundColor:
                                                                              ccDanger300,
                                                                          elevation:
                                                                              0,
                                                                          shadowColor:
                                                                              Colors.transparent,
                                                                        ),
                                                                        icon: SvgPicture
                                                                            .asset(
                                                                          "../assets/imges/check-white.svg",
                                                                          width:
                                                                              4.17.sp,
                                                                          height:
                                                                              3.07.sp,
                                                                        ),
                                                                        label:
                                                                            Text(
                                                                          'Yes',
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
                                                                      left: 5.25
                                                                          .sp,
                                                                    )),
                                                                  ],
                                                                ),
                                                              ),
                                                              icon: SvgPicture
                                                                  .asset(
                                                                "../assets/imges/edit-white.svg",
                                                                width: 4.178.sp,
                                                                height:
                                                                    4.178.sp,
                                                              ),
                                                              label: Text(
                                                                'Bulk Edit Price',
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNeutral0,
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
                                              ],
                                            ),
                                          ),

                                          // Container(
                                          //   color: ccNeutral0,
                                          //   margin: EdgeInsets.only(
                                          //     left: 3.29.sp,
                                          //     right: 3.29.sp,
                                          //   ),
                                          //   child: Container(
                                          //     color: const Color(0xFFFBF2F0),
                                          //     padding: EdgeInsets.only(
                                          //       top: 5.054.sp,
                                          //       bottom: 5.054.sp,
                                          //       right: 5.sp,
                                          //       left: 4.615.sp,
                                          //     ),
                                          //     child: Row(
                                          //       mainAxisAlignment:
                                          //           MainAxisAlignment.start,
                                          //       crossAxisAlignment:
                                          //           CrossAxisAlignment.center,
                                          //       children: [
                                          //         SizedBox(
                                          //           // color: Colors.red,
                                          //           child: SvgPicture.asset(
                                          //             "../assets/imges/warning-icon.svg",
                                          //             height: 6.153.sp,
                                          //             width: 6.153.sp,
                                          //           ),
                                          //         ),
                                          //         Padding(
                                          //             padding: EdgeInsets.only(
                                          //           left: 4.175.sp,
                                          //         )),
                                          //         RichText(
                                          //           text: TextSpan(
                                          //             text:
                                          //                 'You can translate your menu in multiple languages with ',
                                          //             style: GoogleFonts.sen(
                                          //               color: ccNutural550,
                                          //               fontSize: 4.395.sp,
                                          //             ),
                                          //             children: const <
                                          //                 TextSpan>[
                                          //               TextSpan(
                                          //                   text:
                                          //                       'Translation Center.',
                                          //                   style: TextStyle(
                                          //                     color:
                                          //                         ccDanger300,
                                          //                   )),
                                          //             ],
                                          //           ),
                                          //         )
                                          //       ],
                                          //     ),
                                          //   ),
                                          // ),
                                          Container(
                                            height: 100.h - 225,
                                            width: 100.w,
                                            margin: EdgeInsets.only(
                                                // top: 3.29.sp,
                                                left: 3.29.sp,
                                                right: 3.29.sp,
                                                bottom: 12.sp),
                                            padding: EdgeInsets.all(3.29.sp),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(3.269.sp),
                                              ),
                                              // bottomLeft:
                                              // Radius.circular(3.269.sp),
                                              // bottomRight:
                                              //     Radius.circular(3.269.sp),
                                              // ),
                                              border: Border.all(
                                                color: ccNatural250,
                                              ),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: const [
                                                  SectionEditPriceEditWidget(
                                                    sName: 'Starters',
                                                  ),
                                                  SectionEditPriceEditWidget(
                                                    sName: 'Main Course',
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
