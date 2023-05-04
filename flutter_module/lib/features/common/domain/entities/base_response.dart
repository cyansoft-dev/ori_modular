import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/base_response_model.dart';

part 'base_response.freezed.dart';

BaseResponse baseResponseFromModel(BaseResponseModel model) => BaseResponse.fromModel(model);

@freezed
class BaseResponse with _$BaseResponse {
  const BaseResponse._();

  const factory BaseResponse({
    int? code,
    String? message,
  }) = _BaseResponse;

  factory BaseResponse.fromModel(BaseResponseModel model) =>
      BaseResponse(
        code: model.code,
        message: model.message,
      );
}
