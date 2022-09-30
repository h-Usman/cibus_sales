import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/add_text_feild.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/show_side_dialogue.widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class StaffListWidget extends StatelessWidget {
  // final Function goToPageRequested;
  final String name;
  final String cName;
  final String status;
  final String pCode;
  const StaffListWidget({
    Key? key,
    required this.name,
    required this.cName,
    required this.status,
    required this.pCode,

    // required this.goToPageRequested,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Active';
    return Container(
      height: 15.sp,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: ccPrimary300,
          ),
        ),
        // color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          cshorzSpace4,
          Container(
            width: 47.69.sp,
            alignment: Alignment.centerLeft,
            child: Text(name,
                style: GoogleFonts.sen(
                  color: status == "Active"
                      ? ccNutural550
                      : status == "Deactive"
                          ? ccPrimary300
                          : ccNutural550,
                  fontSize: 4.395.sp,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Container(
            width: 61.31.sp,
            alignment: Alignment.centerLeft,
            child: Text(cName,
                style: GoogleFonts.sen(
                  color: status == "Active"
                      ? ccNutural550
                      : status == "Deactive"
                          ? ccPrimary300
                          : ccNutural550,
                  fontSize: 4.395.sp,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Container(
            // height: 50,
            width: 51.86.sp,
            alignment: Alignment.centerLeft,
            child: Text(pCode,
                style: GoogleFonts.sen(
                  color: status == "Active"
                      ? ccNutural550
                      : status == "Deactive"
                          ? ccPrimary300
                          : ccNutural550,
                  fontSize: 4.395.sp,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Container(
            // height: 50,
            width: 48.13.sp,
            alignment: Alignment.centerLeft,
            child: Text(status,
                style: GoogleFonts.sen(
                  color: status == "Active"
                      ? ccSuccess800
                      : status == "Deactive"
                          ? ccDanger500
                          : ccPrimary700,
                  fontSize: 4.395.sp,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Container(
            // height: 50,
            // width: 52.307.sp,
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Tooltip(
                    message: 'Edit Staff',
                    textStyle: TextStyle(
                      color: ccNeutral0,
                    ),
                    child: SvgPicture.asset(
                      "../assets/imges/v-edit.svg",
                      // height: 20.sp,
                      width: 4.835.sp,
                      height: 4.395.sp,
                    ),
                  ),
                  // onTap: () {

                  // },
                  onTap: () => showSideDialogue(
                    context: context,
                    title: "Edit Staff Member",
                    cancelButtonText: "Cancel",
                    saveButtonText: "Save",
                    saveButtonPressed: (dynamic val) {
                      // ignore: avoid_print
                      print("hello i am clicked with $val");
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 100.h - 110,
                      padding: EdgeInsets.all(
                        4.sp,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: ccNutural550,
                            width: 1,
                          ),
                          top: BorderSide(
                            color: ccNutural550,
                            width: 1,
                          ),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            csvertSpace8,
                            AddTextFeildWidget(
                              hint: 'ID',
                              lebel: 'ID *',
                              // value: 'ID',
                            ),
                            AddTextFeildWidget(
                              hint: 'First Name',
                              lebel: 'First Name *',
                              // value: 'First Name',
                            ),
                            AddTextFeildWidget(
                              hint: 'Last Name',
                              lebel: 'Last Name *',
                              // value: 'Last Name',
                            ),
                            SizedBox(
                              width: 95.w,
                              // height:
                              //     8.791.sp,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      "Pincode",
                                      style: GoogleFonts.sen(
                                        fontSize: 4.395.sp,
                                        fontWeight: FontWeight.w400,
                                        color: ccDanger300,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 3.95.sp)),
                                  SizedBox(
                                    height: 8.791.sp,
                                    child: TextField(
                                      style:
                                          const TextStyle(color: ccNutural550),
                                      // controller: TextEditingController(
                                      //     text: "Pincode"),
                                      decoration: InputDecoration(
                                        // fillColor: Colors.white,
                                        // filled: true,
                                        contentPadding: EdgeInsets.all(2.63.sp),
                                        // fillColor:
                                        //     ccBakground,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(1.758.sp),
                                          borderSide: const BorderSide(
                                            color: ccPrimary300,
                                            width: 1,
                                          ),
                                        ),
                                        suffixIcon: Container(
                                            // color:
                                            //     Colors.amber,
                                            decoration:
                                                // ignore: prefer_const_constructors
                                                BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight:
                                                    Radius.circular(1.758.sp),
                                                bottomRight:
                                                    Radius.circular(1.758.sp),
                                              ),
                                              border: Border.all(
                                                color: ccPrimary300,
                                                width: 1,
                                              ),
                                            ),
                                            clipBehavior: Clip.antiAlias,
                                            // color:
                                            //     ccNetural350,
                                            height: 8.791.sp,
                                            width: 28.13.sp,
                                            margin:
                                                EdgeInsets.only(left: 3.296.sp),
                                            // color:
                                            //     ccNeutral0, // background color
                                            child: Container(
                                              color: ccNetural350,
                                              margin: EdgeInsets.only(left: 1),
                                              child: Center(
                                                child: Text(
                                                  "Generate",
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
                                        hintText: "Pincode",
                                        hintStyle: const TextStyle(
                                          color: ccNutural550,
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
                            AddTextFeildWidget(
                              hint: 'Check Name',
                              lebel: 'Check Name *',
                              // value: 'Check Name',
                            ),
                            SizedBox(
                              width: 95.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Status",
                                    style: GoogleFonts.sen(
                                      fontSize: 4.395.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ccDanger300,
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 3.95.sp)),
                                  Container(
                                    width: 95.w,
                                    height: 9.791.sp,
                                    padding: EdgeInsets.only(
                                        left: 4.153.sp, right: 1.318.sp),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: ccPrimary300,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1.758.sp)),
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
                                        'Active',
                                        'Deactive',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      dropdownColor: ccNeutral0,
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
                    ),
                  ),
                ),
                cshorzSpace4,
                InkWell(
                  child: Tooltip(
                    message: 'Delete Staff',
                    textStyle: TextStyle(
                      color: ccNeutral0,
                    ),
                    child: SvgPicture.asset(
                      "../assets/imges/delete-red.svg",
                      // height: 20.sp,
                      width: 5.351.sp,
                      height: 4.395.sp,
                    ),
                  ),
                  onTap: () => showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(2.197.sp))),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 10.62.sp,
                                        alignment: Alignment.centerLeft,
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
                                'Do you really want to Delete this Staff Sunny Dutt? It will be removed permanently.',
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
