import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/faq_model.dart';

part 'faq.freezed.dart';

List<FaqData> listFaqDataFromModel(List<FaqDataModel> models) {
  return models.map((e) => FaqData.fromModel(e)).toList();
}

@freezed
class FaqData with _$FaqData {
  const FaqData._();

  const factory FaqData({
    String? question,
    String? answer,
    @Default(false) bool isExpanded,
  }) = _FaqData;

  factory FaqData.fromModel(FaqDataModel model) => FaqData(
        question: model.question,
        answer: model.answer,
      );
}
