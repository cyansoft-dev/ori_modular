import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import '/features/common/domain/repositories/common_repository.dart';

@lazySingleton
class StreamLocationUseCase {
  final CommonRepository _repository;
  StreamLocationUseCase(@Named('commonRepository') this._repository);

  Stream<Position> call() {
    return _repository.streamLocation();
  }
}
