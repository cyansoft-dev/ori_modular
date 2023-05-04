import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/utils/connection_checker.dart';
import '../../../../common/data/models/base_response_model.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../../domain/repositories/validasi_opname_repository.dart';
import '../datasources/remote/validasi_opname_remote_datasource.dart';

@Named("validasiOpnameRepository")
@LazySingleton(as: ValidasiOpnameRepository)
class ValidasiOpnameRepositoryImpl implements ValidasiOpnameRepository {
  final ValidasiOpnameRemoteDataSource _dataSource;
  final ConnectionChecker _checker;
  ValidasiOpnameRepositoryImpl(
      @Named("validasiOpnameRemoteDataSource") this._dataSource, this._checker);

  @override
  Future<Either<Failure, BaseResponse>> validasi(
      String kdtk, File image) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final response = await _dataSource.validasi(kdtk, image);
      final result = await compute<BaseResponseModel, BaseResponse>(
          baseResponseFromModel, response);
      return Right(result);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
