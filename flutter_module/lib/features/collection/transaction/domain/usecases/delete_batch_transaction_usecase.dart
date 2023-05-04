import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../entities/data_collection.dart';
import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../repositories/kodel_repository.dart';

@lazySingleton
class DeleteBatchTransactionUseCase extends UseCase<ListDataCollection, List<int>> {
  final KodelRepository _repository;

  DeleteBatchTransactionUseCase(@Named("kodelRepository") this._repository);

  @override
  Future<Either<Failure, ListDataCollection>> call(List<int> params) async {
    return await _repository.deleteBatchTransaction(params);
  }
}
