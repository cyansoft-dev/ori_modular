// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i10;
import 'package:dio/dio.dart' as _i11;
import 'package:firebase_core/firebase_core.dart' as _i12;
import 'package:flutter_module/core/database/database.dart' as _i9;
import 'package:flutter_module/core/di/app_module.dart' as _i166;
import 'package:flutter_module/core/dio/dio.dart' as _i36;
import 'package:flutter_module/core/notification/push_notification.dart'
    as _i19;
import 'package:flutter_module/core/utils/connection_checker.dart' as _i35;
import 'package:flutter_module/features/collection/kurset/data/datasources/local/kurset_local_datasource.dart'
    as _i15;
import 'package:flutter_module/features/collection/kurset/data/datasources/remote/kurset_remote_datasource.dart'
    as _i43;
import 'package:flutter_module/features/collection/kurset/data/repositories/kurset_repository_impl.dart'
    as _i45;
import 'package:flutter_module/features/collection/kurset/domain/repositories/kurset_repository.dart'
    as _i44;
import 'package:flutter_module/features/collection/kurset/domain/usecases/get_kurset_usecase.dart'
    as _i114;
import 'package:flutter_module/features/collection/kurset/presentation/cubit/kurset_cubit.dart'
    as _i129;
import 'package:flutter_module/features/collection/menu/data/datasources/local/collection_local_datasource.dart'
    as _i4;
import 'package:flutter_module/features/collection/menu/data/datasources/remote/collection_remote_datasource.dart'
    as _i98;
import 'package:flutter_module/features/collection/menu/data/repositories/collection_repository_impl.dart'
    as _i100;
import 'package:flutter_module/features/collection/menu/domain/repositories/collection_repository.dart'
    as _i99;
import 'package:flutter_module/features/collection/menu/domain/usecases/get_delivery_master_usecase.dart'
    as _i108;
import 'package:flutter_module/features/collection/menu/presentation/cubit/delivery_master_cubit.dart'
    as _i161;
import 'package:flutter_module/features/collection/tracking/data/datasources/local/tracking_local_datasource.dart'
    as _i34;
import 'package:flutter_module/features/collection/tracking/data/datasources/remote/tracking_remote_datasource.dart'
    as _i73;
import 'package:flutter_module/features/collection/tracking/data/repositories/tracking_repository_impl.dart'
    as _i75;
import 'package:flutter_module/features/collection/tracking/domain/repositories/tracking_repository.dart'
    as _i74;
import 'package:flutter_module/features/collection/tracking/domain/usecases/get_detail_tracking_usecase.dart'
    as _i109;
import 'package:flutter_module/features/collection/tracking/domain/usecases/get_tracking_usecase.dart'
    as _i124;
import 'package:flutter_module/features/collection/tracking/presentation/cubit/detail_tracking_cubit.dart'
    as _i162;
import 'package:flutter_module/features/collection/tracking/presentation/cubit/tracking_cubit.dart'
    as _i143;
import 'package:flutter_module/features/collection/transaction/data/datasources/local/kodel_local_datasource.dart'
    as _i14;
import 'package:flutter_module/features/collection/transaction/data/datasources/remote/kodel_remote_datasource.dart'
    as _i40;
import 'package:flutter_module/features/collection/transaction/data/repositories/kodel_repository_impl.dart'
    as _i42;
import 'package:flutter_module/features/collection/transaction/domain/repositories/kodel_repository.dart'
    as _i41;
import 'package:flutter_module/features/collection/transaction/domain/usecases/add_transaction_usecase.dart'
    as _i94;
import 'package:flutter_module/features/collection/transaction/domain/usecases/delete_batch_transaction_usecase.dart'
    as _i101;
import 'package:flutter_module/features/collection/transaction/domain/usecases/delete_transaction_usecase.dart'
    as _i103;
import 'package:flutter_module/features/collection/transaction/domain/usecases/fetch_transaction_usecase.dart'
    as _i105;
import 'package:flutter_module/features/collection/transaction/domain/usecases/truncate_transaction_usecase.dart'
    as _i78;
import 'package:flutter_module/features/collection/transaction/domain/usecases/upload_transaction_usecase.dart'
    as _i84;
import 'package:flutter_module/features/collection/transaction/presentation/cubit/temp_input_cubit.dart'
    as _i29;
import 'package:flutter_module/features/collection/transaction/presentation/cubit/temp_master_collection_cubit.dart'
    as _i30;
import 'package:flutter_module/features/collection/transaction/presentation/cubit/transaction_collection_cubit.dart'
    as _i144;
import 'package:flutter_module/features/collection/transaction/presentation/cubit/upload_collection_cubit.dart'
    as _i148;
import 'package:flutter_module/features/common/data/datasources/local/common_local_datasource.dart'
    as _i5;
import 'package:flutter_module/features/common/data/repositories/common_repository_impl.dart'
    as _i7;
import 'package:flutter_module/features/common/domain/repositories/common_repository.dart'
    as _i6;
import 'package:flutter_module/features/common/domain/usecases/current_location_usecase.dart'
    as _i8;
import 'package:flutter_module/features/common/domain/usecases/request_camera_usecase.dart'
    as _i20;
import 'package:flutter_module/features/common/domain/usecases/request_location_usecase.dart'
    as _i21;
import 'package:flutter_module/features/common/domain/usecases/stream_location_usecase.dart'
    as _i26;
import 'package:flutter_module/features/common/presentation/cubit/location_cubit.dart'
    as _i131;
import 'package:flutter_module/features/common/presentation/cubit/selected_menu_cubit.dart'
    as _i22;
import 'package:flutter_module/features/common/presentation/cubit/selected_store_cubit.dart'
    as _i23;
import 'package:flutter_module/features/common/presentation/cubit/selected_submenu_cubit.dart'
    as _i24;
import 'package:flutter_module/features/home/data/datasources/local/home_local_datasource.dart'
    as _i13;
import 'package:flutter_module/features/home/data/datasources/remote/home_remote_datasource.dart'
    as _i37;
import 'package:flutter_module/features/home/data/repositories/home_repository_impl.dart'
    as _i39;
import 'package:flutter_module/features/home/domain/repositories/home_repository.dart'
    as _i38;
