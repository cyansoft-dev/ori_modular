import 'package:fpdart/fpdart.dart';

import '/core/failure/failure.dart';
import '../../../splash/domain/entities/app_info.dart';
import '../../../splash/domain/entities/user.dart';

abstract class LoginRepository {
  Future<Either<Failure, User>> login(
    String userName,
    String password,
    AppInfo info,
  );
}
