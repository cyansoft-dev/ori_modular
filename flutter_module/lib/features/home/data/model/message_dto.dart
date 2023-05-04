import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class MessageDto {
  @Id()
  int id;
  String? data;
  bool read;

  MessageDto({
    this.id = 0,
    this.data,
    this.read = false,
  });

  factory MessageDto.fromModel(RemoteMessage message) => MessageDto(
        data: json.encode(message.toMap())
      );
}
