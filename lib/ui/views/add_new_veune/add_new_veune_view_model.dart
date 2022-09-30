// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:stacked/stacked.dart';
import '../../../app/app.locator.dart';
import '../../../app/app.logger.dart';
import '../../../app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class AddNewVeuneViewModel extends BaseViewModel {
  // get log => null;

  Future<void> init() async {}
  final log = getLogger('MasterModelView');
  final NavigationService _nav = locator<NavigationService>();
  goToPage(String pageName) {
    switch (pageName) {
      case 'dashboard':
        return _nav.navigateTo(Routes.homeView);
      case 'order':
        return _nav.navigateTo(Routes.ordersView);
      case 'delete':
        return _nav.navigateTo(Routes.modalDeleteView);
      case 'order_change':
        return _nav.navigateTo(Routes.modalOrderStatusView);
      case 'table_change':
        return _nav.navigateTo(Routes.modalTableStatusView);
      case 'menu':
        return _nav.navigateTo(Routes.menuManagementMenuView);
      case 'orders_details':
        return _nav.navigateTo(Routes.ordersDetailsView);
      case 'milti_select_orders':
        return _nav.navigateTo(Routes.multiOrdersSelectView);
      case 'details_milti_select_orders':
        return _nav.navigateTo(Routes.orderDetailsMultiSelectView);
      case 'venue_location':
        return _nav.navigateTo(Routes.venueSettingsLocationView);
      case 'venus_social':
        return _nav.navigateTo(Routes.venueSettingsSocialAccountsView);
      case 'veune_tables':
        return _nav.navigateTo(Routes.venueSettingsTablesView);
      default:
        return;
    }
  }

  // void goToRequestedPage(String s) {}
  var curUrl = window.location.pathname;

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
      case "meun":
        return _nav.navigateTo(Routes.menuManagementMenuView);
      case "venue_loaction":
        return _nav.navigateTo(Routes.venueSettingsLocationView);
      default:
        return;
    }
  }
  // click() {
  //   // ignore: avoid_print
  //   print('click the function');
  // }
  // goToVenue() {
  //   _nav.navigateTo(Routes.venueSettingsLocationView);
  // }

}
