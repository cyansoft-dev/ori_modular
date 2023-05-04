import 'package:freezed_annotation/freezed_annotation.dart';

part 'lock_key.freezed.dart';

@freezed
class LockKey with _$LockKey {
  const factory LockKey({
    String? vector,
    String? secret,
  }) = _LockKey;
}
