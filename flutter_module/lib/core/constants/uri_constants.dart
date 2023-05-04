enum BuildType {
  development,
  staging,
  production;

  factory BuildType.fromString(String type) =>
      values.firstWhere((e) => e.name == type.toLowerCase(),
          orElse: () => BuildType.development);
}

abstract class UrlConstants {
  static const String baseUrl = String.fromEnvironment('BASE_URL',
      defaultValue: "https://apiv1.edpappindomaret.com/api");

  static const String appSignature = String.fromEnvironment('APP_SIGNATURE',
      defaultValue: "481AD521879C10A6B19D7562D38D89E3F41142B1");

  static const String build =
      String.fromEnvironment('BUILD_TYPE', defaultValue: "PRODUCTION");

  static BuildType buildType = BuildType.fromString(build);

  static const String uriAndroid = "market://details?id=com.ori.administration";

  static const String uriIOS = "https://itunes.apple.com/us/app/";
}
