// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/add_text_feild.widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class FormQuestionWidget extends StatelessWidget {
  // final String text;
  // final bool check;
  const FormQuestionWidget({
    Key? key,
    // required this.text,
    // required this.check,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Text Box';
    return Container(
      margin: EdgeInsets.only(left: 6.sp, right: 6.sp, top: 3.sp, bottom: 1.sp),
      padding: EdgeInsets.only(
        top: 2.sp,
        bottom: 4.sp,
        left: 3.sp,
        right: 3.sp,
      ),
      decoration: BoxDecoration(
        color: ccNeutral0,
        boxShadow: cbssShadowBase,
        borderRadius: BorderRadius.circular(3.2967.sp),
        border: Border.all(
          // bottom:
          //     BorderSide(
          width: 0.5,
          color: ccNatural250,
          // )
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "../assets/imges/drag_gray.svg",
            width: 2.4175.sp,
            height: 3.516.sp,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    cshorzSpace8,
                    SizedBox(
                      width: 182.sp,
                      child: AddTextFeildWidget(
                        hint: 'Would you like to come again:',
                        lebel: 'Question 1',
                        // value: 'ID',
                      ),
                    ),
                    cshorzSpace16,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            child: Tooltip(
                              message: 'Delete Question',
                              textStyle: TextStyle(
                                color: ccNeutral0,
                              ),
                              child: SvgPicture.asset(
                                "../assets/imges/delete-red.svg",
                                width: 3.0760.sp,
                                height: 4.sp,
                              ),
                            ),
                            onTap: () => showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(2.197.sp))),
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
                                              height: 14.62.sp,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      height: 10.62.sp,
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            // color: Colors.red,
                                                            child: SvgPicture
                                                                .asset(
                                                              "../assets/imges/warning-icon.svg",
                                                              height: 6.153.sp,
                                                              width: 6.153.sp,
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                            left: 4.175.sp,
                                                          )),
                                                          Text(
                                                            'Are You Sure?',
                                                            style:
                                                                GoogleFonts.sen(
                                                              color:
                                                                  ccDanger300,
                                                              fontSize:
                                                                  5.714.sp,
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
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            ccNeutral0,
                                                        elevation: 0,
                                                        shadowColor:
                                                            Colors.transparent,
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
                                              'Do you want to Delete this Question.',
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
                                          borderRadius:
                                              BorderRadius.circular(1.098.sp),
                                          border:
                                              Border.all(color: ccNutural550),
                                        ),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                ccNeutral0, // foreground
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
                                          borderRadius:
                                              BorderRadius.circular(1.098.sp),
                                          border:
                                              Border.all(color: ccDanger300),
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
                        csvertSpace4,
                      ],
                    ),
                    cshorzSpace4,
                  ]),
              csvertSpace4,
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    cshorzSpace8,
                    Container(
                      width: 85.2747.sp,
                      height: 8.7912.sp,
                      padding: EdgeInsets.only(left: 4.153.sp, right: 1.318.sp),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: ccPrimary300,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(1.0989.sp)),
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
                          'Text Box',
                          'Star Rating',
                          'Yes/No',
                          'Smiley',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        dropdownColor: ccNeutral0,
                      ),
                    ),
                    cshorzSpace4,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 5.sp,
                          height: 5.sp,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: ccNeutral0,
                                //  check == true ? ccDanger300 :
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Checkbox(
                            // shape: CircleBorder(),
                            activeColor: ccDanger300,
                            checkColor: ccNeutral0,
                            value: true,
                            onChanged: (value) {
                              // setState(() {
                              //   _myBoolean = value; // rebuilds with new value
                              // });
                            },
                          ),
                        ),
                        cshorzSpace4,
                        Text(
                          'Requried',
                          style: GoogleFonts.sen(
                            fontSize: 4.395.sp,
                            fontWeight: FontWeight.w400,
                            color: ccNutural550,
                          ),
                        ),
                      ],
                    ),
                    cshorzSpace4,
                  ]),
            ],
          ),
        ],
      ),
    );
  }
}
