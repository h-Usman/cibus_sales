// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/add_text_feild.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/disable_menu_items.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/edit_menu.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/edit_menu_items.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/footer.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/items/items_sidebar_tabs.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/page_title.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/prefix_text_feild.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/show_side_dialogue.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_header.widget.dart';
import 'package:flutter_application_1/ui/widgets/smart_widgets/main_navigation_menu_widget/main_navigation_menu_widget_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './menu_search_view_model.dart';

// ignore: must_be_immutable
class MenuSearchView extends StatelessWidget {
  MenuSearchView({Key? key}) : super(key: key);

  List<bool> isSorted = [true, false, false];
  String result = '';
  final HtmlEditorController controller = HtmlEditorController();
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Select Section';
    return ViewModelBuilder<MenuSearchViewModel>.reactive(
      viewModelBuilder: () => MenuSearchViewModel(),
      onModelReady: (MenuSearchViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        MenuSearchViewModel model,
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
                                height: 15.sp,
                                color: ccNeutral0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 52.747.sp,
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "../assets/imges/left-arrow-selected.svg",
                                            width: 2.637.sp,
                                            // height: 2.417.sp,
                                          ),
                                          cshorzSpace4,
                                          PageTitlewWidget(
                                            titleName: 'Main Menu',
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          // cshorzSpace1,
                                          Container(
                                            padding: EdgeInsets.only(
                                              right: 4.5.sp,
                                              left: 5.sp,
                                            ),
                                            width: 112.sp,
                                            height: 7.47.sp,
                                            child: TextField(
                                              textAlign: TextAlign.left,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.098.sp),
                                                ),
                                                contentPadding:
                                                    EdgeInsets.all(2.197.sp),
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                  color: ccNutural550,
                                                ),
                                                hintText:
                                                    "Search for an item or section",
                                                fillColor: ccNeutral0,
                                                prefixIcon: Container(
                                                  padding: EdgeInsets.all(2.sp),
                                                  child: SvgPicture.asset(
                                                    "../assets/imges/search.svg",
                                                    width: 3.736.sp,
                                                    height: 3.736.sp,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // color: ccDanger300,
                                            width: 35.sp,
                                            // height:44,
                                            padding: EdgeInsets.all(1.5.sp),
                                            height: 9.670.sp,
                                            decoration: BoxDecoration(
                                              color: ccDanger300,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      1.098.sp),
                                            ),
                                            child: DropdownButton(
                                              focusColor: ccNeutral0,
                                              hint: SizedBox(
                                                width: 25.sp,
                                                child: Center(
                                                  child: Text(
                                                    'Add New ',
                                                    style: GoogleFonts.sen(
                                                      color: ccNeutral0,
                                                      fontSize: 4.395.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              icon: SvgPicture.asset(
                                                "../assets/imges/add-new-white.svg",
                                                height: 5.714.sp,
                                              ),
                                              underline: Container(
                                                height: 0.0,
                                                color: Colors.transparent,
                                              ),
                                              elevation: 0,
                                              items: [
                                                DropdownMenuItem(
                                                  value: "Item",
                                                  child: SizedBox(
                                                    width: 25.sp,
                                                    child: InkWell(
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                              top: 1.5.sp,
                                                              bottom: 1.5.sp,
                                                            ),
                                                            child: Text(
                                                              "Item",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    3.076.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                              // selectionColor:
                                                              //     ccDanger300,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      onTap: () =>
                                                          showSideDialogue(
                                                        context: context,
                                                        title: "Add Item",
                                                        cancelButtonText:
                                                            "Cancel",
                                                        saveButtonText: "Save",
                                                        saveButtonPressed:
                                                            (dynamic val) {
                                                          // print(
                                                          //     "hello i am clicked with $val");
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Container(
                                                          height: 100.h - 110,
                                                          // width: 100.w,
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: 4.sp,
                                                            left: 3.50.sp,
                                                            // right: 4.sp
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border(
                                                              bottom:
                                                                  BorderSide(
                                                                color:
                                                                    ccNutural550,
                                                                width: 1,
                                                              ),
                                                              top: BorderSide(
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
                                                                SizedBox(
                                                                  height:
                                                                      10.98.sp,
                                                                  width: 100.w,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      ItemsTabsWidget(
                                                                        goToPageRequested:
                                                                            (val) =>
                                                                                model.goToPage(val),
                                                                        selectedTabName:
                                                                            'ginfo',
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // width: 100.w,
                                                                  padding: EdgeInsets.only(
                                                                      top: 4.sp,
                                                                      left: 3.50
                                                                          .sp,
                                                                      right:
                                                                          4.sp),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      SizedBox(
                                                                          height: 100.h -
                                                                              200,
                                                                          width:
                                                                              100.w,
                                                                          child: SingleChildScrollView(
                                                                              child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                            AddTextFeildWidget(
                                                                              hint: 'Item Name',
                                                                              lebel: 'Name *',
                                                                            ),
                                                                            csvertSpace4,
                                                                            Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              SizedBox(
                                                                                width: 49.sp,
                                                                                child: Text(
                                                                                  "Desctiption",
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 4.395.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccDanger300,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                              Container(
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(1.0989.sp),
                                                                                  // color: Colors.white,
                                                                                  border: Border.all(
                                                                                    color: ccPrimary300,
                                                                                    width: 0.5,
                                                                                  ),
                                                                                ),
                                                                                height: 30.769.sp,
                                                                                width: 100.w,
                                                                                child: HtmlEditor(
                                                                                    controller: controller,
                                                                                    htmlEditorOptions: HtmlEditorOptions(
                                                                                      hint: "Veggie Wrap",
                                                                                    ),
                                                                                    htmlToolbarOptions: HtmlToolbarOptions(
                                                                                      defaultToolbarButtons: [
                                                                                        FontButtons(clearAll: false, strikethrough: false, superscript: false, subscript: false),
                                                                                        ListButtons(listStyles: false),
                                                                                        ParagraphButtons(
                                                                                          lineHeight: false,
                                                                                          caseConverter: false,
                                                                                          alignCenter: false,
                                                                                          alignJustify: false,
                                                                                          alignLeft: false,
                                                                                          alignRight: false,
                                                                                          textDirection: false,
                                                                                        ),
                                                                                      ],
                                                                                    )),
                                                                              ),
                                                                            ]),
                                                                            csvertSpace4,
                                                                            Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: [
                                                                                    SizedBox(
                                                                                      width: 49.sp,
                                                                                      child: Text(
                                                                                        "Image",
                                                                                        style: GoogleFonts.sen(
                                                                                          fontSize: 4.395.sp,
                                                                                          fontWeight: FontWeight.w400,
                                                                                          color: ccDanger300,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 42.857.sp,
                                                                                      child: Text(
                                                                                        "Video",
                                                                                        style: GoogleFonts.sen(
                                                                                          fontSize: 4.395.sp,
                                                                                          fontWeight: FontWeight.w400,
                                                                                          color: ccDanger300,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                                Row(
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 42.857.sp,
                                                                                      height: 38.681.sp,
                                                                                      decoration: BoxDecoration(
                                                                                        // color: ccSuccess800,
                                                                                        borderRadius: BorderRadius.circular(2.2.sp),
                                                                                        border: Border.all(
                                                                                          width: 0.5,
                                                                                          color: ccNutural550,
                                                                                        ),
                                                                                      ),
                                                                                      child: Column(
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Image.asset(
                                                                                            "../assets/imges/sect.png",
                                                                                            width: 42.857.sp,
                                                                                            height: 30.549.sp,
                                                                                          ),
                                                                                          // Text('ALLAH HOO'),
                                                                                          // cshorzSpace16,
                                                                                          SizedBox(
                                                                                            height: 7.50.sp,
                                                                                            child: Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                InkWell(
                                                                                                    child: SvgPicture.asset(
                                                                                                      "../assets/imges/delete.svg",
                                                                                                      width: 3.0760.sp,
                                                                                                      height: 4.sp,
                                                                                                    ),
                                                                                                    onTap: () => showDialog(
                                                                                                          context: context,
                                                                                                          builder: (_) => AlertDialog(
                                                                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                                                            content: Container(
                                                                                                              // color: Colors.white,
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
                                                                                                                      'Do you want to Delete this Picture',
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
                                                                                                                  onPressed: () => {
                                                                                                                    Navigator.pop(context),
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
                                                                                                        )),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 42.857.sp,
                                                                                      height: 38.6813.sp,
                                                                                      margin: EdgeInsets.only(left: 5.912.sp),
                                                                                      decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(3.29.sp),
                                                                                        border: Border.all(
                                                                                          color: ccPrimary300,
                                                                                          width: 0.2197.sp,
                                                                                        ),
                                                                                      ),
                                                                                      child: Column(
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                                                                              fontSize: 3.516.sp,
                                                                                              fontWeight: FontWeight.w400,
                                                                                              color: ccNutural550,
                                                                                            ),
                                                                                          ),
                                                                                          Padding(padding: EdgeInsets.only(bottom: 3.516.sp)),
                                                                                          Container(
                                                                                            alignment: Alignment.center,
                                                                                            width: 38.20.sp,
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
                                                                                  ],
                                                                                ),
                                                                                Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                              ],
                                                                            ),
                                                                            csvertSpace4,
                                                                            Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                Text(
                                                                                  "Price*",
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 4.395.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccDanger300,
                                                                                  ),
                                                                                ),
                                                                                csvertSpace4,
                                                                                PrefixTextFeildWidget(
                                                                                  hint: '20.00',
                                                                                  preVal: 'RM',
                                                                                )
                                                                              ]),
                                                                              cshorzSpace12,
                                                                              Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                Text(
                                                                                  "Calories",
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 4.395.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccDanger300,
                                                                                  ),
                                                                                ),
                                                                                csvertSpace4,
                                                                                PrefixTextFeildWidget(
                                                                                  hint: '150',
                                                                                  preVal: 'cal',
                                                                                )
                                                                              ]),
                                                                            ]),
                                                                            csvertSpace4,
                                                                            Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  "Items can have price options according to their sizes, servings etc.",
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 3.516.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccNutural550,
                                                                                  ),
                                                                                ),
                                                                                csvertSpace1,
                                                                                Row(
                                                                                  children: [
                                                                                    Text(
                                                                                      'For more check ',
                                                                                      style: GoogleFonts.sen(
                                                                                        fontSize: 3.516.sp,
                                                                                        fontWeight: FontWeight.w400,
                                                                                        color: ccNutural550,
                                                                                      ),
                                                                                    ),
                                                                                    InkWell(
                                                                                        child: Text(
                                                                                          'Price Options',
                                                                                          style: GoogleFonts.sen(
                                                                                            fontSize: 3.516.sp,
                                                                                            fontWeight: FontWeight.w400,
                                                                                            color: ccDanger300,
                                                                                          ),
                                                                                        ),
                                                                                        onTap: () {}),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            csvertSpace4,
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  "Display Item ",
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 4.395.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccDanger300,
                                                                                  ),
                                                                                ),
                                                                                Tooltip(
                                                                                  message: 'You can hide / display the section in Cibus apps',
                                                                                  textStyle: TextStyle(
                                                                                    color: ccNeutral0,
                                                                                  ),
                                                                                  child: SvgPicture.asset(
                                                                                    "../assets/imges/warning.svg",
                                                                                    width: 2.417.sp,
                                                                                    height: 2.417.sp,
                                                                                  ),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 60.sp - 2.417.sp,
                                                                                ),
                                                                                SizedBox(
                                                                                  child: FlutterSwitch(width: 9.67.sp, height: 5.274.sp, activeColor: ccSuccess700, onToggle: (bool value) {}, value: true),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            csvertSpace4,
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  "Mark as sold ",
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 4.395.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccDanger300,
                                                                                  ),
                                                                                ),
                                                                                Tooltip(
                                                                                  message: "You can mark the item as Sold Out if it's out of stock",
                                                                                  textStyle: TextStyle(
                                                                                    color: ccNeutral0,
                                                                                  ),
                                                                                  child: SvgPicture.asset(
                                                                                    "../assets/imges/warning.svg",
                                                                                    width: 2.417.sp,
                                                                                    height: 2.417.sp,
                                                                                  ),
                                                                                ),
                                                                                cshorzSpace32,
                                                                                cshorzSpace32,
                                                                                SizedBox(
                                                                                  child: FlutterSwitch(width: 9.67.sp, height: 5.274.sp, activeColor: ccSuccess700, onToggle: (bool value) {}, value: false),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            csvertSpace4,
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  "Section* ",
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 4.395.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccDanger300,
                                                                                  ),
                                                                                ),
                                                                                Tooltip(
                                                                                  message: 'Select parent section that the item will be displayed under',
                                                                                  textStyle: TextStyle(
                                                                                    color: ccNeutral0,
                                                                                  ),
                                                                                  child: SvgPicture.asset(
                                                                                    "../assets/imges/warning.svg",
                                                                                    width: 2.417.sp,
                                                                                    height: 2.417.sp,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            csvertSpace4,
                                                                            Container(
                                                                              width: 145.79.sp,
                                                                              padding: EdgeInsets.only(left: 4.153.sp, right: 1.318.sp),
                                                                              decoration: ShapeDecoration(
                                                                                shape: RoundedRectangleBorder(
                                                                                  side: const BorderSide(
                                                                                    width: 1,
                                                                                    style: BorderStyle.solid,
                                                                                    color: ccPrimary300,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.all(Radius.circular(1.0989.sp)),
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
                                                                                  'Select Section',
                                                                                  'Section A',
                                                                                  'Section A',
                                                                                ].map<DropdownMenuItem<String>>((String value) {
                                                                                  return DropdownMenuItem<String>(
                                                                                    value: value,
                                                                                    child: Text(value),
                                                                                  );
                                                                                }).toList(),
                                                                                dropdownColor: ccNeutral0,
                                                                              ),
                                                                            ),
                                                                            csvertSpace4,
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  "Label ",
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 4.395.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccDanger300,
                                                                                  ),
                                                                                ),
                                                                                Tooltip(
                                                                                  message: 'Labels help to attract people to the item. E.g., New, Signature',
                                                                                  textStyle: TextStyle(
                                                                                    color: ccNeutral0,
                                                                                  ),
                                                                                  child: SvgPicture.asset(
                                                                                    "../assets/imges/warning.svg",
                                                                                    width: 2.417.sp,
                                                                                    height: 2.417.sp,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            csvertSpace4,
                                                                            Container(
                                                                              width: 145.79.sp,
                                                                              padding: EdgeInsets.only(left: 4.153.sp, right: 1.318.sp),
                                                                              decoration: ShapeDecoration(
                                                                                shape: RoundedRectangleBorder(
                                                                                  side: const BorderSide(
                                                                                    width: 1,
                                                                                    style: BorderStyle.solid,
                                                                                    color: ccPrimary300,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.all(Radius.circular(1.0989.sp)),
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
                                                                                  'Select Section',
                                                                                  'Section A',
                                                                                  'Section A',
                                                                                ].map<DropdownMenuItem<String>>((String value) {
                                                                                  return DropdownMenuItem<String>(
                                                                                    value: value,
                                                                                    child: Container(
                                                                                      // color: ccDanger300,
                                                                                      decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(1.758.sp),
                                                                                        border: Border.all(
                                                                                          color: ccDanger300,
                                                                                          width: 1,
                                                                                        ),
                                                                                      ),
                                                                                      child: Chip(
                                                                                        backgroundColor: ccDanger100,
                                                                                        deleteIconColor: ccDanger300,
                                                                                        label: Text(value,
                                                                                            style: GoogleFonts.sen(
                                                                                              fontSize: 3.516.sp,
                                                                                              fontWeight: FontWeight.w400,
                                                                                              color: ccDanger300,
                                                                                            )),
                                                                                        onDeleted: () {
                                                                                          debugPrint('do somethings');
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                    // ),
                                                                                    // Text(value),
                                                                                  );
                                                                                }).toList(),
                                                                                dropdownColor: ccNeutral0,
                                                                              ),
                                                                            ),
                                                                            csvertSpace4,
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  "Ingredient Warnings ",
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 4.395.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccDanger300,
                                                                                  ),
                                                                                ),
                                                                                Tooltip(
                                                                                  message: 'You can select the ingredients used to cook this item',
                                                                                  textStyle: TextStyle(
                                                                                    color: ccNeutral0,
                                                                                  ),
                                                                                  child: SvgPicture.asset(
                                                                                    "../assets/imges/warning.svg",
                                                                                    width: 2.417.sp,
                                                                                    height: 2.417.sp,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            csvertSpace4,
                                                                            Container(
                                                                              width: 145.79.sp,
                                                                              padding: EdgeInsets.only(left: 4.153.sp, right: 1.318.sp),
                                                                              decoration: ShapeDecoration(
                                                                                shape: RoundedRectangleBorder(
                                                                                  side: const BorderSide(
                                                                                    width: 1,
                                                                                    style: BorderStyle.solid,
                                                                                    color: ccPrimary300,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.all(Radius.circular(1.0989.sp)),
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
                                                                                  'Select Section',
                                                                                  'Section A',
                                                                                  'Section A',
                                                                                ].map<DropdownMenuItem<String>>((String value) {
                                                                                  return DropdownMenuItem<String>(
                                                                                    value: value,
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(1.758.sp),
                                                                                        border: Border.all(
                                                                                          color: ccDanger300,
                                                                                          width: 1,
                                                                                        ),
                                                                                      ),
                                                                                      child: Chip(
                                                                                        backgroundColor: ccDanger100,
                                                                                        deleteIconColor: ccDanger300,
                                                                                        label: Text(value,
                                                                                            style: GoogleFonts.sen(
                                                                                              fontSize: 3.516.sp,
                                                                                              fontWeight: FontWeight.w400,
                                                                                              color: ccDanger300,
                                                                                            )),
                                                                                        onDeleted: () {
                                                                                          debugPrint('do somethings');
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                    // ),
                                                                                    // Text(value),
                                                                                  );
                                                                                }).toList(),
                                                                                dropdownColor: ccNeutral0,
                                                                              ),
                                                                            ),
                                                                            csvertSpace4,
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  "Preparation Time ",
                                                                                  style: GoogleFonts.sen(
                                                                                    fontSize: 4.395.sp,
                                                                                    fontWeight: FontWeight.w400,
                                                                                    color: ccDanger300,
                                                                                  ),
                                                                                ),
                                                                                Tooltip(
                                                                                  message: 'Mention the time to be taken to cook this item',
                                                                                  textStyle: TextStyle(
                                                                                    color: ccNeutral0,
                                                                                  ),
                                                                                  child: SvgPicture.asset(
                                                                                    "../assets/imges/warning.svg",
                                                                                    width: 2.417.sp,
                                                                                    height: 2.417.sp,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            csvertSpace4,
                                                                            PrefixTextFeildWidget(
                                                                              hint: '0',
                                                                              preVal: 'Mins',
                                                                            ),
                                                                            csvertSpace2,
                                                                          ])))
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                DropdownMenuItem(
                                                  value: "Section",
                                                  child: SizedBox(
                                                    width: 25.sp,
                                                    child: InkWell(
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                              top: 1.5.sp,
                                                              bottom: 1.5.sp,
                                                            ),
                                                            child: Text(
                                                              "Section",
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    3.076.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      onTap: () =>
                                                          showSideDialogue(
                                                        context: context,
                                                        title: "Add Section",
                                                        cancelButtonText:
                                                            "Cancel",
                                                        saveButtonText: "Save",
                                                        saveButtonPressed:
                                                            (dynamic val) {
                                                          // print(
                                                          //     "hello i am clicked with $val");
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Container(
                                                          height: 100.h - 110,
                                                          // width: 100.w,
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 4.sp,
                                                                  left: 3.50.sp,
                                                                  right: 4.sp),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border(
                                                              bottom:
                                                                  BorderSide(
                                                                color:
                                                                    ccNutural550,
                                                                width: 1,
                                                              ),
                                                              top: BorderSide(
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
                                                                        100.h -
                                                                            200,
                                                                    width:
                                                                        100.w,
                                                                    child:
                                                                        SingleChildScrollView(
                                                                            child: Column(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                          csvertSpace4,
                                                                          AddTextFeildWidget(
                                                                            hint:
                                                                                'Main Course',
                                                                            lebel:
                                                                                'Name *',
                                                                            // value: 'ID',
                                                                          ),
                                                                          csvertSpace4,
                                                                          AddTextFeildWidget(
                                                                            hint:
                                                                                'Fresh and organic ingredients',
                                                                            lebel:
                                                                                'Description *',
                                                                            // value: 'ID',
                                                                          ),
                                                                          csvertSpace4,
                                                                          Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Text(
                                                                                    "Note ",
                                                                                    style: GoogleFonts.sen(
                                                                                      fontSize: 4.395.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                      color: ccDanger300,
                                                                                    ),
                                                                                  ),
                                                                                  Tooltip(
                                                                                    message: 'Section note to display at the bottom of the menu',
                                                                                    textStyle: TextStyle(
                                                                                      color: ccNeutral0,
                                                                                    ),
                                                                                    child: SvgPicture.asset(
                                                                                      "../assets/imges/warning.svg",
                                                                                      width: 2.417.sp,
                                                                                      height: 2.417.sp,
                                                                                    ),
                                                                                  ),
                                                                                  cshorzSpace16,
                                                                                ],
                                                                              ),
                                                                              Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                              SizedBox(
                                                                                width: 95.w,
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
                                                                                          borderRadius: BorderRadius.circular(1.758.sp),
                                                                                          borderSide: BorderSide(
                                                                                            color: ccPrimary300,
                                                                                            width: 0.2197.sp,
                                                                                          )),
                                                                                      hintText: 'e.g. 10% Service Charge Included',
                                                                                      hintStyle: TextStyle(
                                                                                        color: ccPrimary300,
                                                                                        fontSize: 3.956.sp,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                            ],
                                                                          ),
                                                                          csvertSpace4,
                                                                          Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Text(
                                                                                    "Image",
                                                                                    style: GoogleFonts.sen(
                                                                                      fontSize: 4.395.sp,
                                                                                      fontWeight: FontWeight.w400,
                                                                                      color: ccDanger300,
                                                                                    ),
                                                                                  ),
                                                                                  cshorzSpace16,
                                                                                ],
                                                                              ),
                                                                              Padding(padding: EdgeInsets.only(bottom: 3.95.sp)),
                                                                              Container(
                                                                                width: 42.857.sp,
                                                                                height: 38.681.sp,
                                                                                decoration: BoxDecoration(
                                                                                  // color: ccSuccess800,
                                                                                  borderRadius: BorderRadius.circular(2.2.sp),
                                                                                  border: Border.all(
                                                                                    width: 0.5,
                                                                                    color: ccNutural550,
                                                                                  ),
                                                                                ),
                                                                                child: Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Image.asset(
                                                                                      "../assets/imges/sect.png",
                                                                                      width: 42.857.sp,
                                                                                      height: 30.549.sp,
                                                                                    ),
                                                                                    // Text('ALLAH HOO'),
                                                                                    // cshorzSpace16,
                                                                                    SizedBox(
                                                                                      height: 7.50.sp,
                                                                                      child: Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                        children: [
                                                                                          InkWell(
                                                                                              child: Tooltip(
                                                                                                message: 'Delete image',
                                                                                                textStyle: TextStyle(
                                                                                                  color: ccNeutral0,
                                                                                                ),
                                                                                                child: SvgPicture.asset(
                                                                                                  "../assets/imges/delete.svg",
                                                                                                  width: 3.0760.sp,
                                                                                                  height: 4.sp,
                                                                                                ),
                                                                                              ),
                                                                                              onTap: () => showDialog(
                                                                                                    context: context,
                                                                                                    builder: (_) => AlertDialog(
                                                                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.197.sp))),
                                                                                                      content: Container(
                                                                                                        // color: Colors.white,
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
                                                                                                                'Do you want to Delete this Picture',
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
                                                                                                            onPressed: () => {
                                                                                                              Navigator.pop(context),
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
                                                                                                  )),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
                                                                            ],
                                                                          ),
                                                                          csvertSpace4,
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                "Display Section ",
                                                                                style: GoogleFonts.sen(
                                                                                  fontSize: 4.395.sp,
                                                                                  fontWeight: FontWeight.w400,
                                                                                  color: ccDanger300,
                                                                                ),
                                                                              ),
                                                                              Tooltip(
                                                                                message: 'You can hide / display the section in Cibus apps',
                                                                                textStyle: TextStyle(
                                                                                  color: ccNeutral0,
                                                                                ),
                                                                                child: SvgPicture.asset(
                                                                                  "../assets/imges/warning.svg",
                                                                                  width: 2.417.sp,
                                                                                  height: 2.417.sp,
                                                                                ),
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
                                                    ),
                                                  ),
                                                ),
                                              ],
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ],
                                      ),
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
                                          // if no ites or list are available
                                          // NoMenuSectionsWidget(),
                                          Container(
                                            color: ccNeutral0,
                                            height: 100.h - 186,
                                            width: 100.w,
                                            margin: EdgeInsets.only(
                                                // top: 3.29.sp,
                                                // left: 3.29.sp,
                                                right: 3.29.sp,
                                                bottom: 11.sp),
                                            child: SingleChildScrollView(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 52.747.sp,
                                                    height: 100.h - 200,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(
                                                                3.269.sp),
                                                        bottomRight:
                                                            Radius.circular(
                                                                3.269.sp),
                                                      ),
                                                      border: Border.all(
                                                        color: ccNatural250,
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        top: 5.714.sp,
                                                        bottom: 5.714.sp,
                                                        left: 3.956.sp,
                                                        right: 3.956.sp),
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
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Sections',
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    3.956.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                            InkWell(
                                                              child: SvgPicture
                                                                  .asset(
                                                                "../assets/imges/add-new.svg",
                                                                width: 4.178.sp,
                                                                height:
                                                                    4.178.sp,
                                                              ),
                                                              onTap: () {},
                                                            )
                                                          ],
                                                        ),
                                                        csvertSpace4,
                                                        Container(
                                                          color: ccNeutral0,
                                                          child: ToggleButtons(
                                                            isSelected:
                                                                isSorted,
                                                            selectedColor:
                                                                ccDanger300,
                                                            color: ccNutural550,
                                                            fillColor:
                                                                ccNeutral0,
                                                            selectedBorderColor:
                                                                ccDanger300,
                                                            borderWidth: 0.5,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.1978
                                                                            .sp),
                                                            children: <Widget>[
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            2.75.sp),
                                                                child: Text(
                                                                  'All',
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    fontSize:
                                                                        3.0769
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            2.75.sp),
                                                                child: Text(
                                                                  'Active',
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    fontSize:
                                                                        3.0769
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            2.75.sp),
                                                                child: Text(
                                                                  'Inactive',
                                                                  style:
                                                                      GoogleFonts
                                                                          .sen(
                                                                    fontSize:
                                                                        3.0769
                                                                            .sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                            onPressed:
                                                                (int newIndex) {
                                                              // setState(() {
                                                              //   for (int index = 0;
                                                              //       index <
                                                              //           isSorted
                                                              //               .length;
                                                              //       index++) {
                                                              //     if (index ==
                                                              //         newIndex) {
                                                              //       isSorted[index] =
                                                              //           true;
                                                              //     } else {
                                                              //       isSorted[index] =
                                                              //           false;
                                                              //     }
                                                              //   }
                                                              // });
                                                            },
                                                          ),
                                                        ),
                                                        csvertSpace8,
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SvgPicture.asset(
                                                              "../assets/imges/drag_gray.svg",
                                                              width: 1.3186.sp,
                                                              height: 1.758.sp,
                                                            ),
                                                            cshorzSpace4,
                                                            Container(
                                                              height: 1.3186.sp,
                                                              width: 1.3186.sp,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    ccSuccess800,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2.2.sp),
                                                              ),
                                                            ),
                                                            cshorzSpace2,
                                                            Text(
                                                              'Starters',
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    3.0769.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        csvertSpace3,
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SvgPicture.asset(
                                                              "../assets/imges/drag_gray.svg",
                                                              width: 1.3186.sp,
                                                              height: 1.758.sp,
                                                            ),
                                                            cshorzSpace4,
                                                            Container(
                                                              height: 1.3186.sp,
                                                              width: 1.3186.sp,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    ccSuccess800,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2.2.sp),
                                                              ),
                                                            ),
                                                            cshorzSpace2,
                                                            Text(
                                                              'Salads',
                                                              style: GoogleFonts
                                                                  .sen(
                                                                color:
                                                                    ccNutural550,
                                                                fontSize:
                                                                    3.0769.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        // csvertSpace3,
                                                        ExpansionTile(
                                                          tilePadding:
                                                              EdgeInsets.only(
                                                                  left: 0,
                                                                  top: 0),
                                                          collapsedIconColor:
                                                              ccDanger300,
                                                          iconColor:
                                                              ccDanger300,
                                                          title: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SvgPicture.asset(
                                                                "../assets/imges/drag_gray.svg",
                                                                width:
                                                                    1.3186.sp,
                                                                height:
                                                                    1.758.sp,
                                                              ),
                                                              cshorzSpace4,
                                                              Container(
                                                                height:
                                                                    1.3186.sp,
                                                                width:
                                                                    1.3186.sp,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color:
                                                                      ccSuccess800,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2.2.sp),
                                                                ),
                                                              ),
                                                              cshorzSpace2,
                                                              Text(
                                                                'Main Course',
                                                                style:
                                                                    GoogleFonts
                                                                        .sen(
                                                                  color:
                                                                      ccNutural550,
                                                                  fontSize:
                                                                      3.0769.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          children: [
                                                            Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  // csvertSpace3,
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      cshorzSpace5,
                                                                      SvgPicture
                                                                          .asset(
                                                                        "../assets/imges/drag_gray.svg",
                                                                        width: 1.3186
                                                                            .sp,
                                                                        height:
                                                                            1.758.sp,
                                                                      ),
                                                                      cshorzSpace4,
                                                                      Container(
                                                                        height:
                                                                            1.3186.sp,
                                                                        width: 1.3186
                                                                            .sp,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              ccSuccess800,
                                                                          borderRadius:
                                                                              BorderRadius.circular(2.2.sp),
                                                                        ),
                                                                      ),
                                                                      cshorzSpace2,
                                                                      Text(
                                                                        'Wraps',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.0769.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  csvertSpace3,
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      cshorzSpace5,
                                                                      SvgPicture
                                                                          .asset(
                                                                        "../assets/imges/drag_gray.svg",
                                                                        width: 1.3186
                                                                            .sp,
                                                                        height:
                                                                            1.758.sp,
                                                                      ),
                                                                      cshorzSpace4,
                                                                      Container(
                                                                        height:
                                                                            1.3186.sp,
                                                                        width: 1.3186
                                                                            .sp,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              ccSuccess800,
                                                                          borderRadius:
                                                                              BorderRadius.circular(2.2.sp),
                                                                        ),
                                                                      ),
                                                                      cshorzSpace2,
                                                                      Text(
                                                                        'Chicken',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.0769.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  csvertSpace3,
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      cshorzSpace5,
                                                                      SvgPicture
                                                                          .asset(
                                                                        "../assets/imges/drag_gray.svg",
                                                                        width: 1.3186
                                                                            .sp,
                                                                        height:
                                                                            1.758.sp,
                                                                      ),
                                                                      cshorzSpace4,
                                                                      Container(
                                                                        height:
                                                                            1.3186.sp,
                                                                        width: 1.3186
                                                                            .sp,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              ccSuccess800,
                                                                          borderRadius:
                                                                              BorderRadius.circular(2.2.sp),
                                                                        ),
                                                                      ),
                                                                      cshorzSpace2,
                                                                      Text(
                                                                        'Burger',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.0769.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  csvertSpace3,
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      cshorzSpace5,
                                                                      SvgPicture
                                                                          .asset(
                                                                        "../assets/imges/drag_gray.svg",
                                                                        width: 1.3186
                                                                            .sp,
                                                                        height:
                                                                            1.758.sp,
                                                                      ),
                                                                      cshorzSpace4,
                                                                      Container(
                                                                        height:
                                                                            1.3186.sp,
                                                                        width: 1.3186
                                                                            .sp,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              ccSuccess800,
                                                                          borderRadius:
                                                                              BorderRadius.circular(2.2.sp),
                                                                        ),
                                                                      ),
                                                                      cshorzSpace2,
                                                                      Text(
                                                                        'Red Meat',
                                                                        style: GoogleFonts
                                                                            .sen(
                                                                          color:
                                                                              ccNutural550,
                                                                          fontSize:
                                                                              3.0769.sp,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  csvertSpace3,
                                                                ])
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 100.w - 110.sp,
                                                    height: 100.h - 200,
                                                    margin: EdgeInsets.only(
                                                        left: 1.sp),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          SizedBox(
                                                            width:
                                                                100.w - 118.sp,
                                                            child:
                                                                ExpansionTile(
                                                              tilePadding:
                                                                  EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              0),
                                                              collapsedIconColor:
                                                                  ccNutural550,
                                                              iconColor:
                                                                  ccNutural550,
                                                              title: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color:
                                                                      ccNeutral0,
                                                                  boxShadow:
                                                                      cbssShadowBase,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              1.098.sp),
                                                                ),
                                                                child:
                                                                    EditMenuWidget(
                                                                  menuName:
                                                                      'Main Course',
                                                                  status: true,
                                                                ),
                                                              ),
                                                              children: [
                                                                SizedBox(
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      csvertSpace2,
                                                                      SizedBox(
                                                                        width: 170
                                                                            .sp,
                                                                        child:
                                                                            ExpansionTile(
                                                                          tilePadding:
                                                                              EdgeInsets.only(left: 0),
                                                                          collapsedIconColor:
                                                                              ccNutural550,
                                                                          iconColor:
                                                                              ccNutural550,
                                                                          title:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: ccNeutral0,
                                                                              boxShadow: cbssShadowBase,
                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                            ),
                                                                            child:
                                                                                EditMenuWidget(
                                                                              menuName: 'Wraps',
                                                                              status: true,
                                                                            ),
                                                                          ),
                                                                          children: [
                                                                            Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              SizedBox(
                                                                                child: Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                                  children: [
                                                                                    csvertSpace2,
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: ccNeutral0,
                                                                                              boxShadow: cbssShadowBase,
                                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                                            ),
                                                                                            width: 160.sp,
                                                                                            child: EditMenuItemsWidget(
                                                                                              menuName: 'Veggie',
                                                                                              status: true,
                                                                                            )),
                                                                                      ],
                                                                                    ),
                                                                                    csvertSpace2,
                                                                                    Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                      Container(
                                                                                          decoration: BoxDecoration(
                                                                                            color: ccNeutral0,
                                                                                            boxShadow: cbssShadowBase,
                                                                                            borderRadius: BorderRadius.circular(1.098.sp),
                                                                                          ),
                                                                                          width: 160.sp,
                                                                                          child: DisableEditMenuItemsWidget(
                                                                                            menuName: 'Chicken Wraps',
                                                                                            status: true,
                                                                                          ))
                                                                                    ]),
                                                                                    csvertSpace2,
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: ccNeutral0,
                                                                                              boxShadow: cbssShadowBase,
                                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                                            ),
                                                                                            width: 160.sp,
                                                                                            child: EditMenuItemsWidget(
                                                                                              menuName: 'Beef Wraps',
                                                                                              status: true,
                                                                                            )),
                                                                                      ],
                                                                                    ),
                                                                                    csvertSpace2,
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: ccNeutral0,
                                                                                              boxShadow: cbssShadowBase,
                                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                                            ),
                                                                                            width: 160.sp,
                                                                                            child: EditMenuItemsWidget(
                                                                                              menuName: 'Salmon Wraps',
                                                                                              status: true,
                                                                                            )),
                                                                                      ],
                                                                                    ),
                                                                                    csvertSpace2,
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      csvertSpace2,
                                                                      SizedBox(
                                                                        width: 170
                                                                            .sp,
                                                                        child:
                                                                            ExpansionTile(
                                                                          tilePadding:
                                                                              EdgeInsets.only(left: 0),
                                                                          collapsedIconColor:
                                                                              ccNutural550,
                                                                          iconColor:
                                                                              ccNutural550,
                                                                          title:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: ccNeutral0,
                                                                              boxShadow: cbssShadowBase,
                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                            ),
                                                                            child:
                                                                                EditMenuWidget(
                                                                              menuName: 'Chicken',
                                                                              status: true,
                                                                            ),
                                                                          ),
                                                                          children: [
                                                                            Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              SizedBox(
                                                                                child: Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                                  children: [
                                                                                    csvertSpace2,
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: ccNeutral0,
                                                                                              boxShadow: cbssShadowBase,
                                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                                            ),
                                                                                            width: 160.sp,
                                                                                            child: EditMenuItemsWidget(
                                                                                              menuName: 'Veggie',
                                                                                              status: true,
                                                                                            )),
                                                                                      ],
                                                                                    ),
                                                                                    csvertSpace2,
                                                                                    Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                      Container(
                                                                                          decoration: BoxDecoration(
                                                                                            color: ccNeutral0,
                                                                                            boxShadow: cbssShadowBase,
                                                                                            borderRadius: BorderRadius.circular(1.098.sp),
                                                                                          ),
                                                                                          width: 160.sp,
                                                                                          child: DisableEditMenuItemsWidget(
                                                                                            menuName: 'Chicken Wraps',
                                                                                            status: true,
                                                                                          ))
                                                                                    ]),
                                                                                    csvertSpace2,
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: ccNeutral0,
                                                                                              boxShadow: cbssShadowBase,
                                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                                            ),
                                                                                            width: 160.sp,
                                                                                            child: EditMenuItemsWidget(
                                                                                              menuName: 'Beef Wraps',
                                                                                              status: true,
                                                                                            )),
                                                                                      ],
                                                                                    ),
                                                                                    csvertSpace2,
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: ccNeutral0,
                                                                                              boxShadow: cbssShadowBase,
                                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                                            ),
                                                                                            width: 160.sp,
                                                                                            child: EditMenuItemsWidget(
                                                                                              menuName: 'Salmon Wraps',
                                                                                              status: true,
                                                                                            )),
                                                                                      ],
                                                                                    ),
                                                                                    csvertSpace2,
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      csvertSpace2,
                                                                      SizedBox(
                                                                        width: 170
                                                                            .sp,
                                                                        child:
                                                                            ExpansionTile(
                                                                          tilePadding:
                                                                              EdgeInsets.only(left: 0),
                                                                          collapsedIconColor:
                                                                              ccNutural550,
                                                                          iconColor:
                                                                              ccNutural550,
                                                                          title:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: ccNeutral0,
                                                                              boxShadow: cbssShadowBase,
                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                            ),
                                                                            child:
                                                                                EditMenuWidget(
                                                                              menuName: 'Burgers',
                                                                              status: true,
                                                                            ),
                                                                          ),
                                                                          children: [
                                                                            Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              SizedBox(
                                                                                child: Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                                  children: [
                                                                                    csvertSpace2,
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: ccNeutral0,
                                                                                              boxShadow: cbssShadowBase,
                                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                                            ),
                                                                                            width: 160.sp,
                                                                                            child: EditMenuItemsWidget(
                                                                                              menuName: 'Veggie',
                                                                                              status: true,
                                                                                            )),
                                                                                      ],
                                                                                    ),
                                                                                    csvertSpace2,
                                                                                    Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                      Container(
                                                                                          decoration: BoxDecoration(
                                                                                            color: ccNeutral0,
                                                                                            boxShadow: cbssShadowBase,
                                                                                            borderRadius: BorderRadius.circular(1.098.sp),
                                                                                          ),
                                                                                          width: 160.sp,
                                                                                          child: DisableEditMenuItemsWidget(
                                                                                            menuName: 'Chicken Wraps',
                                                                                            status: true,
                                                                                          ))
                                                                                    ]),
                                                                                    csvertSpace2,
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: ccNeutral0,
                                                                                              boxShadow: cbssShadowBase,
                                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                                            ),
                                                                                            width: 160.sp,
                                                                                            child: EditMenuItemsWidget(
                                                                                              menuName: 'Beef Wraps',
                                                                                              status: true,
                                                                                            )),
                                                                                      ],
                                                                                    ),
                                                                                    csvertSpace2,
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: ccNeutral0,
                                                                                              boxShadow: cbssShadowBase,
                                                                                              borderRadius: BorderRadius.circular(1.098.sp),
                                                                                            ),
                                                                                            width: 160.sp,
                                                                                            child: EditMenuItemsWidget(
                                                                                              menuName: 'Salmon Wraps',
                                                                                              status: true,
                                                                                            )),
                                                                                      ],
                                                                                    ),
                                                                                    csvertSpace2,
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width:
                                                                100.w - 118.sp,
                                                            child:
                                                                ExpansionTile(
                                                              tilePadding:
                                                                  EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              0),
                                                              collapsedIconColor:
                                                                  ccNutural550,
                                                              iconColor:
                                                                  ccNutural550,
                                                              title: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color:
                                                                      ccNeutral0,
                                                                  boxShadow:
                                                                      cbssShadowBase,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              1.098.sp),
                                                                ),
                                                                child:
                                                                    EditMenuWidget(
                                                                  menuName:
                                                                      'Salads',
                                                                  status: true,
                                                                ),
                                                              ),
                                                              children: [
                                                                SizedBox(
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      csvertSpace2,
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                              decoration: BoxDecoration(
                                                                                color: ccNeutral0,
                                                                                boxShadow: cbssShadowBase,
                                                                                borderRadius: BorderRadius.circular(1.098.sp),
                                                                              ),
                                                                              width: 170.sp,
                                                                              child: EditMenuWidget(
                                                                                menuName: 'Wraps',
                                                                                status: true,
                                                                              )),
                                                                        ],
                                                                      ),
                                                                      csvertSpace2,
                                                                      Row(
                                                                          mainAxisAlignment: MainAxisAlignment
                                                                              .end,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: ccNeutral0,
                                                                                  boxShadow: cbssShadowBase,
                                                                                  borderRadius: BorderRadius.circular(1.098.sp),
                                                                                ),
                                                                                width: 170.sp,
                                                                                child: EditMenuWidget(
                                                                                  menuName: 'Chicken',
                                                                                  status: true,
                                                                                ))
                                                                          ]),
                                                                      csvertSpace2,
                                                                      Row(
                                                                          mainAxisAlignment: MainAxisAlignment
                                                                              .end,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: ccNeutral0,
                                                                                  boxShadow: cbssShadowBase,
                                                                                  borderRadius: BorderRadius.circular(1.098.sp),
                                                                                ),
                                                                                width: 170.sp,
                                                                                child: EditMenuWidget(
                                                                                  menuName: 'Burgers',
                                                                                  status: true,
                                                                                ))
                                                                          ]),
                                                                    ],
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
// class _HtmlEditorExampleState extends State<HtmlEditorExample> {
//   String result = '';
//   final HtmlEditorController controller = HtmlEditorController();

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         if (!kIsWeb) {
//           controller.clearFocus();
//         }
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//           elevation: 0,
//           actions: [
//             IconButton(
//                 icon: Icon(Icons.refresh),
//                 onPressed: () {
//                   if (kIsWeb) {
//                     controller.reloadWeb();
//                   } else {
//                     controller.editorController!.reload();
//                   }
//                 })
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             controller.toggleCodeView();
//           },
//           child: Text(r'<\>',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               HtmlEditor(
//                 controller: controller,
//                 htmlEditorOptions: HtmlEditorOptions(
//                   hint: 'Your text here...',
//                   shouldEnsureVisible: true,
//                   //initialText: "<p>text content initial, if any</p>",
//                 ),
//                 htmlToolbarOptions: HtmlToolbarOptions(
//                   toolbarPosition: ToolbarPosition.aboveEditor, //by default
//                   toolbarType: ToolbarType.nativeScrollable, //by default
//                   onButtonPressed:
//                       (ButtonType type, bool? status, Function? updateStatus) {
//                     print(
//                         "button '${describeEnum(type)}' pressed, the current selected status is $status");
//                     return true;
//                   },
//                   onDropdownChanged: (DropdownType type, dynamic changed,
//                       Function(dynamic)? updateSelectedItem) {
//                     print(
//                         "dropdown '${describeEnum(type)}' changed to $changed");
//                     return true;
//                   },
//                   mediaLinkInsertInterceptor:
//                       (String url, InsertFileType type) {
//                     print(url);
//                     return true;
//                   },
//                   // mediaUploadInterceptor:
//                   //     (PlatformFile file, InsertFileType type) async {
//                   //   print(file.name); //filename
//                   //   print(file.size); //size in bytes
//                   //   print(file.extension); //file extension (eg jpeg or mp4)
//                   //   return true;
//                   // },
//                 ),
//                 otherOptions: OtherOptions(height: 550),
//                 callbacks: Callbacks(onBeforeCommand: (String? currentHtml) {
//                   print('html before change is $currentHtml');
//                 }, onChangeContent: (String? changed) {
//                   print('content changed to $changed');
//                 }, onChangeCodeview: (String? changed) {
//                   print('code changed to $changed');
//                 }, onChangeSelection: (EditorSettings settings) {
//                   print('parent element is ${settings.parentElement}');
//                   print('font name is ${settings.fontName}');
//                 }, onDialogShown: () {
//                   print('dialog shown');
//                 }, onEnter: () {
//                   print('enter/return pressed');
//                 }, onFocus: () {
//                   print('editor focused');
//                 }, onBlur: () {
//                   print('editor unfocused');
//                 }, onBlurCodeview: () {
//                   print('codeview either focused or unfocused');
//                 }, onInit: () {
//                   print('init');
//                 },
//                     //this is commented because it overrides the default Summernote handlers
//                     /*onImageLinkInsert: (String? url) {
//                     print(url ?? "unknown url");
//                   },
//                   onImageUpload: (FileUpload file) async {
//                     print(file.name);
//                     print(file.size);
//                     print(file.type);
//                     print(file.base64);
//                   },*/
//                     onImageUploadError: (FileUpload? file, String? base64Str,
//                         UploadError error) {
//                   print(describeEnum(error));
//                   print(base64Str ?? '');
//                   if (file != null) {
//                     print(file.name);
//                     print(file.size);
//                     print(file.type);
//                   }
//                 }, onKeyDown: (int? keyCode) {
//                   print('$keyCode key downed');
//                   print(
//                       'current character count: ${controller.characterCount}');
//                 }, onKeyUp: (int? keyCode) {
//                   print('$keyCode key released');
//                 }, onMouseDown: () {
//                   print('mouse downed');
//                 }, onMouseUp: () {
//                   print('mouse released');
//                 }, onNavigationRequestMobile: (String url) {
//                   print(url);
//                   return NavigationActionPolicy.ALLOW;
//                 }, onPaste: () {
//                   print('pasted into editor');
//                 }, onScroll: () {
//                   print('editor scrolled');
//                 }),
//                 plugins: [
//                   SummernoteAtMention(
//                       getSuggestionsMobile: (String value) {
//                         var mentions = <String>['test1', 'test2', 'test3'];
//                         return mentions
//                             .where((element) => element.contains(value))
//                             .toList();
//                       },
//                       mentionsWeb: ['test1', 'test2', 'test3'],
//                       onSelect: (String value) {
//                         print(value);
//                       }),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor: Colors.blueGrey),
//                       onPressed: () {
//                         controller.undo();
//                       },
//                       child:
//                           Text('Undo', style: TextStyle(color: Colors.white)),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor: Colors.blueGrey),
//                       onPressed: () {
//                         controller.clear();
//                       },
//                       child:
//                           Text('Reset', style: TextStyle(color: Colors.white)),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor:
//                               Theme.of(context).colorScheme.secondary),
//                       onPressed: () async {
//                         var txt = await controller.getText();
//                         if (txt.contains('src=\"data:')) {
//                           txt =
//                               '<text removed due to base-64 data, displaying the text could cause the app to crash>';
//                         }
//                         setState(() {
//                           result = txt;
//                         });
//                       },
//                       child: Text(
//                         'Submit',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor:
//                               Theme.of(context).colorScheme.secondary),
//                       onPressed: () {
//                         controller.redo();
//                       },
//                       child: Text(
//                         'Redo',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(result),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor: Colors.blueGrey),
//                       onPressed: () {
//                         controller.disable();
//                       },
//                       child: Text('Disable',
//                           style: TextStyle(color: Colors.white)),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor:
//                               Theme.of(context).colorScheme.secondary),
//                       onPressed: () async {
//                         controller.enable();
//                       },
//                       child: Text(
//                         'Enable',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor:
//                               Theme.of(context).colorScheme.secondary),
//                       onPressed: () {
//                         controller.insertText('Google');
//                       },
//                       child: Text('Insert Text',
//                           style: TextStyle(color: Colors.white)),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor:
//                               Theme.of(context).colorScheme.secondary),
//                       onPressed: () {
//                         controller.insertHtml(
//                             '''<p style="color: blue">Google in blue</p>''');
//                       },
//                       child: Text('Insert HTML',
//                           style: TextStyle(color: Colors.white)),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor:
//                               Theme.of(context).colorScheme.secondary),
//                       onPressed: () async {
//                         controller.insertLink(
//                             'Google linked', 'https://google.com', true);
//                       },
//                       child: Text(
//                         'Insert Link',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor:
//                               Theme.of(context).colorScheme.secondary),
//                       onPressed: () {
//                         controller.insertNetworkImage(
//                             'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png',
//                             filename: 'Google network image');
//                       },
//                       child: Text(
//                         'Insert network image',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor: Colors.blueGrey),
//                       onPressed: () {
//                         controller.addNotification(
//                             'Info notification', NotificationType.info);
//                       },
//                       child:
//                           Text('Info', style: TextStyle(color: Colors.white)),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor: Colors.blueGrey),
//                       onPressed: () {
//                         controller.addNotification(
//                             'Warning notification', NotificationType.warning);
//                       },
//                       child: Text('Warning',
//                           style: TextStyle(color: Colors.white)),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor:
//                               Theme.of(context).colorScheme.secondary),
//                       onPressed: () async {
//                         controller.addNotification(
//                             'Success notification', NotificationType.success);
//                       },
//                       child: Text(
//                         'Success',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor:
//                               Theme.of(context).colorScheme.secondary),
//                       onPressed: () {
//                         controller.addNotification(
//                             'Danger notification', NotificationType.danger);
//                       },
//                       child: Text(
//                         'Danger',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor: Colors.blueGrey),
//                       onPressed: () {
//                         controller.addNotification('Plaintext notification',
//                             NotificationType.plaintext);
//                       },
//                       child: Text('Plaintext',
//                           style: TextStyle(color: Colors.white)),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor:
//                               Theme.of(context).colorScheme.secondary),
//                       onPressed: () async {
//                         controller.removeNotification();
//                       },
//                       child: Text(
//                         'Remove',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class PlatformFile {
  Object? get extension => null;

  Object? get name => null;

  Object? get size => null;
}
