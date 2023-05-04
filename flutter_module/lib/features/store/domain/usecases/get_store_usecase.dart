import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../entities/store.dart';
import '../repositories/store_repository.dart';

@lazySingleton
class GetStoreUseCase extends UseCase<ListStore, NoParams> {
  final StoreRepository repository;
  GetStoreUseCase(@Named("storeRepository") this.repository);

  @override
  Future<Either<Failure, ListStore>> call(NoParams params) async {
    return await repository.getStore();
  }
}
