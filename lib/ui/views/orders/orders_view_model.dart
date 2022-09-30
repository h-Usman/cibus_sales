import 'package:flutter_application_1/app/app.locator.dart';
import 'package:flutter_application_1/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OrdersViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();
  Future<void> init() async {}

  goToPage(String pageName) {
    switch (pageName) {
      case 'dashboard':
        return _nav.navigateTo(Routes.homeView);
      case 'order':
        return _nav.navigateTo(Routes.ordersView);
      case 'menu':
        return _nav.navigateTo(Routes.menuManagementMenuView);
      case 'orders_details':
        return _nav.navigateTo(Routes.ordersDetailsView);
      case 'milti_select_orders':
        return _nav.navigateTo(Routes.multiOrdersSelectView);
      case 'details_milti_select_orders':
        return _nav.navigateTo(Routes.orderDetailsMultiSelectView);
      case 'veune_location':
        return _nav.navigateTo(Routes.venueSettingsLocationView);
      default:
        return;
    }
  }

  goToMultiOrdersSelecPage() {
    _nav.navigateTo(Routes.multiOrdersSelectView);
  }

  goToOrdersDetailsPage() {
    _nav.navigateTo(Routes.ordersDetailsView);
  }

  goToOrdersDetailMultiSelectsPage() {
    _nav.navigateTo(Routes.orderDetailsMultiSelectView);
  }
}
