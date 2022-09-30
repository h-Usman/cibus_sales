import 'package:flutter_application_1/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.router.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();

  Future<void> init() async {}
  // sleep() {
  //   print("good night Boy");
  // }
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
      case 'venue_location':
        return _nav.navigateTo(Routes.venueSettingsLocationView);
      case 'venue_Social_accounts':
        return _nav.navigateTo(Routes.venueSettingsSocialAccountsView);

      default:
        return;
    }
  }

  // goToOrderPage() {
  //   _nav.navigateTo(Routes.ordersView);
  // }

  goToLogINPage() {
    _nav.navigateTo(Routes.loginView);
  }

  goToOrdersPage() {
    _nav.navigateTo(Routes.ordersView);
  }

  goToMenuManagementPage() {
    _nav.navigateTo(Routes.menuManagementMenuView);
  }

  goToOrdersDetailsPage() {
    _nav.navigateTo(Routes.ordersDetailsView);
  }
}
