import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../features/collection/kurset/presentation/pages/kurset_page.dart';
import '../features/collection/menu/presentation/pages/collection_page.dart';
import '../features/collection/tracking/domain/entities/tracking.dart';
import '../features/collection/tracking/presentation/pages/detail_tracking_page.dart';
import '../features/collection/tracking/presentation/pages/tracking_page.dart';
import '../features/collection/transaction/presentation/components/data_transition_widget.dart';
import '../features/collection/transaction/presentation/pages/cart_collection_page.dart';
import '../features/collection/transaction/presentation/pages/kodel_page.dart';
import '../features/collection/transaction/presentation/pages/non_kodel_page.dart';
import '../features/home/presentation/pages/faq_page.dart';
import '../features/home/presentation/pages/home_page.dart';
import '../features/home/presentation/pages/notification_page.dart';
import '../features/kas_opname/menu/presentation/pages/lock_opname_page.dart';
import '../features/kas_opname/proses/presentation/pages/proses_opname_page.dart';
import '../features/kas_opname/validasi/presentation/pages/validate_opname_page.dart';
import '../features/kas_opname/verifikasi/presentation/pages/minus/minus_fraud_page.dart';
import '../features/kas_opname/verifikasi/presentation/pages/minus/minus_other_page.dart';
import '../features/kas_opname/verifikasi/presentation/pages/minus/minus_rrak_page.dart';
import '../features/kas_opname/verifikasi/presentation/pages/minus/minus_varian_page.dart';
import '../features/kas_opname/verifikasi/presentation/pages/verifikasi_opname_page.dart';
import '../features/login/presentation/pages/login_page.dart';
import '../features/menu/presentation/pages/menu_page.dart';
import '../features/splash/presentation/pages/splash_page.dart';
import '../features/store/domain/entities/store.dart';
import '../features/store/presentation/pages/store_page.dart';
import '../features/tenancy/presentation/pages/cart_tenant_page.dart';
import '../features/tenancy/presentation/pages/pendataan_tenant_page.dart';
import '../features/tenancy/presentation/pages/register_tenant_page.dart';
import '../features/tenancy/presentation/pages/report_tenant_page.dart';
import '../features/tenancy/presentation/pages/tenancy_page.dart';

final _routeKey = GlobalKey<NavigatorState>();

enum AppRoute {
  splash("/"),
  login("/login"),
  home("/home"),
  notification("/notification"),
  store("/store"),
  menu("/menu"),
  faq("/faq"),
  collection("/collection"),
  collectionKodel("/collection_kodel"),
  collectionNonKodel("/collection_non_kodel"),
  collectionKurset("/collection_kurset"),
  collectionDetail("/collection_detail"),
  collectionTracking("/collection_tracking"),
  collectionTrackingDetail("/collection_tracking_detail"),
  tenant("/tenant"),
  tenantCollecting("/tenant_collecting"),
  tenantCart("/tenant_cart"),
  tenantRegister("/tenant_register"),
  tenantReport("/tenant_report"),
  kasOpname("/kas_opname"),
  kasOpnameMenu("/kas_opname_menu"),
  kasOpnameProses("/kas_opname_proses"),
  kasOpnameReview("/kas_opname_review"),
  kasOpnameValidate("/kas_opname_validate"),
  kasMinusFraud("/kas_minus_fraud"),
  kasMinusRrak("/kas_minus_rrak"),
  kasMinusVarian("/kas_minus_varian"),
  kasMinusOther("/kas_minus_other"),
  ;

  final String path;
  const AppRoute(this.path);

  factory AppRoute.fromString(String message) =>
      values.firstWhere((e) => e.path.contains(message));

  @override
  String toString() => path;
}

