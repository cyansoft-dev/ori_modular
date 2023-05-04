import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/kas_master_model.dart';

part 'kas_master.freezed.dart';

KasMaster kasMasterFromModel(KasMasterModel model) =>
    KasMaster.fromModel(model);

@freezed
class KasMaster with _$KasMaster {
  const KasMaster._();

  const factory KasMaster() = _KasMaster;

  factory KasMaster.fromModel(KasMasterModel model) => const KasMaster();
}
