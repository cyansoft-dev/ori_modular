import 'package:fpdart/fpdart.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../entities/lock_key.dart';
import '../entities/master_opname.dart';

abstract class MenuOpnameRepository {
  Future<Either<Failure, BaseResponse>> checkCollection(String kodeToko);

  Future<Either<Failure, BaseResponse>> lockDataSales(
      String kodeToko, String station);

  Future<Either<Failure, LockKey>> scanBarcode(String kodeToko);

  Future<Either<Failure, MasterOpname>> addDataMaster(String encryptData);

  Future<Either<Failure, MasterOpname>> updateCurrentMaster(MasterOpname data);

  Future<Either<Failure, MasterOpname>> getCurrentMaster(String kdtk);

  Future<void> cancelRequest();
}
