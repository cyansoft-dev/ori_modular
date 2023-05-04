import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/utils/connection_checker.dart';
import '../../domain/entities/data_audit.dart';
import '../../domain/entities/kas_master.dart';
import '../../domain/entities/summary_audit.dart';
import '../../domain/repositories/proses_opname_repository.dart';
import '../datasources/local/proses_opname_local_datasource.dart';
import '../datasources/remote/proses_opname_remote_datasource.dart';
import '../mappers/proses_opname_mapper.dart';
import '../model/data_audit_model.dart';
import '../model/kas_master_model.dart';
import '../model/summary_audit_model.dart';

@Named("prosesOpnameRepository")
@LazySingleton(as: ProsesOpnameRepository)
class ProsesOpnameRepositoryImpl implements ProsesOpnameRepository {
  final ProsesOpnameRemoteDataSource _remoteDataSource;
  final ProsesOpnameLocalDataSource _localDataSource;
  final ConnectionChecker _checker;

  ProsesOpnameRepositoryImpl(
    @Named("prosesOpnameRemoteDataSource") this._remoteDataSource,
    @Named("prosesOpnameLocalDataSource") this._localDataSource,
    this._checker,
  );

  @override
  Future<Either<Failure, KasMaster>> getKasMaster(String kodeToko) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final data = await _remoteDataSource.getKasMaster(kodeToko);
      final result =
          await compute<KasMasterModel, KasMaster>(kasMasterFromModel, data);

      return Right(result);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, SummaryAudit>> uploadData(DataAudit data) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final model = await compute<DataAudit, DataAuditModel>(
          dataAuditModelFromEntity, data);
      final response = await _remoteDataSource.uploadKasOpname(model);
      if (response.data == null) {
        return const Left(Failure.empty());
      }

      final result = await compute<DataSummaryAuditModel, SummaryAudit>(
          ProsesOpnameMapper.summaryEntityFromModel, response.data!);

      return Right(result);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, SummaryAudit>> putSummary(SummaryAudit data) async {
    try {
      final dto = ProsesOpnameMapper.summaryEntityToDto(data);
      final result = await _localDataSource.addSummaryAudit(dto);
      if (result == null) {
        return const Left(Failure.parse());
      }
      final res = ProsesOpnameMapper.summaryEntityFromDto(result);
      return Right(res);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, SummaryAudit>> getSummaryByStore(String store) async {
    try {
      final result = await _localDataSource.getSummaryByStore(store);
      if (result == null) {
        return const Left(Failure.parse());
      }

      final res = ProsesOpnameMapper.summaryEntityFromDto(result);
      return Right(res);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, bool>> truncateSummary() async {
    try {
      final result = await _localDataSource.truncateSummary();
      return Right(result);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, SummaryAudit>> updateSummary(SummaryAudit data) async {
    try {
      final dto = ProsesOpnameMapper.summaryEntityToDto(data);
      final result = await _localDataSource.updateSummaryAudit(dto);
      if (result == null) {
        return const Left(Failure.parse());
      }

      final res = ProsesOpnameMapper.summaryEntityFromDto(result);
      return Right(res);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
