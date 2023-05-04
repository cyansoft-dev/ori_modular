import 'dart:io';

import 'package:flutter/foundation.dart';

enum ConnectionStatus {
  connected,
  disconnected,
}

class ConnectionChecker {
  static ConnectionChecker? _instance;

  final String _baseUrl;

  ConnectionChecker._(this._baseUrl);

  factory ConnectionChecker.instance(String baseUrl) =>
      _instance ?? ConnectionChecker._(baseUrl);

  Duration timeout = const Duration(seconds: 10);

  Future<ConnectionStatus> get status async => await _checkConnection();

  Future<ConnectionStatus> _checkConnection() async {
    Socket? sock;
    try {
      Uri uri = Uri.parse(_baseUrl);

      sock = await Socket.connect(uri.host, uri.port, timeout: timeout)
        ..destroy();
      return ConnectionStatus.connected;
    } catch (e) {
      sock?.destroy();
      debugPrint("$e");
      return ConnectionStatus.disconnected;
    }
  }
}