import 'package:flutter_module/features/home/domain/usecases/get_background_message_usecase.dart'
    as _i106;
import 'package:flutter_module/features/home/domain/usecases/get_current_location_usecase.dart'
    as _i118;
import 'package:flutter_module/features/home/domain/usecases/get_faq_usecase.dart'
    as _i110;
import 'package:flutter_module/features/home/domain/usecases/get_foreground_message_usecase.dart'
    as _i111;
import 'package:flutter_module/features/home/domain/usecases/get_initial_message_usecase.dart'
    as _i112;
import 'package:flutter_module/features/home/domain/usecases/get_local_message_usecase.dart'
    as _i116;
import 'package:flutter_module/features/home/domain/usecases/get_stream_location_usecase.dart'
    as _i117;
import 'package:flutter_module/features/home/domain/usecases/logout_usecase.dart'
    as _i51;
import 'package:flutter_module/features/home/domain/usecases/read_message_usecase.dart'
    as _i62;
import 'package:flutter_module/features/home/presentation/cubit/background_message_cubit.dart'
    as _i159;
import 'package:flutter_module/features/home/presentation/cubit/faq_cubit.dart'
    as _i163;
import 'package:flutter_module/features/home/presentation/cubit/foreground_message_cubit.dart'
    as _i164;
import 'package:flutter_module/features/home/presentation/cubit/local_message_cubit.dart'
    as _i130;
import 'package:flutter_module/features/home/presentation/cubit/logout_cubit.dart'
    as _i133;
import 'package:flutter_module/features/home/presentation/cubit/read_message_cubit.dart'
    as _i138;
import 'package:flutter_module/features/home/presentation/cubit/tap_counter_cubit.dart'
    as _i27;
import 'package:flutter_module/features/kas_opname/menu/data/datasources/local/menu_opname_local_datasource.dart'
    as _i17;
import 'package:flutter_module/features/kas_opname/menu/data/datasources/remote/menu_opname_remote_datasource.dart'
    as _i52;
import 'package:flutter_module/features/kas_opname/menu/data/repositories/menu_opname_repository_impl.dart'
    as _i54;
import 'package:flutter_module/features/kas_opname/menu/domain/repositories/menu_opname_repository.dart'
    as _i53;
import 'package:flutter_module/features/kas_opname/menu/domain/usecases/add_master_sales_usecase.dart'
    as _i93;
import 'package:flutter_module/features/kas_opname/menu/domain/usecases/cancel_request_usecase.dart'
    as _i96;
import 'package:flutter_module/features/kas_opname/menu/domain/usecases/check_collection_sokas_usecase.dart'
    as _i97;
import 'package:flutter_module/features/kas_opname/menu/domain/usecases/get_current_master_usecase.dart'
    as _i107;
import 'package:flutter_module/features/kas_opname/menu/domain/usecases/lock_sales_usecase.dart'
    as _i132;
import 'package:flutter_module/features/kas_opname/menu/domain/usecases/scan_barcode_usecase.dart'
    as _i63;
import 'package:flutter_module/features/kas_opname/menu/domain/usecases/update_master_sales_usecase.dart'
    as _i79;
import 'package:flutter_module/features/kas_opname/menu/presentation/cubit/check_collection_cubit.dart'
    as _i160;
import 'package:flutter_module/features/kas_opname/menu/presentation/cubit/lock_sales_cubit.dart'
    as _i165;
import 'package:flutter_module/features/kas_opname/menu/presentation/cubit/scan_barcode_cubit.dart'
    as _i139;
import 'package:flutter_module/features/kas_opname/menu/presentation/cubit/transaction_master_cubit.dart'
    as _i145;
import 'package:flutter_module/features/kas_opname/proses/data/datasources/local/proses_opname_local_datasource.dart'
    as _i18;
import 'package:flutter_module/features/kas_opname/proses/data/datasources/remote/proses_opname_remote_datasource.dart'
    as _i58;
import 'package:flutter_module/features/kas_opname/proses/data/repositories/proses_opname_repository_impl.dart'
    as _i60;
import 'package:flutter_module/features/kas_opname/proses/domain/repositories/proses_opname_repository.dart'
    as _i59;
import 'package:flutter_module/features/kas_opname/proses/domain/usecases/get_kas_master_usecase.dart'
    as _i113;
import 'package:flutter_module/features/kas_opname/proses/domain/usecases/get_summary_audit_usecase.dart'
    as _i123;
import 'package:flutter_module/features/kas_opname/proses/domain/usecases/put_summary_audit_usecase.dart'
    as _i61;
import 'package:flutter_module/features/kas_opname/proses/domain/usecases/truncate_summary_audit_usecase.dart'
    as _i77;
import 'package:flutter_module/features/kas_opname/proses/domain/usecases/update_summary_audit_usecase.dart'
    as _i80;
import 'package:flutter_module/features/kas_opname/proses/domain/usecases/upload_kas_opname_usecase.dart'
    as _i82;
import 'package:flutter_module/features/kas_opname/proses/presentation/cubit/kas_master_cubit.dart'
    as _i128;
import 'package:flutter_module/features/kas_opname/proses/presentation/cubit/summary_audit_cubit.dart'
    as _i142;
import 'package:flutter_module/features/kas_opname/proses/presentation/cubit/temp_audit_cubit.dart'
    as _i28;
import 'package:flutter_module/features/kas_opname/proses/presentation/cubit/upload_data_opname_cubit.dart'
    as _i149;
import 'package:flutter_module/features/kas_opname/validasi/data/datasources/remote/validasi_opname_remote_datasource.dart'
    as _i85;
import 'package:flutter_module/features/kas_opname/validasi/data/repositories/validasi_opname_repository_impl.dart'
    as _i87;
import 'package:flutter_module/features/kas_opname/validasi/domain/repositories/validasi_opname_repository.dart'
    as _i86;
import 'package:flutter_module/features/kas_opname/validasi/domain/usecases/validasi_opname_usecase.dart'
    as _i88;
import 'package:flutter_module/features/kas_opname/validasi/presentation/cubit/validate_opname_cubit.dart'
    as _i89;
