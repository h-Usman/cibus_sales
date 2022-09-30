import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class VenueSettingsLocationViewModel extends BaseViewModel {
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
      case 'veune_location':
        return _nav.navigateTo(Routes.venueSettingsLocationView);
      case 'venus_social':
        return _nav.navigateTo(Routes.venueSettingsSocialAccountsView);
      case 'venus_table':
        return _nav.navigateTo(Routes.venueSettingsTablesView);
      case 'venue_staff':
        return _nav.navigateTo(Routes.venueSettingsStafView);
      case 'venue_xtra_charges':
        return _nav.navigateTo(Routes.venueSettingsExtraChargesView);
      default:
        return;
    }
  }
}
