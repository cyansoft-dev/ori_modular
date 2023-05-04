import 'package:injectable/injectable.dart';
import '../repositories/menu_opname_repository.dart';

@lazySingleton
class CancelRequestUseCase {
  final MenuOpnameRepository _repository;
  CancelRequestUseCase(@Named("menuOpnameRepository") this._repository);

  Future<void> call() async {
    return _repository.cancelRequest();
  }
}
