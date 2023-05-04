import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/utils/connection_checker.dart';
import '../../domain/entities/kurset.dart';
import '../../domain/repositories/kurset_repository.dart';
import '../datasources/remote/kurset_remote_datasource.dart';
import '../mappers/kurset_mapper.dart';
import '../models/kurset_model.dart';

@Named("kursetRepository")
@LazySingleton(as: KursetRepository)
class KursetRepositoryImpl implements KursetRepository {
  final KursetRemoteDataSource _remoteDataSource;
  final ConnectionChecker _checker;

  KursetRepositoryImpl(
    @Named("kursetRemoteDataSource") this._remoteDataSource,
    this._checker,
  );

  @override
  Future<Either<Failure, List<Kurset>>> getKurset(String kodeToko) async {
    if (await _checker.status == ConnectionStatus.connected) {
      try {
        final response = await _remoteDataSource.getKurset(kodeToko);
        if (response.data == null) {
          return const Left(Failure.empty());
        }

        final result = await compute<List<DataKursetModel>, List<Kurset>>(
            KursetMappers.modelsToEntities, response.data!);

        return Right(result);
      } catch (e) {
        return Left(Failure.fromException(e));
      }
    } else {
      return const Left(Failure.noNetwork());
    }
  }
}
