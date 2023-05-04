part of "app_sizer.dart";

class AppSizerUtils {

  static const Size _defaultSize = Size(360, 960);

  static late Size _uiSize;

  static late double _screenHeight;

  static late double _screenWidth;

  static late double _aspectRatio;

  static late double _pixelRatio;

  static T _ambiguate<T>(T value) => value;

  static void setScreen(BoxConstraints constraints, {Size? designSize}) {

    _uiSize = designSize ?? _defaultSize;

    _screenHeight = constraints.maxHeight;

    _screenWidth = constraints.maxWidth;

    _aspectRatio = constraints
        .constrainDimensions(_screenWidth, _screenHeight)
        .aspectRatio;

    _pixelRatio = _ambiguate(WidgetsBinding.instance).window.devicePixelRatio;
  }

  static Size get defaultSize => _defaultSize;

  static double get screenHeight => _screenHeight;

  static double get screenWidth => _screenWidth;

  static double get aspectRatio => _aspectRatio;

  static double get pixelRatio => _pixelRatio;

  static double get scaleWidth => (_screenWidth / _uiSize.width);

  static double get scaleHeight => (_screenHeight / _uiSize.height);

  static double get scaleText => min(scaleWidth, scaleHeight);

  static double setWidth(num width) => width * scaleWidth;

  static double setHeight(num height) => height * scaleHeight;

  static double setRadius(num r) => r * min(scaleWidth, scaleHeight);

  static double setSp(num fontSize) => fontSize * scaleText;

  static double setSw(num width) => width * screenWidth;

  static double setSh(num height) => height * screenHeight;

  static double setPx(num pixel) => pixel.toDouble();
}
