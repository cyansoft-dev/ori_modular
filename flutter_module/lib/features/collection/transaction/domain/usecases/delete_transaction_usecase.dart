import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../entities/data_collection.dart';
import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../repositories/kodel_repository.dart';

@lazySingleton
class DeleteTransactionUseCase extends UseCase<ListDataCollection, int> {
  final KodelRepository _repository;

  DeleteTransactionUseCase(@Named("kodelRepository") this._repository);

  @override
  Future<Either<Failure, ListDataCollection>> call(int params) async {
    return await _repository.deleteTransaction(params);
  }
}