@injectable
class AppRouting {
  final GoRouter _router = GoRouter(
      navigatorKey: _routeKey,
      initialLocation: AppRoute.splash.path,
      debugLogDiagnostics: false,
      routes: [
        GoRoute(
          path: AppRoute.splash.path,
          name: AppRoute.splash.name,
          builder: (context, state) {
            return const SplashPage();
          },
        ),
        GoRoute(
          path: AppRoute.login.path,
          name: AppRoute.login.name,
          builder: (context, state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: AppRoute.home.path,
          name: AppRoute.home.name,
          builder: (context, state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: AppRoute.faq.path,
          name: AppRoute.faq.name,
          builder: (context, state) {
            return const FaqPage();
          },
        ),
        GoRoute(
          path: AppRoute.notification.path,
          name: AppRoute.notification.name,
          builder: (context, state) {
            return const NotificationPage();
          },
        ),
        GoRoute(
          path: AppRoute.store.path,
          name: AppRoute.store.name,
          builder: (context, state) {
            return const StorePage();
          },
        ),
        GoRoute(
          path: AppRoute.menu.path,
          name: AppRoute.menu.name,
          builder: (context, state) {
            return const MenuPage();
          },
        ),
        GoRoute(
          path: AppRoute.collection.path,
          name: AppRoute.collection.name,
          builder: (context, state) {
            final extra = state.extra as Store;
            return CollectionPage(store: extra);
          },
        ),
        GoRoute(
          path: AppRoute.collectionDetail.path,
          name: AppRoute.collectionDetail.name,
          builder: (context, state) {
            final type = state.extra as TypeMenu;
            return CartCollectionPage(type: type);
          },
        ),
        GoRoute(
          path: AppRoute.collectionKodel.path,
          name: AppRoute.collectionKodel.name,
          builder: (context, state) {
            final extra = state.extra as Store;
            return KodelPage(store: extra);
          },
        ),
        GoRoute(
          path: AppRoute.collectionNonKodel.path,
          name: AppRoute.collectionNonKodel.name,
          builder: (context, state) {
            final extra = state.extra as Store;
            return NonKodelPage(store: extra);
          },
        ),
        GoRoute(
          path: AppRoute.collectionTracking.path,
          name: AppRoute.collectionTracking.name,
          builder: (context, state) {
            final extra = state.extra as Store;
            return TrackingPage(store: extra);
          },
        ),
        GoRoute(
          path: AppRoute.collectionKurset.path,
          name: AppRoute.collectionKurset.name,
          builder: (context, state) {
            final extra = state.extra as Store;
            return KursetPage(store: extra);
          },
        ),
        GoRoute(
          path: AppRoute.collectionTrackingDetail.path,
          name: AppRoute.collectionTrackingDetail.name,
          builder: (context, state) {
            final extra = state.extra as DataTracking;
            return DetailTrackingPage(dataTracking: extra);
          },
        ),
        GoRoute(
          path: AppRoute.tenant.path,
          name: AppRoute.tenant.name,
          builder: (context, state) {
            final extra = state.extra as Store;
            return TenancyPage(store: extra);
          },
        ),
        GoRoute(
          path: AppRoute.tenantCollecting.path,
          name: AppRoute.tenantCollecting.name,
          builder: (context, state) {
            return const PendataanTenantPage();
          },
        ),
        GoRoute(
          path: AppRoute.tenantCart.path,
          name: AppRoute.tenantCart.name,
          builder: (context, state) {
            return const CartTenantPage();
          },
        ),
        GoRoute(
          path: AppRoute.tenantRegister.path,
          name: AppRoute.tenantRegister.name,
          builder: (context, state) {
            return const RegisterTenantPage();
          },
        ),
        GoRoute(
          path: AppRoute.tenantReport.path,
          name: AppRoute.tenantReport.name,
          builder: (context, state) {
            return const ReportTenantPage();
          },
        ),
        GoRoute(
          path: AppRoute.kasOpname.path,
          name: AppRoute.kasOpname.name,
          builder: (context, state) {
            final extra = state.extra as Store;
            return LockOpnamePage(store: extra);
          },
        ),
        GoRoute(
          path: AppRoute.kasOpnameProses.path,
          name: AppRoute.kasOpnameProses.name,
          builder: (context, state) {
            return const ProsesOpnamePage();
          },
        ),
        GoRoute(
          path: AppRoute.kasOpnameReview.path,
          name: AppRoute.kasOpnameReview.name,
          builder: (context, state) {
            return const VerifikasiOpnamePage();
          },
        ),
        GoRoute(
          path: AppRoute.kasMinusFraud.path,
          name: AppRoute.kasMinusFraud.name,
          builder: (context, state) {
            return const MinusFraudPage();
          },
        ),
        GoRoute(
          path: AppRoute.kasMinusRrak.path,
          name: AppRoute.kasMinusRrak.name,
          builder: (context, state) {
            return const MinusRrakPage();
          },
        ),
        GoRoute(
          path: AppRoute.kasMinusVarian.path,
          name: AppRoute.kasMinusVarian.name,
          builder: (context, state) {
            return const MinusVarianPage();
          },
        ),
        GoRoute(
          path: AppRoute.kasMinusOther.path,
          name: AppRoute.kasMinusOther.name,
          builder: (context, state) {
            return const MinusOtherPage();
          },
        ),
        GoRoute(
          path: AppRoute.kasOpnameValidate.path,
          name: AppRoute.kasOpnameValidate.name,
          builder: (context, state) {
            return const ValidateOpnamePage();
          },
        ),
      ]);

  GoRouter get routes => _router;
}

CustomTransitionPage pageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
