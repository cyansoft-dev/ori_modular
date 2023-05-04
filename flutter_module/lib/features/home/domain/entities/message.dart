import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/message_dto.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const Message._();

  const factory Message({
    int? id,
    RemoteMessage? message,
    @Default(false) bool isRead,
  }) = _Message;

  factory Message.fromDto(MessageDto dto) => Message(
        id: dto.id,
        message: dto.data == null
            ? null
            : RemoteMessage.fromMap(json.decode(dto.data!)),
        isRead: dto.read,
      );
}
