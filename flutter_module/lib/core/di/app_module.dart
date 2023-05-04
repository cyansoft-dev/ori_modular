import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

import '../../firebase_options.dart';
import '../constants/uri_constants.dart';
import '../database/database.dart';
import '../dio/dio.dart';
import '../notification/push_notification.dart';
import '../utils/connection_checker.dart';

const timeout = 30 * 1000;

@module
abstract class AppModule {
  @preResolve
  @Named("database")
  @lazySingleton
  Future<Database> get database async => await Database.instance();

  @preResolve
  Future<FirebaseApp> get firebase =>
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  @preResolve
  @lazySingleton
  Future<PushNotification> get notification => PushNotification.instance();

  @lazySingleton
  DeviceInfoPlugin get deviceInfo => DeviceInfoPlugin();
  //
  // @dev
  // @Named("DevBaseUrl")
  // String get provideDevBaseUrl => dotenv.get('BASE_URL', fallback: 'Missing var name');
  //
  // @prod
  // @Named("ProdBaseUrl")
  // String get provideProdBaseUrl => dotenv.get('BASE_URL', fallback: 'Missing var name');
  //
  // @dev
  // @lazySingleton
  // DioClient provideDevClient(@Named("DevBaseUrl") String baseUrl) =>
  //     DioClient(baseUrl);
  //
  // @prod
  // @lazySingleton
  // DioClient provideProdClient(@Named("ProdBaseUrl") String baseUrl) =>
  //     DioClient(baseUrl);
  //
  // @dev
  // @lazySingleton
  // ConnectionChecker provideDevConnectionChecker(
  //         @Named("DevBaseUrl") String baseUrl) =>
  //     ConnectionChecker.instance(baseUrl);
  //
  // @prod
  // @lazySingleton
  // ConnectionChecker provideProdConnectionChecker(
  //         @Named("ProdBaseUrl") String baseUrl) =>
  //     ConnectionChecker.instance(baseUrl);

  @Named("BaseUrl")
  String get provideBaseUrl => UrlConstants.baseUrl;

  @Named("dio")
  Dio get dio => Dio();

  @lazySingleton
  DioClient provideDioClient(
    @Named("BaseUrl") String baseUrl,
    @Named("database") Database database,
    @Named("dio") Dio dio,
  ) =>
      DioClient(dio, baseUrl, database);

  @lazySingleton
  ConnectionChecker provideConnectionChecker(
          @Named("BaseUrl") String baseUrl) =>
      ConnectionChecker.instance(baseUrl);
}
