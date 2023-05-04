import 'dart:io';
import 'package:fpdart/fpdart.dart';

import '../../../../common/domain/entities/base_response.dart';
import '../../../../../core/failure/failure.dart';

abstract class ValidasiOpnameRepository {
  Future<Either<Failure, BaseResponse>> validasi(String kdtk, File data);
}
