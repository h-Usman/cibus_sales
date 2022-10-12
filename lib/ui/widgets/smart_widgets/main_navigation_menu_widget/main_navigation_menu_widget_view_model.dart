// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter_application_1/app/app.locator.dart';
import 'package:flutter_application_1/app/app.logger.dart';
import 'package:flutter_application_1/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MainNavigationMenuWidgetViewModel extends BaseViewModel {
  final log = getLogger('MasterModelView');
  final NavigationService _nav = locator<NavigationService>();

  var curUrl = window.location.pathname;

  Future<void> init() async {
    var fullPath = window.location.href.split("#");
    curUrl = fullPath[1];
    log.wtf(curUrl);
  }

  goToRequestedPage(String pageName) {
    log.wtf(curUrl);
    log.d(pageName);
    switch (pageName) {
      case "master":
        return _nav.navigateTo(Routes.masterView);
      case "home":
        return _nav.navigateTo(Routes.homeView);
      case "orders":
        return _nav.navigateTo(Routes.ordersView);
      case "sales":
        return _nav.navigateTo(Routes.salesView);
      case "venue":
        return _nav.navigateTo(Routes.addNewVeuneView);
      case "qr":
        return _nav.navigateTo(Routes.qrMenuQrSettingsView);
      case "fb_result":
        return _nav.navigateTo(Routes.feedbackResultsView);
      case "translation":
        return _nav.navigateTo(Routes.translationView);
      default:
        return;
    }
  }
}