import 'package:flutter_module/features/kas_opname/verifikasi/data/datasources/remote/verifikasi_opname_remote_datasource.dart'
    as _i90;
import 'package:flutter_module/features/kas_opname/verifikasi/data/repositories/verifikasi_opname_repository_impl.dart'
    as _i92;
import 'package:flutter_module/features/kas_opname/verifikasi/domain/repositories/verifikasi_opname_repository.dart'
    as _i91;
import 'package:flutter_module/features/kas_opname/verifikasi/domain/usecases/upload_fraud_usecase.dart'
    as _i150;
import 'package:flutter_module/features/kas_opname/verifikasi/domain/usecases/upload_other_usecase.dart'
    as _i151;
import 'package:flutter_module/features/kas_opname/verifikasi/domain/usecases/upload_plus_usecase.dart'
    as _i154;
import 'package:flutter_module/features/kas_opname/verifikasi/domain/usecases/upload_rrak_usecase.dart'
    as _i152;
import 'package:flutter_module/features/kas_opname/verifikasi/domain/usecases/upload_varian_usecase.dart'
    as _i153;
import 'package:flutter_module/features/kas_opname/verifikasi/presentation/cubit/verifikasi_minus_cubit.dart'
    as _i155;
import 'package:flutter_module/features/kas_opname/verifikasi/presentation/cubit/verifikasi_plus_cubit.dart'
    as _i156;
import 'package:flutter_module/features/login/data/datasources/local/login_local_datasource.dart'
    as _i16;
import 'package:flutter_module/features/login/data/datasources/remote/login_remote_datasource.dart'
    as _i47;
import 'package:flutter_module/features/login/data/repositories/login_repository_impl.dart'
    as _i49;
import 'package:flutter_module/features/login/domain/repositories/login_repository.dart'
    as _i48;
import 'package:flutter_module/features/login/domain/usecases/login_usecase.dart'
    as _i50;
import 'package:flutter_module/features/login/presentation/cubit/auth_cubit.dart'
    as _i158;
import 'package:flutter_module/features/menu/data/datasources/remote/menu_remote_datasource.dart'
    as _i55;
import 'package:flutter_module/features/menu/data/repositories/menu_repository_impl.dart'
    as _i57;
import 'package:flutter_module/features/menu/domain/repositories/menu_repository.dart'
    as _i56;
import 'package:flutter_module/features/menu/domain/usecases/get_menu_usecase.dart'
    as _i119;
import 'package:flutter_module/features/menu/presentation/cubit/menu_cubit.dart'
    as _i135;
import 'package:flutter_module/features/splash/data/datasources/local/splash_local_datasource.dart'
    as _i25;
import 'package:flutter_module/features/splash/data/datasources/remote/splash_remote_datasource.dart'
    as _i64;
import 'package:flutter_module/features/splash/data/repositories/splash_repository_impl.dart'
    as _i66;
import 'package:flutter_module/features/splash/domain/repositories/splash_repository.dart'
    as _i65;
import 'package:flutter_module/features/splash/domain/usecases/app_info_usecase.dart'
    as _i95;
import 'package:flutter_module/features/splash/domain/usecases/get_setting_usecase.dart'
    as _i121;
import 'package:flutter_module/features/splash/domain/usecases/get_updater_usecase.dart'
    as _i125;
import 'package:flutter_module/features/splash/domain/usecases/get_user_usecase.dart'
    as _i126;
import 'package:flutter_module/features/splash/presentation/cubit/app_info_cubit.dart'
    as _i157;
import 'package:flutter_module/features/splash/presentation/cubit/initial_message_cubit.dart'
    as _i127;
import 'package:flutter_module/features/splash/presentation/cubit/location_permission_cubit.dart'
    as _i46;
import 'package:flutter_module/features/splash/presentation/cubit/setting_cubit.dart'
    as _i140;
import 'package:flutter_module/features/splash/presentation/cubit/updater_cubit.dart'
    as _i147;
import 'package:flutter_module/features/store/data/datasources/remote/store_remote_datasource.dart'
    as _i67;
import 'package:flutter_module/features/store/data/repositories/store_repository_impl.dart'
    as _i69;
import 'package:flutter_module/features/store/domain/repositories/store_repository.dart'
    as _i68;
import 'package:flutter_module/features/store/domain/usecases/get_store_usecase.dart'
    as _i122;
import 'package:flutter_module/features/store/presentation/cubit/store_cubit.dart'
    as _i141;
import 'package:flutter_module/features/store/presentation/cubit/timer_cubit.dart'
    as _i33;
import 'package:flutter_module/features/tenancy/data/datasources/local/tenancy_local_datasource.dart'
    as _i32;
import 'package:flutter_module/features/tenancy/data/datasources/remote/tenancy_remote_datasource.dart'
    as _i70;
import 'package:flutter_module/features/tenancy/data/repositories/tenancy_repository_impl.dart'
    as _i72;
import 'package:flutter_module/features/tenancy/domain/repositories/tenancy_repository.dart'
    as _i71;
import 'package:flutter_module/features/tenancy/domain/usecases/delete_data_tenant_usecase.dart'
    as _i102;
import 'package:flutter_module/features/tenancy/domain/usecases/fetch_data_tenant_usecase.dart'
    as _i104;
import 'package:flutter_module/features/tenancy/domain/usecases/get_local_master_tenant_usecase.dart'
    as _i115;
import 'package:flutter_module/features/tenancy/domain/usecases/get_remote_master_tenant_usecase.dart'
    as _i120;
import 'package:flutter_module/features/tenancy/domain/usecases/put_data_tenant_usecase.dart'
    as _i136;
import 'package:flutter_module/features/tenancy/domain/usecases/put_many_data_tenant_usecase.dart'
    as _i137;
import 'package:flutter_module/features/tenancy/domain/usecases/truncate_data_tenant_usecase.dart'
    as _i76;
import 'package:flutter_module/features/tenancy/domain/usecases/upload_data_tenant_usecase.dart'
    as _i81;
import 'package:flutter_module/features/tenancy/presentation/cubit/master_tenant_cubit.dart'
    as _i134;
import 'package:flutter_module/features/tenancy/presentation/cubit/temp_master_tenant_cubit.dart'
    as _i31;
