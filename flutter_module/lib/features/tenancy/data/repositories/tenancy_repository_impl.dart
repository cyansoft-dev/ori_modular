import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/utils/connection_checker.dart';
import '../../../common/data/models/base_response_model.dart';
import '../../../common/domain/entities/base_response.dart';
import '../../domain/entities/data_tenant.dart';
import '../../domain/entities/master_tenant.dart';
import '../../domain/repositories/tenancy_repository.dart';
import '../datasources/local/tenancy_local_datasource.dart';
import '../datasources/remote/tenancy_remote_datasource.dart';
import '../mapper/tenant_mapper.dart';
import '../model/data_tenant_dto.dart';
import '../model/data_tenant_model.dart';
import '../model/master_tenant_model.dart';

@Named("tenancyRepository")
@LazySingleton(as: TenancyRepository)
class TenancyRepositoryImpl implements TenancyRepository {
  final TenancyRemoteDataSource _remoteDataSource;
  final TenancyLocalDataSource _localDataSource;

  final ConnectionChecker _checker;
  TenancyRepositoryImpl(
    @Named("tenancyRemoteDataSource") this._remoteDataSource,
    @Named("tenancyLocalDataSource") this._localDataSource,
    this._checker,
  );

  @override
  Future<Either<Failure, List<MasterTenant>>> getMasterFromNetwork(
      String kdtk) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final result = await _remoteDataSource.getMasterTenant(kdtk);
      if (result.master != null || result.master!.isNotEmpty) {
        final data = await compute<ListMasterTenantModel, List<MasterTenant>>(
            TenantMapper.mastersFromModel, result);
        return Right(data);
      }
      return const Left(Failure.empty());
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<MasterTenant>>> getMasterFromLocal() async {
    try {
      final result = await _localDataSource.getMasterTenant();
      if (result.master != null || result.master!.isNotEmpty) {
        final data = await compute<ListMasterTenantModel, List<MasterTenant>>(
            TenantMapper.mastersFromModel, result);
        return Right(data);
      }
      return const Left(Failure.empty());
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<DataTenant>>> deleteData(int id) async {
    try {
      final result = await _localDataSource.deleteData(id);
      if (result == null) {
        return const Left(Failure.empty());
      }

      final data = await compute<List<DataTenantDto>, List<DataTenant>>(
          TenantMapper.listDataDtoToEntities, result);
      return Right(data);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<DataTenant>>> fetchData(String kdtk) async {
    try {
      final result = await _localDataSource.fetchData(kdtk);
      if (result == null) {
        return const Left(Failure.empty());
      }

      final data = await compute<List<DataTenantDto>, List<DataTenant>>(
          TenantMapper.listDataDtoToEntities, result);
      return Right(data);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<DataTenant>>> putData(DataTenant tenant) async {
    try {
      final dt = TenantMapper.dataDtoFromEntity(tenant);
      final result = await _localDataSource.putData(dt);
      final data = await compute<List<DataTenantDto>, List<DataTenant>>(
          TenantMapper.listDataDtoToEntities, result!);
      return Right(data);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<DataTenant>>> truncateData() async {
    try {
      final result = await _localDataSource.truncateData();
      if (result == null) {
        return const Left(Failure.empty());
      }

      final data = await compute<List<DataTenantDto>, List<DataTenant>>(
          TenantMapper.listDataDtoToEntities, result);
      return Right(data);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, BaseResponse>> uploadData(
      List<DataTenant> tenants) async {
    try {
      final models = await compute<List<DataTenant>, ListDataTenantModel>(
          TenantMapper.listDataModelFromEntities, tenants);
      final str = await _remoteDataSource.uploadDataTenant(models);
      final data = await compute<BaseResponseModel, BaseResponse>(
          baseResponseFromModel, str);
      return Right(data);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<DataTenant>>> putManyData(
      List<DataTenant> entities) async {
    try {
      final dt = TenantMapper.listDataDtoFromEntities(entities);
      final result = await _localDataSource.putManyData(dt);
      final data = await compute<List<DataTenantDto>, List<DataTenant>>(
          TenantMapper.listDataDtoToEntities, result!);
      return Right(data);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
