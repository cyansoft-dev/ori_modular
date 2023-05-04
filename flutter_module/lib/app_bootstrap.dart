import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/*import 'package:flutter_displaymode/flutter_displaymode.dart';*/

import 'core/di/injector.dart';
import 'core/utils/observer.dart';

class AppBootstrap {
  static Future<void> init() async {
    if (kReleaseMode) {
      debugPrint = (String? message, {int? wrapWidth}) {};
    }

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    /*
    if(Platform.isAndroid){
      await FlutterDisplayMode.setHighRefreshRate();
    }
*/
    await configureDependencies();
    Bloc.observer = AppBlocObserver();
  }
}
