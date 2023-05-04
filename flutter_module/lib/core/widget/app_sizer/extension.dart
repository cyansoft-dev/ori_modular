part of "app_sizer.dart";

double extraHeight = Platform.isIOS ? 30.0 : 10.0;

extension SizerExt on num {
  double get sh => AppSizerUtils.screenHeight;

  double get sw => AppSizerUtils.screenWidth;

  double get h => AppSizerUtils.setHeight(this);

  double get w => AppSizerUtils.setWidth(this);

  double get r => AppSizerUtils.setRadius(this);

  double get sp => AppSizerUtils.setSp(this);

  double get xh => AppSizerUtils.setHeight(this + extraHeight);
}
