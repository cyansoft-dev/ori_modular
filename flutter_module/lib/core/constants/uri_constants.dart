enum BuildType {
  development,
  staging,
  production;

  factory BuildType.fromString(String type) =>
      values.firstWhere((e) => e.name == type.toLowerCase(),
          orElse: () => BuildType.development);
}

abstract class UrlConstants {
  static const String baseUrl =
      String.fromEnvironment('BASE_URL', defaultValue: "");

  static const String appSignature =
      String.fromEnvironment('APP_SIGNATURE', defaultValue: "");

  static const String build =
      String.fromEnvironment('BUILD_TYPE', defaultValue: "");

  static BuildType buildType = BuildType.fromString(build);

  static const String uriAndroid = "market://details?id=com.ori.administration";

  static const String uriIOS = "https://itunes.apple.com/us/app/";
}
