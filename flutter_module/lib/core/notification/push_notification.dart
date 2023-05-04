import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../constants/channel_constants.dart';

class PushNotification {

  PushNotification._();

  static late FlutterLocalNotificationsPlugin _plugin;

  static Completer<PushNotification>? _completer;

  static Future<PushNotification> instance() async {
    if (_completer == null) {
      final Completer<PushNotification> completer = Completer<PushNotification>();
      try{
        _plugin = FlutterLocalNotificationsPlugin();
        await _setupAndroid();
        await _setupIOS();
        completer.complete(PushNotification._());
      } catch (e) {
        completer.completeError(e);
      }
      _completer = completer;
    }
    return _completer!.future;
  }

  static Future<void> _setupAndroid() async {
    return await _plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(ChannelConstants.androidChannel);
  }

  static Future<void> _setupIOS() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: false,
      sound: true,
      badge: true,
    );
  }

  void show(RemoteMessage message) {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
    const androidChannel = ChannelConstants.androidChannel;

    if (notification != null && android != null && !kIsWeb) {
      _plugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            androidChannel.id,
            androidChannel.name,
            channelDescription: androidChannel.description,
            icon: 'app_icon',
          ),
        ),
      );
    }
  }

  Future<AuthorizationStatus> grantPermission() async {
    final settings = await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: true,
      sound: true,
    );

    return settings.authorizationStatus;
  }
}
