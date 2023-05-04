import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/utils/connection_checker.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../../domain/entities/lock_key.dart';
import '../../domain/entities/master_opname.dart';
import '../../domain/repositories/menu_opname_repository.dart';
import '../datasources/local/menu_opname_local_datasource.dart';
import '../datasources/remote/menu_opname_remote_datasource.dart';
import '../mapper/menu_opname_mapper.dart';

@Named("menuOpnameRepository")
@LazySingleton(as: MenuOpnameRepository)
class MenuOpnameRepositoryImpl implements MenuOpnameRepository {
  final MenuOpnameLocalDataSource _localDataSource;
  final MenuOpnameRemoteDataSource _remoteDataSource;
  final ConnectionChecker _checker;

  MenuOpnameRepositoryImpl(
    @Named("menuOpnameLocalDataSource") this._localDataSource,
    @Named("menuOpnameRemoteDataSource") this._remoteDataSource,
    this._checker,
  );

  late LockKey keys;

  @override
  Future<Either<Failure, MasterOpname>> getCurrentMaster(String kdtk) async {
    try {
      final dto = await _localDataSource.fetchCurrentMaster(kdtk);

      if (dto != null) {
        final master = KasOpnameMapper.dtoToEntity(dto);
        return Right(master);
      } else {
        return const Left(Failure.empty());
      }
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, BaseResponse>> lockDataSales(
      String kodeToko, String station) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final response = await _remoteDataSource.lockOpname(kodeToko, station);
      final result = BaseResponse.fromModel(response);
      if (result.code == 200) {
        return Right(result);
      } else {
        return Left(Failure.another(message: result.message));
      }
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, MasterOpname>> addDataMaster(
      String encryptData) async {
    try {
      final response = await _localDataSource.addMasterOpname(
          encryptData, keys.vector!, keys.secret!);
      if (response != null) {
        final master = KasOpnameMapper.dtoToEntity(response);
        return Right(master);
      } else {
        return const Left(Failure.cache());
      }

    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, LockKey>> scanBarcode(String kodeToko) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final response = await _remoteDataSource.scanBarcode(kodeToko);
      final result = KasOpnameMapper.keyFromModel(response);
      if (result.secret != null && result.vector != null) {
        keys = result;
        return Right(result);
      } else {
        return const Left(Failure.empty(message: "Invalid data"));
      }
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<void> cancelRequest() async {
    return _remoteDataSource.cancelRequest();
  }

  @override
  Future<Either<Failure, BaseResponse>> checkCollection(String kodeToko) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final response = await _remoteDataSource.checkCollection(kodeToko);
      final result = BaseResponse.fromModel(response);
      if (result.code == 200) {
        return Right(result);
      } else {
        return Left(
            Failure.authorization(code: result.code, message: result.message));
      }
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, MasterOpname>> updateCurrentMaster(
      MasterOpname data) async {
    try {
      final dto = KasOpnameMapper.dtoFromEntity(data);
      final response = await _localDataSource.updateMasterOpname(dto);
      late MasterOpname master;
      if (response != null) {
        master = KasOpnameMapper.dtoToEntity(response);
      } else {
        master = const MasterOpname();
      }
      return Right(master);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
