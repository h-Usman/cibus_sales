// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/left_menu_item.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/top_logo.widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import './main_navigation_menu_widget_view_model.dart';

class MainNavigationMenuWidgetView extends StatelessWidget {
  const MainNavigationMenuWidgetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainNavigationMenuWidgetViewModel>.reactive(
      viewModelBuilder: () => MainNavigationMenuWidgetViewModel(),
      onModelReady: (MainNavigationMenuWidgetViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        MainNavigationMenuWidgetViewModel model,
        Widget? child,
      ) {
        return Container(
          width: 51.sp,
          color: ccBakground,
          child: Stack(
            children: [
              Column(
                children: [
                  TopLogoWidget(),
                  // Text(model.curUrl!),
                  Padding(
                      padding: EdgeInsets.only(
                    top: 6.23.sp,
                  )),
                  LeftMenuItemWidget(
                    iconUrl: "../assets/imges/dashboard.svg",
                    menuName: "Dashboard",
                    isSelected: model.curUrl == "/home-view" ? true : false,
                    goToPageRequested: () => model.goToRequestedPage('home'),
                  ),
                  LeftMenuItemWidget(
                    iconUrl: "../assets/imges/leads.svg",
                    menuName: "Leads",
                    isSelected: model.curUrl == "/orders-view" ? true : false,
                    goToPageRequested: () => model.goToRequestedPage("orders"),
                  ),

                  LeftMenuItemWidget(
                    iconUrl: "../assets/imges/sales.svg",
                    menuName: "Sales",
                    isSelected: model.curUrl == "/sales-view" ? true : false,
                    goToPageRequested: () => model.goToRequestedPage("sales"),
                  ),
                  LeftMenuItemWidget(
                    iconUrl: "../assets/imges/commision.svg",
                    menuName: "Commissiom",
                    isSelected:
                        model.curUrl == "/commition-view" ? true : false,
                    goToPageRequested: () => model.goToRequestedPage(""),
                  ),
                  LeftMenuItemWidget(
                    iconUrl: "../assets/imges/claims.svg",
                    menuName: "Claims",
                    isSelected: model.curUrl == "/claims-view" ? true : false,
                    goToPageRequested: () => model.goToRequestedPage(""),
                  ),
                  LeftMenuItemWidget(
                    iconUrl: "../assets/imges/help-rounded.svg",
                    menuName: "Get Help",
                    isSelected: model.curUrl == "/help-view" ? true : false,
                    goToPageRequested: () => model.goToRequestedPage(""),
                  ),
                  // LeftMenuItemWidget(
                  //   iconUrl: "../assets/imges/integ.svg",
                  //   menuName: "Integrations",
                  //   isSelected: model.curUrl == "/integrations" ? true : false,
                  //   goToPageRequested: () => model.goToRequestedPage("home"),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //     bottom: 13.20.sp,
                  //   ),
                  // ),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 10.76923.sp,
                  color: ccNetural350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: 4.50.sp,
                      //   child: Text(
                      //     "App Configuration",
                      //     style: GoogleFonts.sen(
                      //       color: ccNutural550,
                      //       fontSize: 3.73.sp,
                      //     ),
                      //   ),
                      // ),
                      // csvertSpace2,
                      // LeftMenuItemWidget(
                      //   iconUrl: "../assets/imges/qr.svg",
                      //   menuName: "Dine-in QR Menu",
                      //   isSelected: model.curUrl == "/qr-menu-qr-settings-view"
                      // ? true
                      //       : false,
                      //   goToPageRequested: () => model.goToRequestedPage("qr"),
                      // ),
                      // csvertSpace8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left: 3.29.sp)),
                          SizedBox(
                            // width: 10.w,
                            child: SvgPicture.asset(
                              "../assets/imges/f-logo.svg",
                              height: 5.71.sp,
                              width: 8.13.sp,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 3.29.sp)),
                          SizedBox(
                            child: SvgPicture.asset(
                              "../assets/imges/c-logo.svg",
                              height: 3.95.sp,
                              width: 13.186.sp,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 13.4.sp)),
                          const SizedBox(
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: ccPrimary300,
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
      },
    );
  }
}
