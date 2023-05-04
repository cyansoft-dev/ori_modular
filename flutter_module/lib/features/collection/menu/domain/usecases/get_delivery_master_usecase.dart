import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../entities/delivery_master.dart';
import '../repositories/collection_repository.dart';

@lazySingleton
class GetDeliveryMasterUseCase extends UseCase<DeliveryMaster, String> {
  final CollectionRepository _repository;
  GetDeliveryMasterUseCase(@Named("collectionRepository") this._repository);

  @override
  Future<Either<Failure, DeliveryMaster>> call(String params) async {
    return await _repository.getCollectMaster(params);
  }
}
