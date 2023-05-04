// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart' as path;

class MultipartFileExtended extends MultipartFile {
  final String? filePath;
  MultipartFileExtended(super.stream, super.length, this.filePath,
      {super.filename, super.contentType, super.headers});

  static Future<MultipartFileExtended> fromFile(String filePath,
          {String? filename, MediaType? contentType}) =>
      multipartFileFromFile(filePath,
          filename: filename, contentType: contentType);

  static MultipartFileExtended fromFileSync(String filePath,
          {String? filename, MediaType? contentType}) =>
      multipartFileFromFileSync(filePath,
          filename: filename, contentType: contentType);
}

Future<MultipartFileExtended> multipartFileFromFile(
  String filePath, {
  String? filename,
  MediaType? contentType,
  Map<String, List<String>>? headers,
}) async {
  filename ??= path.basename(filePath);
  final file = File(filePath);
  final length = await file.length();
  final stream = file.openRead();

  return MultipartFileExtended(
    stream,
    length,
    filePath,
    filename: filename,
    contentType: contentType,
    headers: headers,
  );
}

MultipartFileExtended multipartFileFromFileSync(
  String filePath, {
  String? filename,
  MediaType? contentType,
  Map<String, List<String>>? headers,
}) {
  filename ??= path.basename(filePath);
  final file = File(filePath);
  final length = file.lengthSync();
  final stream = file.openRead();

  return MultipartFileExtended(
    stream,
    length,
    filePath,
    filename: filename,
    contentType: contentType,
    headers: headers,
  );
}
