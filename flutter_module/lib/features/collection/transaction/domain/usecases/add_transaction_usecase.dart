import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../entities/data_collection.dart';
import '../repositories/kodel_repository.dart';

@lazySingleton
class AddTransactionUseCase
    extends UseCase<ListDataCollection, DataCollection> {
  final KodelRepository _repository;

  AddTransactionUseCase(@Named("kodelRepository") this._repository);

  @override
  Future<Either<Failure, ListDataCollection>> call(
      DataCollection params) async {
    return await _repository.addTransaction(params);
  }
}
