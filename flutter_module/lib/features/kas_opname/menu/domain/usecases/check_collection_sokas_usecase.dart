import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../repositories/menu_opname_repository.dart';

@lazySingleton
class CheckCollectionSokasUseCase extends UseCase<BaseResponse, String> {
  final MenuOpnameRepository _repository;

  CheckCollectionSokasUseCase(@Named("menuOpnameRepository") this._repository);

  @override
  Future<Either<Failure, BaseResponse>> call(String params) async {
    return await _repository.checkCollection(params);
  }
}