import 'package:flutter_module/features/tenancy/presentation/cubit/transaction_tenant_cubit.dart'
    as _i146;
import 'package:flutter_module/features/tenancy/presentation/cubit/upload_tenant_cubit.dart'
    as _i83;
import 'package:flutter_module/routing/app_routing.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i3.AppRouting>(() => _i3.AppRouting());
    gh.lazySingleton<_i4.CollectionLocalDataSource>(
      () => _i4.CollectionLocalDataSourceImpl(),
      instanceName: 'collectionLocalDataSource',
    );
    gh.lazySingleton<_i5.CommonLocalDataSource>(
      () => _i5.CommonLocalDataSourceImpl(),
      instanceName: 'commonLocalDataSource',
    );
    gh.lazySingleton<_i6.CommonRepository>(
      () => _i7.CommonRepositoryImpl(
          gh<_i5.CommonLocalDataSource>(instanceName: 'commonLocalDataSource')),
      instanceName: 'commonRepository',
    );
    gh.lazySingleton<_i8.CurrentLocationUseCase>(() =>
        _i8.CurrentLocationUseCase(
            gh<_i6.CommonRepository>(instanceName: 'commonRepository')));
    await gh.lazySingletonAsync<_i9.Database>(
      () => appModule.database,
      instanceName: 'database',
      preResolve: true,
    );
    gh.lazySingleton<_i10.DeviceInfoPlugin>(() => appModule.deviceInfo);
    gh.factory<_i11.Dio>(
      () => appModule.dio,
      instanceName: 'dio',
    );
    await gh.factoryAsync<_i12.FirebaseApp>(
      () => appModule.firebase,
      preResolve: true,
    );
    gh.lazySingleton<_i13.HomeLocalDataSource>(
      () => _i13.HomeLocalDataSourceImpl(
          gh<_i9.Database>(instanceName: 'database')),
      instanceName: 'homeLocalDataSource',
    );
    gh.lazySingleton<_i14.KodelLocalDataSource>(
      () => _i14.KodelLocalDataSourceImpl(
          gh<_i9.Database>(instanceName: 'database')),
      instanceName: 'kodelLocalDataSource',
    );
    gh.lazySingleton<_i15.KursetLocalDataSource>(
      () => _i15.KursetLocalDataSourceImpl(),
      instanceName: 'kursetLocalDataSource',
    );
    gh.lazySingleton<_i16.LoginLocalDataSource>(
      () => _i16.LoginLocalDataSourceImpl(
          gh<_i9.Database>(instanceName: 'database')),
      instanceName: 'loginLocalDataSource',
    );
    gh.lazySingleton<_i17.MenuOpnameLocalDataSource>(
      () => _i17.MenuOpnameLocalDataSourceImpl(
          gh<_i9.Database>(instanceName: 'database')),
      instanceName: 'menuOpnameLocalDataSource',
    );
    gh.lazySingleton<_i18.ProsesOpnameLocalDataSource>(
      () => _i18.ProsesOpnameLocalDataSourceImpl(
          gh<_i9.Database>(instanceName: 'database')),
      instanceName: 'prosesOpnameLocalDataSource',
    );
    await gh.lazySingletonAsync<_i19.PushNotification>(
      () => appModule.notification,
      preResolve: true,
    );
    gh.lazySingleton<_i20.RequestCameraUseCase>(() => _i20.RequestCameraUseCase(
        gh<_i6.CommonRepository>(instanceName: 'commonRepository')));
    gh.lazySingleton<_i21.RequestLocationUseCase>(() =>
        _i21.RequestLocationUseCase(
            gh<_i6.CommonRepository>(instanceName: 'commonRepository')));
    gh.factory<_i22.SelectedMenuCubit>(() => _i22.SelectedMenuCubit());
    gh.factory<_i23.SelectedStoreCubit>(() => _i23.SelectedStoreCubit());
    gh.factory<_i24.SelectedSubmenuCubit>(() => _i24.SelectedSubmenuCubit());
    gh.lazySingleton<_i25.SplashLocalDataSource>(
      () => _i25.SplashLocalDataSourceImpl(
        gh<_i10.DeviceInfoPlugin>(),
        gh<_i9.Database>(instanceName: 'database'),
      ),
      instanceName: 'splashLocalDataSource',
    );
    gh.lazySingleton<_i26.StreamLocationUseCase>(() =>
        _i26.StreamLocationUseCase(
            gh<_i6.CommonRepository>(instanceName: 'commonRepository')));
    gh.factory<String>(
      () => appModule.provideBaseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i27.TapCounterCubit>(() => _i27.TapCounterCubit());
    gh.factory<_i28.TempAuditCubit>(() => _i28.TempAuditCubit());
    gh.factory<_i29.TempInputCubit>(() => _i29.TempInputCubit());
    gh.factory<_i30.TempMasterCollectionCubit>(
        () => _i30.TempMasterCollectionCubit());
    gh.factory<_i31.TempMasterTenantCubit>(() => _i31.TempMasterTenantCubit());
    gh.lazySingleton<_i32.TenancyLocalDataSource>(
      () => _i32.TenancyLocalDataSourceImpl(
          gh<_i9.Database>(instanceName: 'database')),
      instanceName: 'tenancyLocalDataSource',
    );
    gh.factory<_i33.TimerCubit>(() => _i33.TimerCubit());
    gh.lazySingleton<_i34.TrackingLocalDataSource>(
      () => _i34.TrackingLocalDataSourceImpl(),
      instanceName: 'trackingLocalDataSource',
    );
    gh.lazySingleton<_i35.ConnectionChecker>(() => appModule
        .provideConnectionChecker(gh<String>(instanceName: 'BaseUrl')));
    gh.lazySingleton<_i36.DioClient>(() => appModule.provideDioClient(
          gh<String>(instanceName: 'BaseUrl'),
          gh<_i9.Database>(instanceName: 'database'),
          gh<_i11.Dio>(instanceName: 'dio'),
        ));
    gh.lazySingleton<_i37.HomeRemoteDataSource>(
      () => _i37.HomeRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'homeRemoteDataSource',
    );
    gh.lazySingleton<_i38.HomeRepository>(
      () => _i39.HomeRepositoryImpl(
        gh<_i37.HomeRemoteDataSource>(instanceName: 'homeRemoteDataSource'),
        gh<_i13.HomeLocalDataSource>(instanceName: 'homeLocalDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'homeRepository',
    );
    gh.lazySingleton<_i40.KodelRemoteDataSource>(
      () => _i40.KodelRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'kodelRemoteDataSource',
    );
    gh.lazySingleton<_i41.KodelRepository>(
      () => _i42.KodelRepositoryImpl(
        gh<_i14.KodelLocalDataSource>(instanceName: 'kodelLocalDataSource'),
        gh<_i40.KodelRemoteDataSource>(instanceName: 'kodelRemoteDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'kodelRepository',
    );
    gh.lazySingleton<_i43.KursetRemoteDataSource>(
      () => _i43.KursetRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'kursetRemoteDataSource',
    );
    gh.lazySingleton<_i44.KursetRepository>(
      () => _i45.KursetRepositoryImpl(
        gh<_i43.KursetRemoteDataSource>(instanceName: 'kursetRemoteDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'kursetRepository',
    );
    gh.factory<_i46.LocationPermissionCubit>(
        () => _i46.LocationPermissionCubit(gh<_i21.RequestLocationUseCase>()));
    gh.lazySingleton<_i47.LoginRemoteDataSource>(
      () => _i47.LoginRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'loginRemoteDataSource',
    );
    gh.lazySingleton<_i48.LoginRepository>(
      () => _i49.LoginRepositoryImpl(
        gh<_i47.LoginRemoteDataSource>(instanceName: 'loginRemoteDataSource'),
        gh<_i16.LoginLocalDataSource>(instanceName: 'loginLocalDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'loginRepository',
    );
    gh.lazySingleton<_i50.LoginUseCase>(() => _i50.LoginUseCase(
        gh<_i48.LoginRepository>(instanceName: 'loginRepository')));
    gh.lazySingleton<_i51.LogoutUseCase>(() => _i51.LogoutUseCase(
        gh<_i38.HomeRepository>(instanceName: 'homeRepository')));
    gh.lazySingleton<_i52.MenuOpnameRemoteDataSource>(
      () => _i52.MenuOpnameRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'menuOpnameRemoteDataSource',
    );
    gh.lazySingleton<_i53.MenuOpnameRepository>(
      () => _i54.MenuOpnameRepositoryImpl(
        gh<_i17.MenuOpnameLocalDataSource>(
            instanceName: 'menuOpnameLocalDataSource'),
        gh<_i52.MenuOpnameRemoteDataSource>(
            instanceName: 'menuOpnameRemoteDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'menuOpnameRepository',
    );
    gh.lazySingleton<_i55.MenuRemoteDataSource>(
      () => _i55.MenuRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'menuRemoteDataSource',
    );
    gh.lazySingleton<_i56.MenuRepository>(
      () => _i57.MenuRepositoryImpl(
        gh<_i55.MenuRemoteDataSource>(instanceName: 'menuRemoteDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'menuRepository',
    );
    gh.lazySingleton<_i58.ProsesOpnameRemoteDataSource>(
      () => _i58.ProsesOpnameRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'prosesOpnameRemoteDataSource',
    );
    gh.lazySingleton<_i59.ProsesOpnameRepository>(
      () => _i60.ProsesOpnameRepositoryImpl(
        gh<_i58.ProsesOpnameRemoteDataSource>(
            instanceName: 'prosesOpnameRemoteDataSource'),
        gh<_i18.ProsesOpnameLocalDataSource>(
            instanceName: 'prosesOpnameLocalDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'prosesOpnameRepository',
    );
    gh.lazySingleton<_i61.PutSummaryAuditUseCase>(() =>
        _i61.PutSummaryAuditUseCase(gh<_i59.ProsesOpnameRepository>(
            instanceName: 'prosesOpnameRepository')));
    gh.lazySingleton<_i62.ReadMessageUseCase>(() => _i62.ReadMessageUseCase(
        gh<_i38.HomeRepository>(instanceName: 'homeRepository')));
    gh.lazySingleton<_i63.ScanBarcodeUseCase>(() => _i63.ScanBarcodeUseCase(
        gh<_i53.MenuOpnameRepository>(instanceName: 'menuOpnameRepository')));
    gh.lazySingleton<_i64.SplashRemoteDataSource>(
      () => _i64.SplashRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'splashRemoteDataSource',
    );
    gh.lazySingleton<_i65.SplashRepository>(
      () => _i66.SplashRepositoryImpl(
        gh<_i25.SplashLocalDataSource>(instanceName: 'splashLocalDataSource'),
        gh<_i64.SplashRemoteDataSource>(instanceName: 'splashRemoteDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'splashRepository',
    );
    gh.lazySingleton<_i67.StoreRemoteDataSource>(
      () => _i67.StoreRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'storeRemoteDataSource',
    );
    gh.lazySingleton<_i68.StoreRepository>(
      () => _i69.StoreRepositoryImpl(
        gh<_i67.StoreRemoteDataSource>(instanceName: 'storeRemoteDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'storeRepository',
    );
    gh.lazySingleton<_i70.TenancyRemoteDataSource>(
      () => _i70.TenancyRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'tenancyRemoteDataSource',
    );
    gh.lazySingleton<_i71.TenancyRepository>(
      () => _i72.TenancyRepositoryImpl(
        gh<_i70.TenancyRemoteDataSource>(
            instanceName: 'tenancyRemoteDataSource'),
        gh<_i32.TenancyLocalDataSource>(instanceName: 'tenancyLocalDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'tenancyRepository',
    );
    gh.lazySingleton<_i73.TrackingRemoteDataSource>(
      () => _i73.TrackingRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'trackingRemoteDataSource',
    );
    gh.lazySingleton<_i74.TrackingRepository>(
      () => _i75.TrackingRepositoryImpl(
        gh<_i73.TrackingRemoteDataSource>(
            instanceName: 'trackingRemoteDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'trackingRepository',
    );
    gh.lazySingleton<_i76.TruncateDataTenantUseCase>(() =>
        _i76.TruncateDataTenantUseCase(
            gh<_i71.TenancyRepository>(instanceName: 'tenancyRepository')));
    gh.lazySingleton<_i77.TruncateSummaryAuditUseCase>(() =>
        _i77.TruncateSummaryAuditUseCase(gh<_i59.ProsesOpnameRepository>(
            instanceName: 'prosesOpnameRepository')));
    gh.lazySingleton<_i78.TruncateTransactionUseCase>(() =>
        _i78.TruncateTransactionUseCase(
            gh<_i41.KodelRepository>(instanceName: 'kodelRepository')));
    gh.lazySingleton<_i79.UpdateMasterSalesUseCase>(() =>
        _i79.UpdateMasterSalesUseCase(gh<_i53.MenuOpnameRepository>(
            instanceName: 'menuOpnameRepository')));
    gh.lazySingleton<_i80.UpdateSummaryAuditUseCase>(() =>
        _i80.UpdateSummaryAuditUseCase(gh<_i59.ProsesOpnameRepository>(
            instanceName: 'prosesOpnameRepository')));
    gh.lazySingleton<_i81.UploadDataTenantUseCase>(() =>
        _i81.UploadDataTenantUseCase(
            gh<_i71.TenancyRepository>(instanceName: 'tenancyRepository')));
    gh.lazySingleton<_i82.UploadKasOpnameUseCase>(() =>
        _i82.UploadKasOpnameUseCase(gh<_i59.ProsesOpnameRepository>(
            instanceName: 'prosesOpnameRepository')));
    gh.factory<_i83.UploadTenantCubit>(
        () => _i83.UploadTenantCubit(gh<_i81.UploadDataTenantUseCase>()));
    gh.lazySingleton<_i84.UploadTransactionUseCase>(() =>
        _i84.UploadTransactionUseCase(
            gh<_i41.KodelRepository>(instanceName: 'kodelRepository')));
    gh.lazySingleton<_i85.ValidasiOpnameRemoteDataSource>(
      () => _i85.ValidasiOpnameRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'validasiOpnameRemoteDataSource',
    );
    gh.lazySingleton<_i86.ValidasiOpnameRepository>(
      () => _i87.ValidasiOpnameRepositoryImpl(
        gh<_i85.ValidasiOpnameRemoteDataSource>(
            instanceName: 'validasiOpnameRemoteDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'validasiOpnameRepository',
    );
    gh.lazySingleton<_i88.ValidasiOpnameUseCase>(() =>
        _i88.ValidasiOpnameUseCase(gh<_i86.ValidasiOpnameRepository>(
            instanceName: 'validasiOpnameRepository')));
    gh.factory<_i89.ValidateOpnameCubit>(
        () => _i89.ValidateOpnameCubit(gh<_i88.ValidasiOpnameUseCase>()));
    gh.lazySingleton<_i90.VerifikasiOpnameRemoteDataSource>(
      () => _i90.VerifikasiOpnameRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'verifikasiOpnameRemoteDataSource',
    );
    gh.lazySingleton<_i91.VerifikasiOpnameRepository>(
      () => _i92.VerifikasiOpnameRepositoryImpl(
        gh<_i90.VerifikasiOpnameRemoteDataSource>(
            instanceName: 'verifikasiOpnameRemoteDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'verifikasiOpnameRepository',
    );
    gh.lazySingleton<_i93.AddMasterSalesUseCase>(() =>
        _i93.AddMasterSalesUseCase(gh<_i53.MenuOpnameRepository>(
            instanceName: 'menuOpnameRepository')));
    gh.lazySingleton<_i94.AddTransactionUseCase>(() =>
        _i94.AddTransactionUseCase(
            gh<_i41.KodelRepository>(instanceName: 'kodelRepository')));
    gh.lazySingleton<_i95.AppInfoUseCase>(() => _i95.AppInfoUseCase(
        gh<_i65.SplashRepository>(instanceName: 'splashRepository')));
    gh.lazySingleton<_i96.CancelRequestUseCase>(() => _i96.CancelRequestUseCase(
        gh<_i53.MenuOpnameRepository>(instanceName: 'menuOpnameRepository')));
    gh.lazySingleton<_i97.CheckCollectionSokasUseCase>(() =>
        _i97.CheckCollectionSokasUseCase(gh<_i53.MenuOpnameRepository>(
            instanceName: 'menuOpnameRepository')));
    gh.lazySingleton<_i98.CollectionRemoteDataSource>(
      () => _i98.CollectionRemoteDataSourceImpl(gh<_i36.DioClient>()),
      instanceName: 'collectionRemoteDataSource',
    );
    gh.lazySingleton<_i99.CollectionRepository>(
      () => _i100.CollectionRepositoryImpl(
        gh<_i98.CollectionRemoteDataSource>(
            instanceName: 'collectionRemoteDataSource'),
        gh<_i4.CollectionLocalDataSource>(
            instanceName: 'collectionLocalDataSource'),
        gh<_i35.ConnectionChecker>(),
      ),
      instanceName: 'collectionRepository',
    );
    gh.lazySingleton<_i101.DeleteBatchTransactionUseCase>(() =>
        _i101.DeleteBatchTransactionUseCase(
            gh<_i41.KodelRepository>(instanceName: 'kodelRepository')));
    gh.lazySingleton<_i102.DeleteDataTenantUseCase>(() =>
        _i102.DeleteDataTenantUseCase(
            gh<_i71.TenancyRepository>(instanceName: 'tenancyRepository')));
    gh.lazySingleton<_i103.DeleteTransactionUseCase>(() =>
        _i103.DeleteTransactionUseCase(
            gh<_i41.KodelRepository>(instanceName: 'kodelRepository')));
    gh.lazySingleton<_i104.FetchDataTenantUseCase>(() =>
        _i104.FetchDataTenantUseCase(
            gh<_i71.TenancyRepository>(instanceName: 'tenancyRepository')));
    gh.lazySingleton<_i105.FetchTransactionUseCase>(() =>
        _i105.FetchTransactionUseCase(
            gh<_i41.KodelRepository>(instanceName: 'kodelRepository')));
    gh.lazySingleton<_i106.GetBackgroundMessageUseCase>(() =>
        _i106.GetBackgroundMessageUseCase(
            gh<_i38.HomeRepository>(instanceName: 'homeRepository')));
    gh.lazySingleton<_i107.GetCurrentMasterUseCase>(() =>
        _i107.GetCurrentMasterUseCase(gh<_i53.MenuOpnameRepository>(
            instanceName: 'menuOpnameRepository')));
    gh.lazySingleton<_i108.GetDeliveryMasterUseCase>(() =>
        _i108.GetDeliveryMasterUseCase(gh<_i99.CollectionRepository>(
            instanceName: 'collectionRepository')));
    gh.lazySingleton<_i109.GetDetailTrackingUseCase>(() =>
        _i109.GetDetailTrackingUseCase(
            gh<_i74.TrackingRepository>(instanceName: 'trackingRepository')));
    gh.lazySingleton<_i110.GetFaqUseCase>(() => _i110.GetFaqUseCase(
        gh<_i38.HomeRepository>(instanceName: 'homeRepository')));
    gh.lazySingleton<_i111.GetForegroundMessageUseCase>(() =>
        _i111.GetForegroundMessageUseCase(
            gh<_i38.HomeRepository>(instanceName: 'homeRepository')));
    gh.lazySingleton<_i112.GetInitialMessageUseCase>(() =>
        _i112.GetInitialMessageUseCase(
            gh<_i38.HomeRepository>(instanceName: 'homeRepository')));
    gh.lazySingleton<_i113.GetKasMasterUseCase>(() => _i113.GetKasMasterUseCase(
        gh<_i59.ProsesOpnameRepository>(
            instanceName: 'prosesOpnameRepository')));
    gh.lazySingleton<_i114.GetKursetUseCase>(() => _i114.GetKursetUseCase(
        gh<_i44.KursetRepository>(instanceName: 'kursetRepository')));
    gh.lazySingleton<_i115.GetLocalMasterTenantUseCase>(() =>
        _i115.GetLocalMasterTenantUseCase(
            gh<_i71.TenancyRepository>(instanceName: 'tenancyRepository')));
    gh.lazySingleton<_i116.GetLocalMessageUseCase>(() =>
        _i116.GetLocalMessageUseCase(
            gh<_i38.HomeRepository>(instanceName: 'homeRepository')));
    gh.lazySingleton<_i117.GetLocalMessageUseCase>(() =>
        _i117.GetLocalMessageUseCase(
            gh<_i38.HomeRepository>(instanceName: 'homeRepository')));
    gh.lazySingleton<_i118.GetLocationUseCase>(() => _i118.GetLocationUseCase(
        gh<_i38.HomeRepository>(instanceName: 'homeRepository')));
    gh.lazySingleton<_i119.GetMenuUseCase>(() => _i119.GetMenuUseCase(
        gh<_i56.MenuRepository>(instanceName: 'menuRepository')));
    gh.lazySingleton<_i120.GetRemoteMasterTenantUseCase>(() =>
        _i120.GetRemoteMasterTenantUseCase(
            gh<_i71.TenancyRepository>(instanceName: 'tenancyRepository')));
    gh.lazySingleton<_i121.GetSettingUseCase>(() => _i121.GetSettingUseCase(
        gh<_i65.SplashRepository>(instanceName: 'splashRepository')));
    gh.lazySingleton<_i122.GetStoreUseCase>(() => _i122.GetStoreUseCase(
        gh<_i68.StoreRepository>(instanceName: 'storeRepository')));
    gh.lazySingleton<_i123.GetSummaryAuditUseCase>(() =>
        _i123.GetSummaryAuditUseCase(gh<_i59.ProsesOpnameRepository>(
            instanceName: 'prosesOpnameRepository')));
    gh.lazySingleton<_i124.GetTrackingUseCase>(() => _i124.GetTrackingUseCase(
        gh<_i74.TrackingRepository>(instanceName: 'trackingRepository')));
    gh.lazySingleton<_i125.GetUpdaterUseCase>(() => _i125.GetUpdaterUseCase(
        gh<_i65.SplashRepository>(instanceName: 'splashRepository')));
    gh.lazySingleton<_i126.GetUserUseCase>(() => _i126.GetUserUseCase(
        gh<_i65.SplashRepository>(instanceName: 'splashRepository')));
    gh.factory<_i127.InitialMessageCubit>(
        () => _i127.InitialMessageCubit(gh<_i112.GetInitialMessageUseCase>()));
    gh.factory<_i128.KasMasterCubit>(
        () => _i128.KasMasterCubit(gh<_i113.GetKasMasterUseCase>()));
    gh.factory<_i129.KursetCubit>(
        () => _i129.KursetCubit(gh<_i114.GetKursetUseCase>()));
    gh.factory<_i130.LocalMessageCubit>(
        () => _i130.LocalMessageCubit(gh<_i116.GetLocalMessageUseCase>()));
    gh.factory<_i131.LocationCubit>(() => _i131.LocationCubit(
          gh<_i118.GetLocationUseCase>(),
          gh<_i26.StreamLocationUseCase>(),
        ));
    gh.lazySingleton<_i132.LockSalesUseCase>(() => _i132.LockSalesUseCase(
        gh<_i53.MenuOpnameRepository>(instanceName: 'menuOpnameRepository')));
    gh.factory<_i133.LogoutCubit>(
        () => _i133.LogoutCubit(gh<_i51.LogoutUseCase>()));
    gh.factory<_i134.MasterTenantCubit>(() => _i134.MasterTenantCubit(
          gh<_i115.GetLocalMasterTenantUseCase>(),
          gh<_i120.GetRemoteMasterTenantUseCase>(),
        ));
    gh.factory<_i135.MenuCubit>(
        () => _i135.MenuCubit(gh<_i119.GetMenuUseCase>()));
    gh.lazySingleton<_i136.PutDataTenantUseCase>(() =>
        _i136.PutDataTenantUseCase(
            gh<_i71.TenancyRepository>(instanceName: 'tenancyRepository')));
    gh.lazySingleton<_i137.PutManyDataTenantUseCase>(() =>
        _i137.PutManyDataTenantUseCase(
            gh<_i71.TenancyRepository>(instanceName: 'tenancyRepository')));
    gh.factory<_i138.ReadMessageCubit>(
        () => _i138.ReadMessageCubit(gh<_i62.ReadMessageUseCase>()));
    gh.factory<_i139.ScanBarcodeCubit>(
        () => _i139.ScanBarcodeCubit(gh<_i63.ScanBarcodeUseCase>()));
    gh.factory<_i140.SettingCubit>(
        () => _i140.SettingCubit(gh<_i121.GetSettingUseCase>()));
    gh.factory<_i141.StoreCubit>(
        () => _i141.StoreCubit(gh<_i122.GetStoreUseCase>()));
    gh.factory<_i142.SummaryAuditCubit>(() => _i142.SummaryAuditCubit(
          gh<_i61.PutSummaryAuditUseCase>(),
          gh<_i123.GetSummaryAuditUseCase>(),
          gh<_i77.TruncateSummaryAuditUseCase>(),
          gh<_i80.UpdateSummaryAuditUseCase>(),
        ));
    gh.factory<_i143.TrackingCubit>(
        () => _i143.TrackingCubit(gh<_i124.GetTrackingUseCase>()));
    gh.factory<_i144.TransactionCollectionCubit>(
        () => _i144.TransactionCollectionCubit(
              gh<_i94.AddTransactionUseCase>(),
              gh<_i105.FetchTransactionUseCase>(),
              gh<_i103.DeleteTransactionUseCase>(),
              gh<_i78.TruncateTransactionUseCase>(),
              gh<_i101.DeleteBatchTransactionUseCase>(),
            ));
    gh.factory<_i145.TransactionMasterCubit>(() => _i145.TransactionMasterCubit(
          gh<_i93.AddMasterSalesUseCase>(),
          gh<_i107.GetCurrentMasterUseCase>(),
          gh<_i79.UpdateMasterSalesUseCase>(),
        ));
    gh.factory<_i146.TransactionTenantCubit>(() => _i146.TransactionTenantCubit(
          gh<_i136.PutDataTenantUseCase>(),
          gh<_i137.PutManyDataTenantUseCase>(),
          gh<_i104.FetchDataTenantUseCase>(),
          gh<_i102.DeleteDataTenantUseCase>(),
          gh<_i76.TruncateDataTenantUseCase>(),
        ));
    gh.factory<_i147.UpdaterCubit>(
        () => _i147.UpdaterCubit(gh<_i125.GetUpdaterUseCase>()));
    gh.factory<_i148.UploadCollectionCubit>(
        () => _i148.UploadCollectionCubit(gh<_i84.UploadTransactionUseCase>()));
    gh.factory<_i149.UploadDanaOpnameCubit>(
        () => _i149.UploadDanaOpnameCubit(gh<_i82.UploadKasOpnameUseCase>()));
    gh.lazySingleton<_i150.UploadMinusFraudUseCase>(() =>
        _i150.UploadMinusFraudUseCase(gh<_i91.VerifikasiOpnameRepository>(
            instanceName: 'verifikasiOpnameRepository')));
    gh.lazySingleton<_i151.UploadMinusOtherUseCase>(() =>
        _i151.UploadMinusOtherUseCase(gh<_i91.VerifikasiOpnameRepository>(
            instanceName: 'verifikasiOpnameRepository')));
    gh.lazySingleton<_i152.UploadMinusRrakUseCase>(() =>
        _i152.UploadMinusRrakUseCase(gh<_i91.VerifikasiOpnameRepository>(
            instanceName: 'verifikasiOpnameRepository')));
    gh.lazySingleton<_i153.UploadMinusVarianUseCase>(() =>
        _i153.UploadMinusVarianUseCase(gh<_i91.VerifikasiOpnameRepository>(
            instanceName: 'verifikasiOpnameRepository')));
    gh.lazySingleton<_i154.UploadPlusOpnameUseCase>(() =>
        _i154.UploadPlusOpnameUseCase(gh<_i91.VerifikasiOpnameRepository>(
            instanceName: 'verifikasiOpnameRepository')));
    gh.factory<_i155.VerifikasiMinusCubit>(() => _i155.VerifikasiMinusCubit(
          gh<_i150.UploadMinusFraudUseCase>(),
          gh<_i152.UploadMinusRrakUseCase>(),
          gh<_i153.UploadMinusVarianUseCase>(),
          gh<_i151.UploadMinusOtherUseCase>(),
        ));
    gh.factory<_i156.VerifikasiPlusCubit>(
        () => _i156.VerifikasiPlusCubit(gh<_i154.UploadPlusOpnameUseCase>()));
    gh.factory<_i157.AppInfoCubit>(
        () => _i157.AppInfoCubit(gh<_i95.AppInfoUseCase>()));
    gh.factory<_i158.AuthCubit>(() => _i158.AuthCubit(
          gh<_i126.GetUserUseCase>(),
          gh<_i50.LoginUseCase>(),
        ));
    gh.factory<_i159.BackgroundMessageCubit>(() =>
        _i159.BackgroundMessageCubit(gh<_i106.GetBackgroundMessageUseCase>()));
    gh.factory<_i160.CheckCollectionCubit>(() =>
        _i160.CheckCollectionCubit(gh<_i97.CheckCollectionSokasUseCase>()));
    gh.factory<_i161.DeliveryMasterCubit>(
        () => _i161.DeliveryMasterCubit(gh<_i108.GetDeliveryMasterUseCase>()));
    gh.factory<_i162.DetailTrackingCubit>(
        () => _i162.DetailTrackingCubit(gh<_i109.GetDetailTrackingUseCase>()));
    gh.factory<_i163.FaqCubit>(() => _i163.FaqCubit(gh<_i110.GetFaqUseCase>()));
    gh.factory<_i164.ForegroundMessageCubit>(() =>
        _i164.ForegroundMessageCubit(gh<_i111.GetForegroundMessageUseCase>()));
    gh.factory<_i165.LockSalesCubit>(() => _i165.LockSalesCubit(
          gh<_i132.LockSalesUseCase>(),
          gh<_i96.CancelRequestUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i166.AppModule {}
