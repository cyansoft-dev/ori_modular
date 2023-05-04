import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../entities/data_collection.dart';
import '../repositories/kodel_repository.dart';

@lazySingleton
class TruncateTransactionUseCase
    extends UseCase<ListDataCollection, NoParams> {
  final KodelRepository _repository;

  TruncateTransactionUseCase(@Named("kodelRepository") this._repository);

  @override
  Future<Either<Failure, ListDataCollection>> call(NoParams params) async {
    return await _repository.truncateTransaction();
  }
}
