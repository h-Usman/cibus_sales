// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/views/add_extra_charges/add_extra_charges_view.dart';
import '../ui/views/add_new_veune/add_new_veune_view.dart';
import '../ui/views/convert_to_sales/convert_to_sales_view.dart';
import '../ui/views/feedback_form_add_questions/feedback_form_add_questions_view.dart';
import '../ui/views/feedback_forms/feedback_forms_view.dart';
import '../ui/views/feedback_results/feedback_results_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/master/master_view.dart';
import '../ui/views/menu_management_menu/menu_management_menu_view.dart';
import '../ui/views/menu_management_modifiers/menu_management_modifiers_view.dart';
import '../ui/views/menu_search/menu_search_view.dart';
import '../ui/views/modal_delete/modal_delete_view.dart';
import '../ui/views/modal_order_status/modal_order_status_view.dart';
import '../ui/views/modal_table_status/modal_table_status_view.dart';
import '../ui/views/multi_orders_select/multi_orders_select_view.dart';
import '../ui/views/order_details_multi_select/order_details_multi_select_view.dart';
import '../ui/views/orders/orders_view.dart';
import '../ui/views/orders_details/orders_details_view.dart';
import '../ui/views/price_edit/price_edit_view.dart';
import '../ui/views/qr_menu_design/qr_menu_design_view.dart';
import '../ui/views/qr_menu_display_options/qr_menu_display_options_view.dart';
import '../ui/views/qr_menu_feedback/qr_menu_feedback_view.dart';
import '../ui/views/qr_menu_ordering/qr_menu_ordering_view.dart';
import '../ui/views/qr_menu_qr_settings/qr_menu_qr_settings_view.dart';
import '../ui/views/sales/sales_view.dart';
import '../ui/views/success_sales/success_sales_view.dart';
import '../ui/views/translation/translation_view.dart';
import '../ui/views/translation_item/translation_item_view.dart';
import '../ui/views/translation_modifires/translation_modifires_view.dart';
import '../ui/views/translation_section/translation_section_view.dart';
import '../ui/views/translation_survey/translation_survey_view.dart';
import '../ui/views/venue_settings_extra_charges/venue_settings_extra_charges_view.dart';
import '../ui/views/venue_settings_location/venue_settings_location_view.dart';
import '../ui/views/venue_settings_social_accounts/venue_settings_social_accounts_view.dart';
import '../ui/views/venue_settings_staff/venue_settings_staff_view.dart';
import '../ui/views/venue_settings_tables/venue_settings_tables_view.dart';

