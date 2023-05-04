import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../common/domain/entities/base_response.dart';

import '../entities/plus_opname.dart';
import '../repositories/verifikasi_opname_repository.dart';

@lazySingleton
class UploadPlusOpnameUseCase extends UseCase<BaseResponse, PlusOpname> {
  final VerifikasiOpnameRepository _repository;
  UploadPlusOpnameUseCase(@Named("verifikasiOpnameRepository") this._repository);

  @override
  Future<Either<Failure, BaseResponse>> call(PlusOpname params) async {
    return await _repository.uploadData(params);
  }
}
