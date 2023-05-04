import 'dart:async';

import 'package:flutter/services.dart';

class AppSecure {
  static const _platform = MethodChannel("app_checker");

  static Future<bool> isRooted() async {
    try {
      final result = await _platform.invokeMethod("isRooted");
      return result;
    } catch (e) {
      rethrow;
    }
  }

  static Future<bool> isCloned() async {
    try {
      final result = await _platform.invokeMethod("isCloned");
      return result;
    } catch (e) {
      rethrow;
    }
  }

  static Future<String> installSourceInfo() async {
    try {
      final result = await _platform.invokeMethod("installSourceInfo");
      return result ?? "";
    } catch (e) {
      rethrow;
    }
  }
}