class Routes {
  static const String homeView = '/home-view';
  static const String ordersView = '/orders-view';
  static const String ordersDetailsView = '/orders-details-view';
  static const String orderDetailsMultiSelectView =
      '/order-details-multi-select-view';
  static const String modalDeleteView = '/modal-delete-view';
  static const String modalOrderStatusView = '/modal-order-status-view';
  static const String modalTableStatusView = '/modal-table-status-view';
  static const String multiOrdersSelectView = '/multi-orders-select-view';
  static const String menuManagementMenuView = '/menu-management-menu-view';
  static const String menuManagementModifiersView =
      '/menu-management-modifiers-view';
  static const String masterView = '/master-view';
  static const String venueSettingsLocationView =
      '/venue-settings-location-view';
  static const String venueSettingsSocialAccountsView =
      '/venue-settings-social-accounts-view';
  static const String venueSettingsTablesView = '/venue-settings-tables-view';
  static const String addNewVeuneView = '/add-new-veune-view';
  static const String venueSettingsStafView = '/venue-settings-staf-view';
  static const String venueSettingsExtraChargesView =
      '/venue-settings-extra-charges-view';
  static const String addExtraChargesView = '/add-extra-charges-view';
  static const String menuSearchView = '/menu-search-view';
  static const String priceEditView = '/price-edit-view';
  static const String qrMenuQrSettingsView = '/qr-menu-qr-settings-view';
  static const String qrMenuDisplayOptionsView =
      '/qr-menu-display-options-view';
  static const String qrMenuDesignView = '/qr-menu-design-view';
  static const String qrMenuFeedbackView = '/qr-menu-feedback-view';
  static const String qrMenuOrderingView = '/qr-menu-ordering-view';
  static const String feedbackResultsView = '/feedback-results-view';
  static const String feedbackFormsView = '/feedback-forms-view';
  static const String feedbackFormAddQuestionsView =
      '/feedback-form-add-questions-view';
  static const String translationView = '/translation-view';
  static const String translationSectionView = '/translation-section-view';
  static const String translationItemView = '/translation-item-view';
  static const String translationModifiresView = '/translation-modifires-view';
  static const String translationSurveyView = '/translation-survey-view';
  static const String salesView = '/sales-view';
  static const String successSalesView = '/success-sales-view';
  static const String convertToSalesView = '/convert-to-sales-view';
  static const String loginView = '/';
  static const all = <String>{
    homeView,
    ordersView,
    ordersDetailsView,
    orderDetailsMultiSelectView,
    modalDeleteView,
    modalOrderStatusView,
    modalTableStatusView,
    multiOrdersSelectView,
    menuManagementMenuView,
    menuManagementModifiersView,
    masterView,
    venueSettingsLocationView,
    venueSettingsSocialAccountsView,
    venueSettingsTablesView,
    addNewVeuneView,
    venueSettingsStafView,
    venueSettingsExtraChargesView,
    addExtraChargesView,
    menuSearchView,
    priceEditView,
    qrMenuQrSettingsView,
    qrMenuDisplayOptionsView,
    qrMenuDesignView,
    qrMenuFeedbackView,
    qrMenuOrderingView,
    feedbackResultsView,
    feedbackFormsView,
    feedbackFormAddQuestionsView,
    translationView,
    translationSectionView,
    translationItemView,
    translationModifiresView,
    translationSurveyView,
    salesView,
    successSalesView,
    convertToSalesView,
    loginView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.ordersView, page: OrdersView),
    RouteDef(Routes.ordersDetailsView, page: OrdersDetailsView),
    RouteDef(Routes.orderDetailsMultiSelectView,
        page: OrderDetailsMultiSelectView),
    RouteDef(Routes.modalDeleteView, page: ModalDeleteView),
    RouteDef(Routes.modalOrderStatusView, page: ModalOrderStatusView),
    RouteDef(Routes.modalTableStatusView, page: ModalTableStatusView),
    RouteDef(Routes.multiOrdersSelectView, page: MultiOrdersSelectView),
    RouteDef(Routes.menuManagementMenuView, page: MenuManagementMenuView),
    RouteDef(Routes.menuManagementModifiersView,
        page: MenuManagementModifiersView),
    RouteDef(Routes.masterView, page: MasterView),
    RouteDef(Routes.venueSettingsLocationView, page: VenueSettingsLocationView),
    RouteDef(Routes.venueSettingsSocialAccountsView,
        page: VenueSettingsSocialAccountsView),
    RouteDef(Routes.venueSettingsTablesView, page: VenueSettingsTablesView),
    RouteDef(Routes.addNewVeuneView, page: AddNewVeuneView),
    RouteDef(Routes.venueSettingsStafView, page: VenueSettingsStafView),
    RouteDef(Routes.venueSettingsExtraChargesView,
        page: VenueSettingsExtraChargesView),
    RouteDef(Routes.addExtraChargesView, page: AddExtraChargesView),
    RouteDef(Routes.menuSearchView, page: MenuSearchView),
    RouteDef(Routes.priceEditView, page: PriceEditView),
    RouteDef(Routes.qrMenuQrSettingsView, page: QrMenuQrSettingsView),
    RouteDef(Routes.qrMenuDisplayOptionsView, page: QrMenuDisplayOptionsView),
    RouteDef(Routes.qrMenuDesignView, page: QrMenuDesignView),
    RouteDef(Routes.qrMenuFeedbackView, page: QrMenuFeedbackView),
    RouteDef(Routes.qrMenuOrderingView, page: QrMenuOrderingView),
    RouteDef(Routes.feedbackResultsView, page: FeedbackResultsView),
    RouteDef(Routes.feedbackFormsView, page: FeedbackFormsView),
    RouteDef(Routes.feedbackFormAddQuestionsView,
        page: FeedbackFormAddQuestionsView),
    RouteDef(Routes.translationView, page: TranslationView),
    RouteDef(Routes.translationSectionView, page: TranslationSectionView),
    RouteDef(Routes.translationItemView, page: TranslationItemView),
    RouteDef(Routes.translationModifiresView, page: TranslationModifiresView),
    RouteDef(Routes.translationSurveyView, page: TranslationSurveyView),
    RouteDef(Routes.salesView, page: SalesView),
    RouteDef(Routes.successSalesView, page: SuccessSalesView),
    RouteDef(Routes.convertToSalesView, page: ConvertToSalesView),
    RouteDef(Routes.loginView, page: LoginView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    OrdersView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OrdersView(),
        settings: data,
      );
    },
    OrdersDetailsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OrdersDetailsView(),
        settings: data,
      );
    },
    OrderDetailsMultiSelectView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OrderDetailsMultiSelectView(),
        settings: data,
      );
    },
    ModalDeleteView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ModalDeleteView(),
        settings: data,
      );
    },
    ModalOrderStatusView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ModalOrderStatusView(),
        settings: data,
      );
    },
    ModalTableStatusView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ModalTableStatusView(),
        settings: data,
      );
    },
    MultiOrdersSelectView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MultiOrdersSelectView(),
        settings: data,
      );
    },
    MenuManagementMenuView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MenuManagementMenuView(),
        settings: data,
      );
    },
    MenuManagementModifiersView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MenuManagementModifiersView(),
        settings: data,
      );
    },
    MasterView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MasterView(),
        settings: data,
      );
    },
    VenueSettingsLocationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const VenueSettingsLocationView(),
        settings: data,
      );
    },
    VenueSettingsSocialAccountsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const VenueSettingsSocialAccountsView(),
        settings: data,
      );
    },
    VenueSettingsTablesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const VenueSettingsTablesView(),
        settings: data,
      );
    },
    AddNewVeuneView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddNewVeuneView(),
        settings: data,
      );
    },
    VenueSettingsStafView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const VenueSettingsStafView(),
        settings: data,
      );
    },
    VenueSettingsExtraChargesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const VenueSettingsExtraChargesView(),
        settings: data,
      );
    },
    AddExtraChargesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddExtraChargesView(),
        settings: data,
      );
    },
    MenuSearchView: (data) {
      var args = data.getArgs<MenuSearchViewArguments>(
        orElse: () => MenuSearchViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => MenuSearchView(key: args.key),
        settings: data,
      );
    },
    PriceEditView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PriceEditView(),
        settings: data,
      );
    },
    QrMenuQrSettingsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const QrMenuQrSettingsView(),
        settings: data,
      );
    },
    QrMenuDisplayOptionsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const QrMenuDisplayOptionsView(),
        settings: data,
      );
    },
    QrMenuDesignView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const QrMenuDesignView(),
        settings: data,
      );
    },
    QrMenuFeedbackView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const QrMenuFeedbackView(),
        settings: data,
      );
    },
    QrMenuOrderingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const QrMenuOrderingView(),
        settings: data,
      );
    },
    FeedbackResultsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const FeedbackResultsView(),
        settings: data,
      );
    },
    FeedbackFormsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const FeedbackFormsView(),
        settings: data,
      );
    },
    FeedbackFormAddQuestionsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const FeedbackFormAddQuestionsView(),
        settings: data,
      );
    },
    TranslationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TranslationView(),
        settings: data,
      );
    },
    TranslationSectionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TranslationSectionView(),
        settings: data,
      );
    },
    TranslationItemView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TranslationItemView(),
        settings: data,
      );
    },
    TranslationModifiresView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TranslationModifiresView(),
        settings: data,
      );
    },
    TranslationSurveyView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TranslationSurveyView(),
        settings: data,
      );
    },
    SalesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SalesView(),
        settings: data,
      );
    },
    SuccessSalesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SuccessSalesView(),
        settings: data,
      );
    },
    ConvertToSalesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ConvertToSalesView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// MenuSearchView arguments holder class
