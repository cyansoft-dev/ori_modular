import 'package:injectable/injectable.dart';

import '/core/usecase/usecase.dart';
import '../entities/message.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetBackgroundMessageUseCase
    extends StreamUseCase<List<Message>, NoParams> {
  final HomeRepository _repository;
  GetBackgroundMessageUseCase(@Named("homeRepository") this._repository);

  @override
  Stream<List<Message>> call(NoParams params) {
    return _repository.onBackgroundMessage();
  }
}
