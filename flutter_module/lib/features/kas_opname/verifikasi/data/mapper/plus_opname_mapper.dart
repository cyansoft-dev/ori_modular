import '../../domain/entities/plus_opname.dart';
import '../models/plus_opname_model.dart';

class PlusOpnameMapper {
  static PlusOpnameModel modelFromEntity(PlusOpname entity) {
    return PlusOpnameModel(
      id: entity.id,
      kdtk: entity.kdtk,
      nominal: entity.nominal,
      deskripsi: entity.deskripsi,
    );
  }

  static PlusOpname modelToEntity(PlusOpnameModel model) {
    return PlusOpname(
      id: model.id,
      kdtk: model.kdtk,
      nominal: model.nominal,
      deskripsi: model.deskripsi,
    );
  }
}