class MenuSearchViewArguments {
  final Key? key;
  MenuSearchViewArguments({this.key});
}

/// ************************************************************************
/// Extension for strongly typed navigation
/// *************************************************************************

extension NavigatorStateExtension on NavigationService {
  Future<dynamic> navigateToHomeView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.homeView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToOrdersView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.ordersView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToOrdersDetailsView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.ordersDetailsView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToOrderDetailsMultiSelectView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.orderDetailsMultiSelectView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToModalDeleteView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.modalDeleteView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToModalOrderStatusView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.modalOrderStatusView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToModalTableStatusView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.modalTableStatusView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToMultiOrdersSelectView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.multiOrdersSelectView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToMenuManagementMenuView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.menuManagementMenuView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToMenuManagementModifiersView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.menuManagementModifiersView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToMasterView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.masterView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToVenueSettingsLocationView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.venueSettingsLocationView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToVenueSettingsSocialAccountsView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.venueSettingsSocialAccountsView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToVenueSettingsTablesView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.venueSettingsTablesView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToAddNewVeuneView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.addNewVeuneView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToVenueSettingsStafView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.venueSettingsStafView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToVenueSettingsExtraChargesView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.venueSettingsExtraChargesView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToAddExtraChargesView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.addExtraChargesView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToMenuSearchView({
    Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.menuSearchView,
      arguments: MenuSearchViewArguments(key: key),
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToPriceEditView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.priceEditView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToQrMenuQrSettingsView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.qrMenuQrSettingsView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToQrMenuDisplayOptionsView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.qrMenuDisplayOptionsView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToQrMenuDesignView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.qrMenuDesignView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToQrMenuFeedbackView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.qrMenuFeedbackView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToQrMenuOrderingView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.qrMenuOrderingView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToFeedbackResultsView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.feedbackResultsView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToFeedbackFormsView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.feedbackFormsView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToFeedbackFormAddQuestionsView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.feedbackFormAddQuestionsView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToTranslationView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.translationView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToTranslationSectionView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.translationSectionView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToTranslationItemView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.translationItemView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToTranslationModifiresView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.translationModifiresView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToTranslationSurveyView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.translationSurveyView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToSalesView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.salesView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToSuccessSalesView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.successSalesView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToConvertToSalesView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.convertToSalesView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToLoginView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.loginView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }
}
