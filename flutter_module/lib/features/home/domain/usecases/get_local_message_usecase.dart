import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../entities/message.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetLocalMessageUseCase extends StreamUseCase<List<Message>, NoParams> {
  final HomeRepository _repository;
  GetLocalMessageUseCase(@Named("homeRepository") this._repository);

  @override
  Stream<List<Message>> call(NoParams params) {
    return _repository.fetchLocalMessage();
  }
}
