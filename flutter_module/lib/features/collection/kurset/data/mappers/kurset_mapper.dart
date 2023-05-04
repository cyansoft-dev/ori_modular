import '../../domain/entities/kurset.dart';
import '../models/kurset_model.dart';

class KursetMappers {

  static DataKursetModel modelFromEntity(Kurset entity) {
    return DataKursetModel(
      id: entity.id,
      kdtk: entity.kdtk,
      tanggal: entity.tanggal,
      nominal: entity.nominal,
      keterangan: entity.keterangan,
    );
  }

  static Kurset modelToEntity(DataKursetModel model) {
    return Kurset(
      id: model.id,
      kdtk: model.kdtk,
      tanggal: model.tanggal,
      nominal: model.nominal,
      keterangan: model.keterangan,
    );
  }

  static List<Kurset> modelsToEntities(List<DataKursetModel> models) {
    return models.map(modelToEntity).toList();
  }
}
