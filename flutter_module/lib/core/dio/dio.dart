import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../features/login/data/model/user_model.dart';
import '../../features/splash/data/model/user_dto.dart';
import '../database/database.dart';
import 'multipartfile.dart';

const timeout = 30 * 1000;

class DioClient {
  final Dio _dio;
  final String _baseUrl;
  final Database _database;

  final CancelToken _cancelToken = CancelToken();

  DioClient(this._dio, this._baseUrl, this._database) {
    _dio
      ..options = BaseOptions(
        baseUrl: _baseUrl,
        requestEncoder: _gzipEncoder,
        contentType: Headers.jsonContentType,
      )
      ..interceptors.addAll(
        [
          QueuedInterceptorsWrapper(
            onRequest: (RequestOptions options, handler) async {
              final user = await _database.getLastData<UserDto>();
              final token = user?.token;
              options = options.copyWith(
                headers: {HttpHeaders.authorizationHeader: token},
              );

              handler.next(options);
            },
            onError: (DioError error, handler) async {
              if (error.response!.statusCode == 401) {
                var options = error.response!.requestOptions;
                final user = await _database.getLastData<UserDto>();
                final token = user?.refreshToken;
                if (token == null) {
                  handler.reject(error);
                }

                final response = await _refreshToken(options, token!);
                final userModel = await compute<String, UserModel>(
                    userModelFromJson, response.toString());

                if (userModel.userData == null) {
                  handler.reject(error);
                }

                user!.token = userModel.userData!.token;
                user.refreshToken = userModel.userData!.refreshToken;
                _database.putData<UserDto>(user);

                Map<String, dynamic>? headers = options.headers;
                headers.update(HttpHeaders.authorizationHeader,
                    (value) => userModel.userData!.token);

                options = options.copyWith(headers: headers);
                final redirectResult = await _redirect(options);
                return handler.resolve(redirectResult);
              }

              handler.reject(error);
            },
          ),
          if (kDebugMode)
            LogInterceptor(
              request: true,
              requestBody: true,
              responseBody: true,
            ),
        ],
      );
  }

  void cancelRequests({CancelToken? cancelToken}) {
    if (cancelToken == null) {
      _cancelToken.cancel('Cancelled');
    } else {
      cancelToken.cancel();
    }
  }

  Future<Response<T>> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await _dio.get(
      path,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }

  Future<Response<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await _dio.post(
      path,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }

  Future<Response<T>> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await _dio.put(
      path,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }

  Future<Response<T>> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await _dio.patch(
      path,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }

  Future<Response<T>> delete<T>(
    path, {
    Map<String, Object>? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await _dio.delete(
      path,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }

  Future<Response> _redirect(RequestOptions options) async {
    try {
      if (options.data is FormData) {
        FormData formData = FormData();
        formData.fields.addAll(options.data.fields);

        for (MapEntry mapFile in options.data.files) {
          formData.files.add(
            MapEntry(
              mapFile.key,
              MultipartFileExtended.fromFileSync(
                mapFile.value.filePath,
                filename: mapFile.value.filename,
              ),
            ),
          );
        }
        options = options.copyWith(data: formData);
      }

      final response = await _dio.fetch(options);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> _refreshToken(RequestOptions options, String token) async {
    final dioRefresh = Dio();
    dioRefresh.options = BaseOptions(
      baseUrl: options.baseUrl,
      contentType: Headers.jsonContentType,
      headers: {HttpHeaders.authorizationHeader: token},
    );

    final response = await dioRefresh.post("/refresh-token");
    return response;
  }

  List<int> _gzipEncoder(String request, RequestOptions options) {
    options.headers.putIfAbsent(Headers.contentEncodingHeader, () => "gzip");
    final compressedData = gzip.encode(utf8.encode(request));
    debugPrint("Data length : ${compressedData.length ~/ 1024} Kb");
    return compressedData;
  }
}
