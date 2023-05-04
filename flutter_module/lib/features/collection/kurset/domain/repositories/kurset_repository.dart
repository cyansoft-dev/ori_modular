import 'package:fpdart/fpdart.dart';

import '../../../../../core/failure/failure.dart';
import '../entities/kurset.dart';

abstract class KursetRepository {
  Future<Either<Failure, List<Kurset>>> getKurset(String kodeToko);
}
