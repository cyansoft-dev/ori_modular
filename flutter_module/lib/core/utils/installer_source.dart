enum InstallerSource {
  googlePlayStore("com.android.vending", "Google Play Store"),
  amazonAppStore("com.amazon.venezia", "Amazon App Store"),
  samsungAppStore("com.sec.android.app.samsungapps", "Samsung Galaxy Store"),
  googleDrive("com.google.android.apps.docs", "Google Drive"),
  googleChrome("com.android.chrome", "Google Chrome"),
  firefox("org.mozilla.firefox", "Firefox"),
  whatsapp("com.whatsapp", "Whatsapp"),
  telegram("org.telegram.messenger", "Telegram"),
  googlePackageInstaller("com.google.android.packageinstaller", "Package Installer"),
  packageInstaller("com.android.packageinstaller", "Package Installer"),
  unknown("unknown", "Unknown");

  final String source;
  final String store;
  const InstallerSource(this.source, this.store);

  factory InstallerSource.fromString(String source) {
    return InstallerSource.values.firstWhere((e) => e.source == source,
        orElse: () => InstallerSource.unknown);
  }

  @override
  String toString() => source;
}
