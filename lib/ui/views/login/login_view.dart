import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../theme/cibus.colors.dart';
import './login_view_model.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      onModelReady: (LoginViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        LoginViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          backgroundColor: ccNeutral0,
          body: Stack(
            children: <Widget>[
              Positioned.fill(
                  top: 0,
                  left: 0,
                  // bottom: 0,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset(
                      "../assets/imges/v1.svg",
                      height: 91.20.sp,
                      width: 210.98.sp,
                    ),
                  )),
              Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset(
                  "../assets/imges/v2.svg",
                  height: 91.20.sp,
                  width: 210.98.sp,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 4.39.sp,
                    right: 5.49.sp,
                    bottom: 4.39.sp,
                    left: 5.49.sp),
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  color: ccNeutral0,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2.197.sp),
                      topRight: Radius.circular(2.197.sp),
                      bottomLeft: Radius.circular(2.197.sp),
                      bottomRight: Radius.circular(2.197.sp)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(0, 0, 0, 0.5),
                      // spreadRadius: 5,
                      blurRadius: 2.197.sp,
                      offset: const Offset(4, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: <Widget>[
                            Container(
                              width: 168.79.sp,
                              height: 93.9.h,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                width: 0.21978.sp,
                                color: ccNatural250,
                              ))),
                              child: Center(
                                child: Image.asset(
                                  "../assets/imges/sales-login.png",
                                  height: 106.8769.sp,
                                  width: 144.4747.sp,
                                ),
                              ),
                            ),
                            Container(
                                color: Colors.transparent,
                                // height: 93.9.h,
                                width: 118.24.sp,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        child: Center(
                                          child: Image.asset(
                                            "../assets/imges/logo.png",
                                            height: 26.37.sp,
                                            width: 38.24.sp,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(bottom: 5.93.sp),
                                      ),
                                      SizedBox(
                                          child: Center(
                                        child: SvgPicture.asset(
                                          "../assets/imges/logo-m.svg",
                                          height: 11.64.sp,
                                          width: 39.12.sp,
                                        ),
                                      )),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(bottom: 7.03.sp),
                                      ),
                                      SizedBox(
                                        child: Center(
                                          child: Text(
                                            "Let’s get started",
                                            style: GoogleFonts.sen(
                                              color: ccDanger300,
                                              fontSize: 7.03.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(bottom: 12.60.sp),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.494.sp,
                                            vertical: 2.63.sp),
                                        child: const TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: -5.0),
                                            border: OutlineInputBorder(),
                                            hintText: 'Email Address',
                                            hintStyle: TextStyle(
                                              color: ccPrimary300,
                                            ),
                                            prefixIcon: Icon(
                                              Icons.email,
                                              color: ccPrimary300,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.494.sp,
                                            vertical: 2.63.sp),
                                        child: const TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: -5.0),
                                              border: OutlineInputBorder(),
                                              hintText: 'Password',
                                              hintStyle: TextStyle(
                                                  color: ccPrimary300),
                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: ccPrimary300,
                                              )),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(bottom: 4.274.sp),
                                      ),
                                      SizedBox(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            // const Padding(
                                            //   padding:
                                            //       EdgeInsets.only(left: 25),
                                            // ),
                                            Container(
                                              height: 2.417.sp,
                                              width: 2.417.sp,
                                              color: ccNeutral270,
                                              child: Checkbox(
                                                value: false,
                                                onChanged: (value) {
                                                  // setState(() {
                                                  //   _myBoolean = value; // rebuilds with new value
                                                  // });
                                                },
                                              ),
                                              // child:
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    right: 4.395.sp)),
                                            SizedBox(
                                              child: Text(
                                                "I agreed to the ",
                                                style: GoogleFonts.sen(
                                                  fontSize: 3.95.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: ccNetural1000,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              child: Text(
                                                "terms of use",
                                                style: GoogleFonts.sen(
                                                  fontSize: 3.95.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: ccDanger300,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              child: Text(
                                                " and ",
                                                style: GoogleFonts.sen(
                                                  fontSize: 3.95.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: ccNetural1000,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              child: Text(
                                                "privacy poilcy",
                                                style: GoogleFonts.sen(
                                                  fontSize: 3.95.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: ccDanger300,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(bottom: 4.274.sp),
                                      ),
                                      Container(
                                          height: 13.62.sp,
                                          width: double.infinity,
                                          padding: EdgeInsets.fromLTRB(
                                              5.494.sp, 0, 5.494.sp, 0),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: ccDanger300,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                            onPressed: () {
                                              model.goToDashboard();
                                            },
                                            child: Text(
                                              'Sign In',
                                              style: GoogleFonts.sen(
                                                  fontSize: 5.05.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          )),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(bottom: 4.274.sp),
                                      ),
                                      SizedBox(
                                        // height: 50,
                                        child: Center(
                                          child: Text(
                                            "Forgot Password?",
                                            style: GoogleFonts.sen(
                                                color: ccDanger300,
                                                fontSize: 3.95.sp,
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.normal,
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
