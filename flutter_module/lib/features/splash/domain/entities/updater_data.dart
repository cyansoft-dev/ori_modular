import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/updater_model.dart';

part 'updater_data.freezed.dart';

UpdaterData updaterDataFromModel(UpdaterDataModel model) =>
    UpdaterData.fromModel(model);

@freezed
class UpdaterData with _$UpdaterData {
  const UpdaterData._();

  const factory UpdaterData({
    String? name,
    String? number,
    String? url,
    List<String>? changelog,
    String? signature,
  }) = _UpdaterData;

  factory UpdaterData.fromModel(UpdaterDataModel model) => UpdaterData(
        name: model.name,
        number: model.number,
        url: model.url,
        changelog: model.changelog,
        signature: model.signature,
      );
}
