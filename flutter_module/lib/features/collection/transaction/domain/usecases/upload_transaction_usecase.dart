import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../entities/data_collection.dart';
import '../repositories/kodel_repository.dart';

@lazySingleton
class UploadTransactionUseCase
    extends UseCase<BaseResponse, ListDataCollection> {
  final KodelRepository _repository;
  UploadTransactionUseCase(@Named("kodelRepository") this._repository);

  @override
  Future<Either<Failure, BaseResponse>> call(ListDataCollection params) async {
    return await _repository.uploadTransaction(params);
  }
}
