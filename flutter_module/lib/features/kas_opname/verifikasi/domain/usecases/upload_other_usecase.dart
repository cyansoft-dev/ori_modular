import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../entities/minus_opname.dart';

import '../repositories/verifikasi_opname_repository.dart';

@lazySingleton
class UploadMinusOtherUseCase extends UseCase<BaseResponse, MinusOther> {
  final VerifikasiOpnameRepository _repository;
  UploadMinusOtherUseCase(@Named("verifikasiOpnameRepository") this._repository);

  @override
  Future<Either<Failure, BaseResponse>> call(MinusOther params) async {
    return await _repository.uploadOther(params);
  }
}
