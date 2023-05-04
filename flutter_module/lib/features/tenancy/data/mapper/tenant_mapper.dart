import 'dart:convert';

import '../../../../core/utils/helpers.dart';
import '../model/data_tenant_dto.dart';
import '../model/master_tenant_model.dart';
import '../../domain/entities/master_tenant.dart';

import '../../domain/entities/data_tenant.dart';
import '../model/data_tenant_model.dart';

class TenantMapper {
  static List<MasterTenant> mastersFromModel(ListMasterTenantModel model) {
    return model.master?.map(masterModelFromDto).toList() ?? <MasterTenant>[];
  }

  static MasterTenant masterModelFromDto(MasterTenantModel e) {
    return MasterTenant(
      kdcab: e.kdcab,
      kdtk: e.kdtk,
      idTenant: e.idTenant,
      penyewa: e.penyewa,
      jenisProduk: e.jenisProduk,
      noPsm: e.noPsm,
      bulan: e.bulan,
      sewaGerobak: e.sewaGerobak,
      sewaByPsm: e.sewaByPsm,
      sewaBayar: e.sewaBayar,
      tanggalBayar: e.tanggalBayar,
      notaPembayaran: e.notaPembayaran,
    );
  }

  static DataTenantDto dataDtoFromEntity(DataTenant entity) {
    return DataTenantDto(
      id: entity.id == null ? 0 : entity.id!,
      kdtk: entity.kdtk,
      noPsm: entity.noPsm,
      jenisProduk: entity.jenisProduk,
      status: entity.status,
      isActive: entity.isActive,
      tenantPath: entity.tenantImage?.path,
      tenantImage: Helpers.getImageBytesSync(entity.tenantImage?.path),
      storePath: entity.storeImage?.path,
      storeImage: Helpers.getImageBytesSync(entity.storeImage?.path),
      latitude: entity.latitude,
      longitude: entity.longitude,
      addTime: DateTime.now(),
    );
  }

  static DataTenant dataDtoToEntity(DataTenantDto dto) {
    return DataTenant(
        id: dto.id,
        kdtk: dto.kdtk,
        noPsm: dto.noPsm,
        jenisProduk: dto.jenisProduk,
        status: dto.status,
        isActive: dto.isActive,
        tenantImage: Helpers.getImageFileSync(dto.tenantPath, dto.tenantImage),
        storeImage: Helpers.getImageFileSync(dto.storePath, dto.storeImage),
        latitude: dto.latitude,
        longitude: dto.longitude,
        addTime: dto.addTime);
  }

  static DataTenantModel dataModelFromEntity(DataTenant data) {
    final tenantImg = data.tenantImage?.readAsBytesSync();
    final storeImg = data.storeImage?.readAsBytesSync();

    return DataTenantModel(
      kdtk: data.kdtk,
      noPsm: data.noPsm,
      jenisProduk: data.jenisProduk,
      status: data.status,
      isActive: data.isActive,
      tenantImage: tenantImg != null ? base64.encode(tenantImg) : null,
      storeImage: storeImg != null ? base64.encode(storeImg) : null,
      latitude: data.latitude,
      longitude: data.longitude,
      addTime: data.addTime,
    );
  }

  static DataTenantModel dataModelFromDto(DataTenantDto data) {
    final tenantImg = data.tenantImage;
    final storeImg = data.storeImage;

    return DataTenantModel(
      kdtk: data.kdtk,
      noPsm: data.noPsm,
      jenisProduk: data.jenisProduk,
      status: data.status,
      isActive: data.isActive,
      tenantImage: tenantImg != null ? base64.encode(tenantImg) : null,
      storeImage: storeImg != null ? base64.encode(storeImg) : null,
      latitude: data.latitude,
      longitude: data.longitude,
      addTime: data.addTime,
    );
  }

  static List<DataTenant> listDataDtoToEntities(List<DataTenantDto> dtos) {
    return dtos.map(dataDtoToEntity).toList();
  }

  static List<DataTenantDto> listDataDtoFromEntities(
      List<DataTenant> entities) {
    return entities.map(dataDtoFromEntity).toList();
  }

  static ListDataTenantModel listDataModelFromEntities(List<DataTenant> data) {
    return ListDataTenantModel(
      dataTenants: data.map(dataModelFromEntity).toList(),
    );
  }

  static ListDataTenantModel listDataModelFromDtos(List<DataTenantDto> data) {
    return ListDataTenantModel(
      dataTenants: data.map(dataModelFromDto).toList(),
    );
  }
}
