import 'package:flutter_application_1/ui/views/add_extra_charges/add_extra_charges_view.dart';
import 'package:flutter_application_1/ui/views/add_new_veune/add_new_veune_view.dart';
import 'package:flutter_application_1/ui/views/feedback_form_add_questions/feedback_form_add_questions_view.dart';
import 'package:flutter_application_1/ui/views/feedback_forms/feedback_forms_view.dart';
import 'package:flutter_application_1/ui/views/feedback_results/feedback_results_view.dart';
import 'package:flutter_application_1/ui/views/home/home_view.dart';
import 'package:flutter_application_1/ui/views/login/login_view.dart';
import 'package:flutter_application_1/ui/views/master/master_view.dart';
import 'package:flutter_application_1/ui/views/menu_management_modifiers/menu_management_modifiers_view.dart';
import 'package:flutter_application_1/ui/views/menu_search/menu_search_view.dart';
import 'package:flutter_application_1/ui/views/modal_delete/modal_delete_view.dart';
import 'package:flutter_application_1/ui/views/modal_order_status/modal_order_status_view.dart';
import 'package:flutter_application_1/ui/views/modal_table_status/modal_table_status_view.dart';
import 'package:flutter_application_1/ui/views/multi_orders_select/multi_orders_select_view.dart';
import 'package:flutter_application_1/ui/views/order_details_multi_select/order_details_multi_select_view.dart';
import 'package:flutter_application_1/ui/views/orders/orders_view.dart';
import 'package:flutter_application_1/ui/views/orders_details/orders_details_view.dart';
import 'package:flutter_application_1/ui/views/menu_management_menu/menu_management_menu_view.dart';
import 'package:flutter_application_1/ui/views/price_edit/price_edit_view.dart';
import 'package:flutter_application_1/ui/views/qr_menu_design/qr_menu_design_view.dart';
import 'package:flutter_application_1/ui/views/qr_menu_display_options/qr_menu_display_options_view.dart';
import 'package:flutter_application_1/ui/views/qr_menu_feedback/qr_menu_feedback_view.dart';
import 'package:flutter_application_1/ui/views/qr_menu_ordering/qr_menu_ordering_view.dart';
import 'package:flutter_application_1/ui/views/qr_menu_qr_settings/qr_menu_qr_settings_view.dart';
import 'package:flutter_application_1/ui/views/translation/translation_view.dart';
import 'package:flutter_application_1/ui/views/translation_item/translation_item_view.dart';
import 'package:flutter_application_1/ui/views/translation_modifires/translation_modifires_view.dart';
import 'package:flutter_application_1/ui/views/translation_section/translation_section_view.dart';
import 'package:flutter_application_1/ui/views/translation_survey/translation_survey_view.dart';
import 'package:flutter_application_1/ui/views/venue_settings_extra_charges/venue_settings_extra_charges_view.dart';
import 'package:flutter_application_1/ui/views/venue_settings_location/venue_settings_location_view.dart';
import 'package:flutter_application_1/ui/views/venue_settings_social_accounts/venue_settings_social_accounts_view.dart';
import 'package:flutter_application_1/ui/views/venue_settings_staff/venue_settings_staff_view.dart';
import 'package:flutter_application_1/ui/views/venue_settings_tables/venue_settings_tables_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: OrdersView),
    MaterialRoute(page: OrdersDetailsView),
    MaterialRoute(page: OrderDetailsMultiSelectView),
    MaterialRoute(page: ModalDeleteView),
    MaterialRoute(page: ModalOrderStatusView),
    MaterialRoute(page: ModalTableStatusView),
    MaterialRoute(page: MultiOrdersSelectView),
    MaterialRoute(page: MenuManagementMenuView),
    MaterialRoute(page: MenuManagementModifiersView),
    MaterialRoute(page: MasterView),
    MaterialRoute(page: VenueSettingsLocationView),
    MaterialRoute(page: VenueSettingsSocialAccountsView),
    MaterialRoute(page: VenueSettingsTablesView),
    MaterialRoute(page: AddNewVeuneView),
    MaterialRoute(page: VenueSettingsStafView),
    MaterialRoute(page: VenueSettingsExtraChargesView),
    MaterialRoute(page: AddExtraChargesView),
    MaterialRoute(page: MenuSearchView),
    MaterialRoute(page: PriceEditView),
    MaterialRoute(page: QrMenuQrSettingsView),
    MaterialRoute(page: QrMenuDisplayOptionsView),
    MaterialRoute(page: QrMenuDesignView),
    MaterialRoute(page: QrMenuFeedbackView),
    MaterialRoute(page: QrMenuOrderingView),
    MaterialRoute(page: FeedbackResultsView),
    MaterialRoute(page: FeedbackFormsView),
    MaterialRoute(page: FeedbackFormAddQuestionsView),
    MaterialRoute(page: TranslationView),
    MaterialRoute(page: TranslationSectionView),
    MaterialRoute(page: TranslationItemView),
    MaterialRoute(page: TranslationModifiresView),
    MaterialRoute(page: TranslationSurveyView),
    MaterialRoute(page: LoginView, initial: true),
  ],
  dependencies: [Singleton(classType: NavigationService)],
  logger: StackedLogger(),
)
class App {}
