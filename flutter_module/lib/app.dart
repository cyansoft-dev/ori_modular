import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/color_constants.dart';
import 'core/di/injector.dart';
import 'core/widget/app_sizer/app_sizer.dart';
import 'core/widget/transition_builder.dart';
import 'features/collection/menu/presentation/cubit/delivery_master_cubit.dart';
import 'features/collection/tracking/presentation/cubit/tracking_cubit.dart';
import 'features/collection/transaction/presentation/cubit/temp_master_collection_cubit.dart';
import 'features/collection/transaction/presentation/cubit/transaction_collection_cubit.dart';
import 'features/collection/transaction/presentation/cubit/upload_collection_cubit.dart';
import 'features/common/presentation/cubit/selected_menu_cubit.dart';
import 'features/common/presentation/cubit/selected_store_cubit.dart';
import 'features/common/presentation/cubit/selected_submenu_cubit.dart';
import 'features/home/presentation/cubit/background_message_cubit.dart';
import 'features/home/presentation/cubit/foreground_message_cubit.dart';
import 'features/home/presentation/cubit/local_message_cubit.dart';
import 'features/home/presentation/cubit/logout_cubit.dart';
import 'features/home/presentation/cubit/tap_counter_cubit.dart';
import 'features/kas_opname/menu/presentation/cubit/transaction_master_cubit.dart';
import 'features/kas_opname/proses/presentation/cubit/summary_audit_cubit.dart';
import 'features/login/presentation/cubit/auth_cubit.dart';
import 'features/menu/presentation/cubit/menu_cubit.dart';
import 'features/splash/presentation/cubit/app_info_cubit.dart';
import 'features/splash/presentation/cubit/location_permission_cubit.dart';
import 'features/splash/presentation/cubit/setting_cubit.dart';
import 'features/splash/presentation/cubit/updater_cubit.dart';
import 'features/store/presentation/cubit/store_cubit.dart';
import 'features/store/presentation/cubit/timer_cubit.dart';
import 'features/tenancy/presentation/cubit/master_tenant_cubit.dart';
import 'features/tenancy/presentation/cubit/temp_master_tenant_cubit.dart';
import 'features/tenancy/presentation/cubit/transaction_tenant_cubit.dart';
import 'features/tenancy/presentation/cubit/upload_tenant_cubit.dart';
import 'routing/app_routing.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final appRoutes = locator.get<AppRouting>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationPermissionCubit>(
          create: (context) => locator.get<LocationPermissionCubit>(),
        ),
        BlocProvider<AppInfoCubit>(
          create: (context) => locator.get<AppInfoCubit>(),
        ),
        BlocProvider<UpdaterCubit>(
          create: (context) => locator.get<UpdaterCubit>(),
        ),
        BlocProvider<AuthCubit>(
          create: (context) => locator.get<AuthCubit>(),
        ),
        BlocProvider<SettingCubit>(
          create: (context) => locator.get<SettingCubit>(),
        ),
        BlocProvider<TimerCubit>(
          create: (context) => locator.get<TimerCubit>(),
        ),
        BlocProvider<StoreCubit>(
          create: (context) => locator.get<StoreCubit>(),
        ),
        BlocProvider<MenuCubit>(
          create: (context) => locator.get<MenuCubit>(),
        ),
        BlocProvider<SelectedStoreCubit>(
          create: (context) => locator.get<SelectedStoreCubit>(),
        ),
        BlocProvider<SelectedMenuCubit>(
          create: (context) => locator.get<SelectedMenuCubit>(),
        ),
        BlocProvider<SelectedSubmenuCubit>(
          create: (context) => locator.get<SelectedSubmenuCubit>(),
        ),
        BlocProvider<LogoutCubit>(
          create: (context) => locator.get<LogoutCubit>(),
        ),
        BlocProvider<DeliveryMasterCubit>(
          create: (context) => locator.get<DeliveryMasterCubit>(),
        ),
        BlocProvider<TempMasterCollectionCubit>(
          create: (context) => locator.get<TempMasterCollectionCubit>(),
        ),
        BlocProvider<TransactionCollectionCubit>(
          create: (context) => locator.get<TransactionCollectionCubit>(),
        ),
        BlocProvider<UploadCollectionCubit>(
          create: (context) => locator.get<UploadCollectionCubit>(),
        ),
        BlocProvider<TrackingCubit>(
          create: (context) => locator.get<TrackingCubit>(),
        ),
        BlocProvider<BackgroundMessageCubit>(
          create: (context) => locator.get<BackgroundMessageCubit>(),
        ),
        BlocProvider<ForegroundMessageCubit>(
          create: (context) => locator.get<ForegroundMessageCubit>(),
        ),
        BlocProvider<LocalMessageCubit>(
          create: (context) => locator.get<LocalMessageCubit>(),
        ),
        BlocProvider<TapCounterCubit>(
          create: (context) => locator.get<TapCounterCubit>(),
        ),
        BlocProvider<TransactionMasterCubit>(
          create: (context) => locator.get<TransactionMasterCubit>(),
        ),
        BlocProvider<SummaryAuditCubit>(
          create: (context) => locator.get<SummaryAuditCubit>(),
        ),
        BlocProvider<MasterTenantCubit>(
          create: (context) => locator.get<MasterTenantCubit>(),
        ),
        BlocProvider<TempMasterTenantCubit>(
          create: (context) => locator.get<TempMasterTenantCubit>(),
        ),
        BlocProvider<TransactionTenantCubit>(
          create: (context) => locator.get<TransactionTenantCubit>(),
        ),
        BlocProvider<UploadTenantCubit>(
          create: (context) => locator.get<UploadTenantCubit>(),
        ),
      ],
      child: AppSizer(
        builder: (BuildContext context, Orientation? child) {
          return MaterialApp.router(
            title: 'ORI Administration using BLOC & Clean Architecture',
            theme: ThemeData(
              canvasColor: ColorConstants.canvasColor,
              primaryColor: Colors.white,
              scaffoldBackgroundColor: ColorConstants.canvasColor,
              appBarTheme: AppBarTheme(
                elevation: 0,
                color: ColorConstants.backgroundColor,
              ),
              textTheme: GoogleFonts.openSansTextTheme(textTheme),
              pageTransitionsTheme: PageTransitionsTheme(
                builders:
                Map<TargetPlatform, PageTransitionsBuilder>.fromIterable(
                  TargetPlatform.values,
                  value: (_) => FadeTransitionBuilder(),
                ),
              ),
              useMaterial3: false,
              colorScheme: ColorScheme.fromSwatch().copyWith(
                primary: ColorConstants.backgroundColor,
                secondary: Colors.white,
                error: ColorConstants.iconColor,
                surface: Colors.white,
                background: Colors.white,
              ),
            ),
            showPerformanceOverlay: false,
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            routerDelegate: appRoutes.routes.routerDelegate,
            routeInformationParser: appRoutes.routes.routeInformationParser,
            routeInformationProvider: appRoutes.routes.routeInformationProvider,
          );
        },
      ),
    );
  }
}
