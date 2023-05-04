import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../entities/minus_opname.dart';

import '../repositories/verifikasi_opname_repository.dart';

@lazySingleton
class UploadMinusRrakUseCase extends UseCase<BaseResponse, MinusRrak> {
  final VerifikasiOpnameRepository _repository;
  UploadMinusRrakUseCase(@Named("verifikasiOpnameRepository") this._repository);

  @override
  Future<Either<Failure, BaseResponse>> call(MinusRrak params) async {
    return await _repository.uploadRrak(params);
  }
}
