import 'package:encrypt/encrypt.dart';

String encrypt(
  String plaintText, {
  required String vectorKey,
  required String secretKey,
  AESMode mode = AESMode.cbc,
}) {
  final iv = IV.fromBase64(vectorKey);
  final key = Key.fromBase64(secretKey);
  final encrypter = Encrypter(AES(key, mode: mode));

  final encrypted = encrypter.encrypt(plaintText, iv: iv);
  return encrypted.base64;
}

String decrypt(
  String encryptText, {
  required String vectorKey,
  required String secretKey,
  AESMode mode = AESMode.cbc,
}) {
  final iv = IV.fromBase64(vectorKey);
  final key = Key.fromBase64(secretKey);
  final encrypter = Encrypter(AES(key, mode: mode));

  final encrypted = Encrypted.fromBase64(encryptText);
  final decrypted = encrypter.decrypt(encrypted, iv: iv);

  return decrypted;
}
