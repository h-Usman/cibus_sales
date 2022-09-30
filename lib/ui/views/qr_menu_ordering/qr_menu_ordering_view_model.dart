import 'package:flutter_application_1/app/app.locator.dart';
import 'package:flutter_application_1/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class QrMenuOrderingViewModel extends BaseViewModel {
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
      case 'add_extra_charges':
        return _nav.navigateTo(Routes.addExtraChargesView);
      case 'qr_settings':
        return _nav.navigateTo(Routes.qrMenuQrSettingsView);
      case 'qr_display':
        return _nav.navigateTo(Routes.qrMenuDisplayOptionsView);
      case 'qr_design':
        return _nav.navigateTo(Routes.qrMenuDesignView);
      case 'qr_feedback':
        return _nav.navigateTo(Routes.qrMenuFeedbackView);
      case 'qr_ordering':
        return _nav.navigateTo(Routes.qrMenuOrderingView);
      default:
        return;
    }
  }
}
