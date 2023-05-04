import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../entities/data_collection.dart';
import '../repositories/kodel_repository.dart';

@lazySingleton
class FetchTransactionUseCase extends UseCase<ListDataCollection, String> {
  final KodelRepository _repository;

  FetchTransactionUseCase(@Named("kodelRepository") this._repository);

  @override
  Future<Either<Failure, ListDataCollection>> call(String params) async {
    return await _repository.fetchTransaction(params);
  }
}
