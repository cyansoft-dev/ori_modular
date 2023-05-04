import '../../domain/entities/lock_key.dart';
import '../../domain/entities/master_opname.dart';
import '../model/lock_opname_model.dart';
import '../model/master_opname_dto.dart';
import '../model/master_opname_model.dart';

class KasOpnameMapper {
  static MasterOpnameDto modelToDto(MasterOpnameModel model) {
    final dto = MasterOpnameDto(
      toko: model.toko,
      tanggal: model.tanggal,
      danaKas: model.danaKas,
      salesCurrent: model.salesCurrent,
      notaRrak: model.notaRrak,
    );

    final kurset = model.kurangSetor?.map((e) {
      return KurangSetorDto(tanggal: e.tanggal, nominal: e.nominal);
    }).toList();

    if (kurset != null) {
      dto.kurangSetor.addAll(kurset);
    }

    return dto;
  }

  static MasterOpname modelToEntity(MasterOpnameModel model) {
    return MasterOpname(
      toko: model.toko,
      tanggal: model.tanggal,
      danaKas: model.danaKas,
      salesCurrent: model.salesCurrent,
      kurangSetor: model.kurangSetor
          ?.map((e) => KurangSetor(tanggal: e.tanggal, nominal: e.nominal))
          .toList(),
      notaRrak: model.notaRrak,
    );
  }

  static MasterOpname dtoToEntity(MasterOpnameDto dto) {
    return MasterOpname(
      id: dto.id,
      toko: dto.toko,
      tanggal: dto.tanggal,
      danaKas: dto.danaKas,
      salesCurrent: dto.salesCurrent,
      kurangSetor: dto.kurangSetor
          .map((e) => KurangSetor(tanggal: e.tanggal, nominal: e.nominal))
          .toList(),
      notaRrak: dto.notaRrak,
    );
  }

  static MasterOpnameDto dtoFromEntity(MasterOpname entity) {
    final dto = MasterOpnameDto(
      id: entity.id,
      toko: entity.toko,
      tanggal: entity.tanggal,
      danaKas: entity.danaKas,
      salesCurrent: entity.salesCurrent,
      notaRrak: entity.notaRrak,
    );

    final kurset = entity.kurangSetor?.map((e) {
      return KurangSetorDto(tanggal: e.tanggal, nominal: e.nominal);
    }).toList();

    if (kurset != null) {
      dto.kurangSetor.addAll(kurset);
    }

    return dto;
  }

  static LockKey keyFromModel(LockOpnameModel model) {
    return LockKey(
      secret: model.secretKey,
      vector: model.vectorKey,
    );
  }
}
