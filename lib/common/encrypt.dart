import 'package:encrypt/encrypt.dart';

String encrypt(String plainText) {
  final key = Key.fromUtf8('987532cbcb3e48d69d7d50323bf4fb28');
  final iv = IV.fromLength(16);

  final encrypter = Encrypter(AES(key));

  final Encrypted = encrypter.encrypt(plainText, iv: iv);

  return Encrypted.base64;
}
