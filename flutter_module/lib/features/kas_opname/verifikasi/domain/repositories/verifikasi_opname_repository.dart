
import 'package:fpdart/fpdart.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../entities/minus_opname.dart';

import '../../../../../core/failure/failure.dart';
import '../entities/plus_opname.dart';

abstract class VerifikasiOpnameRepository {
  Future<Either<Failure, BaseResponse>> uploadFraud(MinusFraud data);

  Future<Either<Failure, BaseResponse>> uploadRrak(MinusRrak data);

  Future<Either<Failure, BaseResponse>> uploadVarian(MinusVarian data);

  Future<Either<Failure, BaseResponse>> uploadOther(MinusOther data);

  Future<Either<Failure, BaseResponse>> uploadData(PlusOpname data);
}
