import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetLocalMessageUseCase extends StreamUseCase<Position, NoParams> {
  final HomeRepository _repository;
  GetLocalMessageUseCase(@Named("homeRepository") this._repository);

  @override
  Stream<Position> call(NoParams params) {
    return _repository.getStreamLocation();
  }
}
