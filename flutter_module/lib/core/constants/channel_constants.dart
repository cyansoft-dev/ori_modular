import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class ChannelConstants {
  static const androidChannel = AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications.',
    importance: Importance.max,
  );
}
