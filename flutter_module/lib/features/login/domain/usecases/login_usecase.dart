import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../../../splash/domain/entities/app_info.dart';
import '../../../splash/domain/entities/user.dart';
import '../repositories/login_repository.dart';

@lazySingleton
class LoginUseCase implements UseCase<User, LoginParams> {
  final LoginRepository _repository;
  LoginUseCase(@Named("loginRepository") this._repository);

  @override
  Future<Either<Failure, User>> call(LoginParams params) async {
    return await _repository.login(
      params.userName,
      params.password,
      params.appInfo,
    );
  }
}

class LoginParams {
  String userName;
  String password;
  AppInfo appInfo;

  LoginParams({
    required this.userName,
    required this.password,
    required this.appInfo,
  });

  LoginParams copyWith({
    String? userName,
    String? password,
    AppInfo? appInfo,
  }) {
    return LoginParams(
      userName: userName ?? this.userName,
      password: password ?? this.password,
      appInfo: appInfo ?? this.appInfo,
    );
  }

  @override
  String toString() =>
      'LoginParams(userName: $userName, password: $password, appInfo: $appInfo)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginParams &&
        other.userName == userName &&
        other.password == password &&
        other.appInfo == appInfo;
  }

  @override
  int get hashCode => userName.hashCode ^ password.hashCode ^ appInfo.hashCode;
}
