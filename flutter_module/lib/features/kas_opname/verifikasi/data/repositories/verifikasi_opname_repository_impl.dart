
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/utils/connection_checker.dart';
import '../../../../common/data/models/base_response_model.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../../domain/entities/minus_opname.dart';
import '../../domain/entities/plus_opname.dart';
import '../../domain/repositories/verifikasi_opname_repository.dart';
import '../datasources/remote/verifikasi_opname_remote_datasource.dart';
import '../mapper/minus_opname_mapper.dart';
import '../mapper/plus_opname_mapper.dart';

@Named("verifikasiOpnameRepository")
@LazySingleton(as: VerifikasiOpnameRepository)
class VerifikasiOpnameRepositoryImpl implements VerifikasiOpnameRepository {
  final VerifikasiOpnameRemoteDataSource _dataSource;
  final ConnectionChecker _checker;
  VerifikasiOpnameRepositoryImpl(
      @Named("verifikasiOpnameRemoteDataSource") this._dataSource, this._checker);

  @override
  Future<Either<Failure, BaseResponse>> uploadFraud(MinusFraud data) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final model = MinusOpnameMapper.minusFraudToModel(data);
      final response = await _dataSource.uploadFraud(model);
      final result = await compute<BaseResponseModel, BaseResponse>(
          baseResponseFromModel, response);
      return Right(result);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, BaseResponse>> uploadRrak(MinusRrak data) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final model = MinusOpnameMapper.minusRrakToModel(data);
      final response = await _dataSource.uploadRrak(model);
      final result = await compute<BaseResponseModel, BaseResponse>(
          baseResponseFromModel, response);
      return Right(result);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, BaseResponse>> uploadVarian(MinusVarian data) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final model = MinusOpnameMapper.minusVarianToModel(data);
      final response = await _dataSource.uploadVarian(model);
      final result = await compute<BaseResponseModel, BaseResponse>(
          baseResponseFromModel, response);
      return Right(result);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, BaseResponse>> uploadOther(MinusOther data) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final model = MinusOpnameMapper.minusOtherToModel(data);
      final response = await _dataSource.uploadOther(model);
      final result = await compute<BaseResponseModel, BaseResponse>(
          baseResponseFromModel, response);
      return Right(result);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, BaseResponse>> uploadData(PlusOpname data) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final model = PlusOpnameMapper.modelFromEntity(data);
      final response = await _dataSource.uploadPlus(model);
      final result = await compute<BaseResponseModel, BaseResponse>(
          baseResponseFromModel, response);
      return Right(result);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
