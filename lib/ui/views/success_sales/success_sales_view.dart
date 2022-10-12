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

import './success_sales_view_model.dart';

class SuccessSalesView extends StatelessWidget {
  const SuccessSalesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SuccessSalesViewModel>.reactive(
      viewModelBuilder: () => SuccessSalesViewModel(),
      onModelReady: (SuccessSalesViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        SuccessSalesViewModel model,
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
                        Expanded(
                          child: Container(
                              height: 100.h,
                              width: 100.w - 52,
                              decoration: const BoxDecoration(
                                  color: ccNeutral0,
                                  border: Border(
                                      left: BorderSide(
                                    width: 1.0,
                                    color: ccNatural250,
                                  ))),
                              child: Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // csvertSpace14,
                                  SizedBox(
                                    width: 29.23.sp,
                                    height: 29.23.sp,
                                    child: SvgPicture.asset(
                                      "../assets/imges/congrats.svg",
                                      width: 29.23.sp,
                                      height: 29.23.sp,
                                    ),
                                  ),
                                  csvertSpace4,
                                  Text('Congratulations!',
                                      style: GoogleFonts.sen(
                                        color: ccDanger300,
                                        fontSize: 8.7912.sp,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  csvertSpace4,
                                  Text(
                                      'Your lead has been sucessfully converted into Sales.',
                                      style: GoogleFonts.sen(
                                        color: ccNutural550,
                                        fontSize: 5.7142857.sp,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  csvertSpace4,
                                  Container(
                                      height: 7.4725.sp,
                                      width: 60.sp,
                                      padding: EdgeInsets.fromLTRB(
                                          5.494.sp, 0, 5.494.sp, 0),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: ccDanger300,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                1.09890.sp),
                                          ),
                                        ),
                                        onPressed: () {
                                          model.goToPage('dashboard');
                                        },
                                        child: Text(
                                          'Go to Home Screen',
                                          style: GoogleFonts.sen(
                                              fontSize: 4.3956.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      )),
                                ],
                              ))),
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
