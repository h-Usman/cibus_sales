import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class ModalMergeOrderViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();
  Future<void> init() async {}
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
}
