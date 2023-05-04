import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../entities/menu.dart';
import '../repositories/menu_repository.dart';

@lazySingleton
class GetMenuUseCase extends UseCase<Menu, NoParams> {
  final MenuRepository _repository;
  GetMenuUseCase(@Named("menuRepository") this._repository);

  @override
  Future<Either<Failure, Menu>> call(NoParams params) async {
    return await _repository.getMenu();
  }
}
