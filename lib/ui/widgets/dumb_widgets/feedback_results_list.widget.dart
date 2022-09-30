import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/theme/cibus.theme.helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class FeedbackResultListWidget extends StatelessWidget {
  final Function goToPageRequested;
  final Function? goToModalRequested;
  final String formNo;
  final String formName;
  final String date;
  final String orderItemId;

  const FeedbackResultListWidget({
    Key? key,
    required this.goToPageRequested,
    this.goToModalRequested,
    required this.formNo,
    required this.date,
    required this.orderItemId,
    required this.formName,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.28.sp,
      decoration: BoxDecoration(
        color: ccNeutral0,
        border: Border(
          bottom: BorderSide(color: ccNatural250, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 70.329.sp,
            height: 6.6.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                cshorzSpace7,
                Text(
                  formNo,
                  style: GoogleFonts.sen(
                    color: ccNutural550,
                    fontSize: 3.95.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.98.sp,
            width: 57.582.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cshorzSpace2,
                    SizedBox(
                      child: Text(
                        date,
                        style: GoogleFonts.sen(
                          color: ccNutural550,
                          fontSize: 3.95.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.98.sp,
            width: 80.879.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                cshorzSpace2,
                SizedBox(
                  child: Text(
                    formName,
                    style: GoogleFonts.sen(
                      color: ccNutural550,
                      fontSize: 3.95.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 6.6.sp,
              // width: 28.571.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      cshorzSpace7,
                      SizedBox(
                        child: InkWell(
                          child: Tooltip(
                            message: 'Feedback View',
                            textStyle: TextStyle(
                              color: ccNeutral0,
                            ),
                            child: SvgPicture.asset(
                              "../assets/imges/eye-r.svg",
                              width: 4.5.sp,
                            ),
                          ),
                          onTap: () => showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (_) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(2.197.sp))),
                              content: Container(
                                // color: Colors.white,
                                width: 268.1318.sp,
                                height: 103.51.sp,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  width: 0.5,
                                  color: ccNatural250,
                                ))),
                                child: SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 10.62.sp,
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'Feedback 123513',
                                                  style: GoogleFonts.sen(
                                                    color: ccDanger300,
                                                    fontSize: 5.714.sp,
                                                  ),
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
                                        padding: EdgeInsets.only(top: 2.sp),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 5.714.sp,
                                            child: Text(
                                              'Date: 13/07/2022 17:29',
                                              style: GoogleFonts.sen(
                                                color: ccDanger300,
                                                fontSize: 4.3956.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      csvertSpace2,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 5.714.sp,
                                            child: Text(
                                              'Form: Default Feedback Form',
                                              style: GoogleFonts.sen(
                                                color: ccDanger300,
                                                fontSize: 4.3956.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 70.54945.sp,
                                        child: SingleChildScrollView(
                                            child: Column(
                                          children: [
                                            csvertSpace2,
                                            Container(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.sp),
                                              decoration: BoxDecoration(
                                                color: ccNeutral0,
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: ccNatural250,
                                                      width: 1),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    width: 157.sp,
                                                    child: Text(
                                                      'Is this your first time at our restaurant?',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    // width: 157.sp,
                                                    child: Text(
                                                      'Yes',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            csvertSpace2,
                                            Container(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.sp),
                                              decoration: BoxDecoration(
                                                color: ccNeutral0,
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: ccNatural250,
                                                      width: 1),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    width: 157.sp,
                                                    child: Text(
                                                      'What is your overall satisfaction with our restaurant?',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    // width: 157.sp,
                                                    child: Row(children: [
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                    ]),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            csvertSpace2,
                                            Container(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.sp),
                                              decoration: BoxDecoration(
                                                color: ccNeutral0,
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: ccNatural250,
                                                      width: 1),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    width: 157.sp,
                                                    child: Text(
                                                      'How would you rate the hygiene?',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    // width: 157.sp,
                                                    child: Row(children: [
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                    ]),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            csvertSpace2,
                                            Container(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.sp),
                                              decoration: BoxDecoration(
                                                color: ccNeutral0,
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: ccNatural250,
                                                      width: 1),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    width: 157.sp,
                                                    child: Text(
                                                      'How would you rate the taste of our food?',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    // width: 157.sp,
                                                    child: Row(children: [
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star-r.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                      cshorzSpace1,
                                                      SvgPicture.asset(
                                                        "../assets/imges/star.svg",
                                                        width: 5.4945.sp,
                                                      ),
                                                    ]),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            csvertSpace2,
                                            Container(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.sp),
                                              decoration: BoxDecoration(
                                                color: ccNeutral0,
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: ccNatural250,
                                                      width: 1),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    width: 157.sp,
                                                    child: Text(
                                                      'Would you come back to eat with us again?',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    // width: 157.sp,
                                                    child: Text(
                                                      'Yes',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            csvertSpace2,
                                            Container(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.sp),
                                              decoration: BoxDecoration(
                                                color: ccNeutral0,
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: ccNatural250,
                                                      width: 1),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    width: 157.sp,
                                                    child: Text(
                                                      'Is there anything else you want to tell us?',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    // width: 157.sp,
                                                    child: Text(
                                                      'please improve delivery time.',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            csvertSpace2,
                                            Container(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.sp),
                                              decoration: BoxDecoration(
                                                color: ccNeutral0,
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: ccNatural250,
                                                      width: 1),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    width: 157.sp,
                                                    child: Text(
                                                      'Name',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    // width: 157.sp,
                                                    child: Text(
                                                      'Sunny',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            csvertSpace2,
                                            Container(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.sp),
                                              decoration: BoxDecoration(
                                                color: ccNeutral0,
                                                border: Border(
                                                  bottom: BorderSide(
                                                      color: ccNatural250,
                                                      width: 1),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    width: 157.sp,
                                                    child: Text(
                                                      'Email address',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5.714.sp,
                                                    // width: 157.sp,
                                                    child: Text(
                                                      'Sunnydutt53@gmail.com',
                                                      style: GoogleFonts.sen(
                                                        color: ccNutural550,
                                                        fontSize: 4.3956.sp,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            csvertSpace4,
                                          ],
                                        )),
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
                                    borderRadius: BorderRadius.circular(5),
                                    // border: Border.all(color: ccNutural550),
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
                                      'OK',
                                      style: GoogleFonts.sen(
                                        color: ccNeutral0,
                                        fontSize: 4.39.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ), // <-- Text
                                  ),
                                ),
                                cshorzSpace48,
                              ],
                            ),
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
    );
  }
}
