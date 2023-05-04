import 'package:injectable/injectable.dart';

import '../../../../../core/database/database.dart';
import '../../../../splash/data/model/user_dto.dart';

abstract class LoginLocalDataSource {
  Future<List<UserDto>?> putUser(UserDto data);
}

@Named("loginLocalDataSource")
@LazySingleton(as: LoginLocalDataSource)
class LoginLocalDataSourceImpl implements LoginLocalDataSource {
  LoginLocalDataSourceImpl(@Named("database") this._database);
  final Database _database;

  @override
  Future<List<UserDto>?> putUser(UserDto data) async {
    return await _database.putData<UserDto>(data);
  }
}
