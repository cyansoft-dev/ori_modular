import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/utils/connection_checker.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../../domain/entities/data_collection.dart';
import '../../domain/repositories/kodel_repository.dart';
import '../datasources/local/kodel_local_datasource.dart';
import '../datasources/remote/kodel_remote_datasource.dart';
import '../mapper/transaction_mapper.dart';
import '../model/transaction_request_model.dart';

@Named("kodelRepository")
@LazySingleton(as: KodelRepository)
class KodelRepositoryImpl implements KodelRepository {
  final KodelLocalDataSource _localDataSource;
  final KodelRemoteDataSource _remoteDataSource;
  final ConnectionChecker _checker;

  KodelRepositoryImpl(
    @Named("kodelLocalDataSource") this._localDataSource,
    @Named("kodelRemoteDataSource") this._remoteDataSource,
    this._checker,
  );

  @override
  Future<Either<Failure, ListDataCollection>> addTransaction(
      DataCollection data) async {
    try {
      final model = TransactionMapper.entityToDto(data);
      final result = await _localDataSource.addTransaction(model);
      if (result == null) {
        return const Left(Failure.empty());
      }

      final entity = listTransactionFromDto(result);
      return Right(entity);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, ListDataCollection>> fetchTransaction(
      String kdtk) async {
    try {
      final result = await _localDataSource.fetchTransaction(kdtk);
      if (result == null) {
        return const Left(Failure.empty());
      }

      final entity = listTransactionFromDto(result);
      return Right(entity);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, ListDataCollection>> deleteTransaction(int id) async {
    try {
      final result = await _localDataSource.deleteTransaction(id);
      if (result == null) {
        return const Left(Failure.empty());
      }

      final entity = listTransactionFromDto(result);
      return Right(entity);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, BaseResponse>> uploadTransaction(
      ListDataCollection data) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final model = await compute<ListDataCollection, TransactionRequestModels>(
          transactionRequestModelFromEntity, data);

      final result = await _remoteDataSource.upload(model);
      final response = BaseResponse.fromModel(result);

      return Right(response);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, ListDataCollection>> truncateTransaction() async {
    try {
      final result = await _localDataSource.truncateTransaction();
      if (result == null) {
        return const Left(Failure.empty());
      }

      final entity = listTransactionFromDto(result);
      return Right(entity);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, ListDataCollection>> deleteBatchTransaction(
      List<int> ids) async {
    try {
      final result = await _localDataSource.deleteBatchTransaction(ids);
      if (result == null) {
        return const Left(Failure.empty());
      }

      final entity = listTransactionFromDto(result);
      return Right(entity);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
