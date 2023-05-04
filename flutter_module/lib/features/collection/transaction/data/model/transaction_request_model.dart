import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/helpers.dart';
import '../../domain/entities/data_collection.dart';

part 'transaction_request_model.freezed.dart';
part 'transaction_request_model.g.dart';

TransactionRequestModels transactionRequestModelFromJson(String str) =>
    TransactionRequestModels.fromJson(json.decode(str));

String transactionRequestModelToJson(TransactionRequestModels data) =>
    json.encode(data.toJson());

TransactionRequestModels transactionRequestModelFromEntity(
        ListDataCollection entity) =>
    TransactionRequestModels.fromEntity(entity);

@freezed
class TransactionRequestModels with _$TransactionRequestModels {
  const TransactionRequestModels._();

  @JsonSerializable(explicitToJson: true)
  const factory TransactionRequestModels({
    @JsonKey(name: 'data') List<TransactionRequestModel>? data,
  }) = _TransactionRequestModels;

  factory TransactionRequestModels.fromJson(Map<String, dynamic> json) =>
      _$TransactionRequestModelsFromJson(json);

  factory TransactionRequestModels.fromEntity(ListDataCollection entity) {
    return TransactionRequestModels(
        data: entity.data == null
            ? null
            : entity.data!
                .map((e) => TransactionRequestModel.fromEntity(e))
                .toList());
  }
}

@freezed
class TransactionRequestModel with _$TransactionRequestModel {
  const TransactionRequestModel._();

  @JsonSerializable(explicitToJson: true)
  const factory TransactionRequestModel({
    @JsonKey(name: 'kdtk') String? kdtk,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'delivery') String? delivery,
    @JsonKey(name: 'id_delivery') String? idDelivery,
    @JsonKey(name: 'tanggal') DateTime? tanggal,
    @JsonKey(name: 'shift') String? shift,
    @JsonKey(name: 'detail_lampiran') List<LampiranModel>? lampiran,
    @JsonKey(name: 'summary') List<SummaryModel>? summary,
    @JsonKey(name: 'image') String? imageString,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'latitude') double? latitude,
    @JsonKey(name: 'longitude') double? longitude,
  }) = _TransactionRequestModel;

  factory TransactionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionRequestModelFromJson(json);

  factory TransactionRequestModel.fromEntity(DataCollection entity) =>
      TransactionRequestModel(
        kdtk: entity.kdtk,
        delivery: entity.delivery,
        type: entity.type,
        idDelivery: entity.idDelivery,
        tanggal: entity.tanggal,
        shift: entity.shift,
        lampiran:
            entity.details?.map((e) => LampiranModel.fromEntity(e)).toList(),
        summary:
            entity.summary?.map((e) => SummaryModel.fromEntity(e)).toList(),
        imageString: Helpers.getImageStringSync(entity.pathImage),
        status: entity.status.message,
        latitude: entity.latitude,
        longitude: entity.longitude,
      );
}

@freezed
class LampiranModel with _$LampiranModel {
  const LampiranModel._();

  @JsonSerializable(explicitToJson: true)
  const factory LampiranModel({
    @JsonKey(name: 'seqno') int? seqno,
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'nominal') double? nominal,
    @JsonKey(name: 'image') String? imageString,
  }) = _LampiranModel;

  factory LampiranModel.fromJson(Map<String, dynamic> json) =>
      _$LampiranModelFromJson(json);

  factory LampiranModel.fromEntity(DetailTransaction entity) => LampiranModel(
        seqno: entity.seqno,
        label: "lampiran ${entity.seqno}",
        nominal: entity.nominal,
        imageString: Helpers.getImageStringSync(entity.pathImage),
      );
}

@freezed
class SummaryModel with _$SummaryModel {
  const SummaryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory SummaryModel({
    @JsonKey(name: 'seqno') int? seqno,
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'nominal') double? nominal,
    @JsonKey(name: 'description') String? description,
  }) = _SummaryModel;

  factory SummaryModel.fromJson(Map<String, dynamic> json) =>
      _$SummaryModelFromJson(json);

  factory SummaryModel.fromEntity(SummaryTransaction entity) => SummaryModel(
      seqno: entity.seqno,
      label: entity.label,
      description: entity.description,
      nominal: entity.nominal);
}
