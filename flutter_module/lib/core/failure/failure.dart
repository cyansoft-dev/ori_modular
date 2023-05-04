import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.authorization({int? code, String? message}) =
      AuthorizationFailure;

  const factory Failure.noNetwork() = NoNetworkFailure;

  const factory Failure.server({int? code, String? message}) = ServerFailure;

  const factory Failure.platform({String? message}) = PlatformFailure;

  const factory Failure.cache({String? message}) = CacheFailure;

  const factory Failure.another({String? message}) = AnotherFailure;

  const factory Failure.location({String? message}) = LocationFailure;

  const factory Failure.parse({String? message}) = ParseFailure;

  const factory Failure.empty({String? message}) = EmptyFailure;

  factory Failure.fromException(Object? error) {
    if (error is PlatformException) {
      return Failure.platform(message: error.message);
    }

    if (error is LocationServiceDisabledException) {
      return const Failure.location(
          message:
              "Aktifkan GPS untuk akses halaman ini \nKemudian refresh halaman.");
    }

    if (error is TimeoutException) {
      return Failure.another(message: error.message);
    }

    if (error is SocketException) {
      return Failure.server(message: error.message);
    }

    if (error is FormatException) {
      return Failure.parse(message: error.message);
    }

    if (error is DioError) {
      switch (error.type) {
        case DioErrorType.cancel:
          return Failure.server(
              code: error.response?.statusCode,
              message: error.response?.statusMessage ??
                  "Pengiriman data dibatalkan.");

        case DioErrorType.connectionTimeout:
          return Failure.server(
              code: error.response?.statusCode,
              message: error.response?.statusMessage ?? "Waktu koneksi ke server habis.");

        case DioErrorType.connectionError:
          return Failure.server(
              code: error.response?.statusCode,
              message: error.response?.statusMessage ??
                  "Gagal terhubung ke server\nSilahkan coba beberapa saat lagi.");

        case DioErrorType.receiveTimeout:
          return Failure.server(
              code: error.response?.statusCode,
              message: error.response?.statusMessage ??
                  "Waktu penerimaan data dari server habis.");

        case DioErrorType.sendTimeout:
          return Failure.server(
              code: error.response?.statusCode,
              message: error.response?.statusMessage ??
                  "Waktu pengiriman data ke server habis.");

        case DioErrorType.badCertificate:
          return Failure.server(
              code: error.response?.statusCode,
              message: error.response?.statusMessage ?? "bad certificate");

        case DioErrorType.badResponse:
          final response = error.response!;
          if (response.statusCode! >= 400 && response.statusCode! < 500) {
            return Failure.authorization(
              code: response.statusCode!,
              message: response.data is Map
                  ? response.data["message"]
                  : "[${response.statusCode}] ${response.statusMessage}",
            );
          }

          if (response.statusCode! >= 500) {
            return Failure.server(
              code: error.response?.statusCode,
              message: error.response?.statusMessage != null
                  ? "[${response.statusCode}] ${response.statusMessage}"
                  : "Gagal terhubung ke server\nSilahkan coba beberapa saat lagi.",
            );
          }

          return Failure.another(message: response.data["message"]);

        default:
          return const Failure.another();
      }
    }

    return const Failure.another();
  }

  int? get errCode {
    if (this is AuthorizationFailure) {
      return (this as AuthorizationFailure).code;
    }

    if (this is ServerFailure) {
      return (this as ServerFailure).code;
    }

    return null;
  }

  String get errMessage {
    if (this is AuthorizationFailure) {
      return (this as AuthorizationFailure).message ?? "Unauthorized.";
    }

    if (this is NoNetworkFailure) {
      return "Gagal terhubung ke server\nSilahkan cek koneksi internet anda.";
    }

    if (this is CacheFailure) {
      return "Gagal menyimpan data ke database.";
    }

    if (this is ServerFailure) {
      return (this as ServerFailure).message ?? "Internal server error.";
    }

    if (this is AnotherFailure) {
      return (this as AnotherFailure).message ?? "Terjadi kesalahan pada system.";
    }

    if (this is ParseFailure) {
      return (this as ParseFailure).message ?? "Parsing data dari server gagal.";
    }

    if (this is PlatformFailure) {
      return (this as PlatformFailure).message ??
          "Failed to get data from platform.";
    }

    if (this is LocationFailure) {
      return (this as LocationFailure).message ??
          "Gagal mengambil data lokasi anda.";
    }

    if (this is EmptyFailure) {
      return "Gagal mengambil data, data tidak ditemukan.";
    }

    return "$this";
  }
}
