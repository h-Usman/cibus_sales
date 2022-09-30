import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class OrdersDetailsViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();
  Future<void> init() async {}
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
      default:
        return;
    }
  }

  goToDashboard() {
    _nav.navigateTo(Routes.homeView);
  }

  goDeleteOrderModal() {
    _nav.navigateTo(Routes.modalDeleteView);
  }

  goOrderChangeModal() {
    _nav.navigateTo(Routes.modalOrderStatusView);
  }

  goTableChangeModal() {
    _nav.navigateTo(Routes.modalTableStatusView);
  }

  // void goToPage(String s) {}
}
