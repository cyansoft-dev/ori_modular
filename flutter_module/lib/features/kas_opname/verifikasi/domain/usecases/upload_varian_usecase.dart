import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../entities/minus_opname.dart';
import '../repositories/verifikasi_opname_repository.dart';

@lazySingleton
class UploadMinusVarianUseCase extends UseCase<BaseResponse, MinusVarian> {
  final VerifikasiOpnameRepository _repository;
  UploadMinusVarianUseCase(@Named("verifikasiOpnameRepository") this._repository);

  @override
  Future<Either<Failure, BaseResponse>> call(MinusVarian params) async {
    return await _repository.uploadVarian(params);
  }
}
