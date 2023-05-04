import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/utils/connection_checker.dart';
import '../../../splash/data/model/user_dto.dart';
import '../../../splash/domain/entities/app_info.dart';
import '../../../splash/domain/entities/user.dart';
import '../../domain/repositories/login_repository.dart';
import '../datasources/local/login_local_datasource.dart';
import '../datasources/remote/login_remote_datasource.dart';
import '../model/user_model.dart';

@Named("loginRepository")
@LazySingleton(
  as: LoginRepository,
)
class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource _remoteDataSource;
  final LoginLocalDataSource _localDataSource;
  final ConnectionChecker _checker;

  LoginRepositoryImpl(
    @Named("loginRemoteDataSource") this._remoteDataSource,
    @Named("loginLocalDataSource") this._localDataSource,
    this._checker,
  );

  @override
  Future<Either<Failure, User>> login(
    String userName,
    String password,
    AppInfo appInfo,
  ) async {
    if (await _checker.status == ConnectionStatus.connected) {
      try {
        final response = await _remoteDataSource.postLogin(
          userName,
          password,
          appInfo,
        );

        if (response.userData != null) {
          final userDto = UserDto.fromModel(response.userData!);
          await _localDataSource.putUser(userDto);

          final result = await compute<UserDataModel, User>(
              userFromModel, response.userData!);

          return Right(result);
        } else {
          return const Left(Failure.cache());
        }
      } catch (e) {
        return Left(Failure.fromException(e));
      }
    } else {
      return const Left(Failure.noNetwork());
    }
  }
}
