import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../common/domain/entities/base_response.dart';

import '../repositories/validasi_opname_repository.dart';

@lazySingleton
class ValidasiOpnameUseCase extends UseCase<BaseResponse, ValidateParams> {
  final ValidasiOpnameRepository _repository;
  ValidasiOpnameUseCase(@Named("validasiOpnameRepository") this._repository);

  @override
  Future<Either<Failure, BaseResponse>> call(ValidateParams params) async {
    return await _repository.validasi(params.kdtk, params.image);
  }
}

@immutable
class ValidateParams {
  final String kdtk;
  final File image;

  const ValidateParams({required this.kdtk, required this.image});
}
