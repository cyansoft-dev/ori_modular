import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AppHaptics {
  static void buttonPress() {
    if (defaultTargetPlatform != TargetPlatform.android ||
        defaultTargetPlatform != TargetPlatform.fuchsia) {
      lightImpact();
    }
  }

  static Future<void> lightImpact() {
    _sound('lightImpact');
    return HapticFeedback.lightImpact();
  }

  static Future<void> mediumImpact() {
    _sound('mediumImpact');
    return HapticFeedback.mediumImpact();
  }

  static Future<void> heavyImpact() {
    _sound('heavyImpact');
    return HapticFeedback.heavyImpact();
  }

  static Future<void> selectionClick() {
    _sound('selectionClick');
    return HapticFeedback.selectionClick();
  }

  static Future<void> vibrate() {
    _sound('vibrate');
    return HapticFeedback.vibrate();
  }

  static void _sound(String label) {
    if (kDebugMode) {
      SystemSound.play(SystemSoundType.click);
    }
  }
}
